# Implementation Guide (IG) Discovery

## IG Source

In this example, all source for the IG can be found in the `input` folder.  There are two folders of note:

`input/fsh`:  This folder contains any FHIR artifacts (CapabilityStatement, Profile StructureDefinitions, etc) included in the IG in FHIR Shorthand (FSH) format.  The FSH format allows these artifacts to be authored in a much more concise and consumable fashion than working directly with FHIR JSON resources.  For more information on FSH please refer to:

- [FHIR Shorthand (FSH)](http://hl7.org/fhir/uv/shorthand/2020May/)
- [FSH School](https://fshschool.org/)

`input/pagecontent`:  Any user/business authored content to be included in the IG is authored in Markdown files in this folder.

## SUSHI Pre-processing

SUSHI is a command-line interpreter/compiler for FSH that can be installed by following the instructions at [SUSHI Installation](https://fshschool.org/docs/sushi/installation/).  Once installed, it can be executed as follows:

```sh
sushi .
```

When invoked, SUSHI converts the FSH content in `input/fsh` into FHIR artifacts, including an `ImplementationGuide` resource, which can be found in the `fsh-generated` folder.  These artifacts are inputs into the FHIR IG Publication in the next step.

# FHIR IG Publication

## FHIR IG Publisher tool

The FHIR team provides an IG publishing tool that takes the implementation guide content and converts it into a set of published HTML files - for more information please refer to the [FHIR IG Publisher Documentation](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation).  Publishing an IG requires the following:

1. Ensure all pre-requisite software is installed - refer to the [IG Publisher Quick Start](https://confluence.hl7.org/pages/viewpage.action?pageId=35718627#IGPublisherDocumentation-QuickStart)
2. If the publisher has not yet been installed, execute `./_updatePublisher.sh` to download and install the publisher locally
3. Execute `./_genonce.bat` to generate the published IG.

The published IG content can be found in the `output` folder and can be viewed by opening `output/index.html` in a web browser.

### Additional Content Generation

Some of the Implementation Guide page content is also generated content - specifically the contents of `input/pagecontent/capabilityStatement.xml`.  These files can be re-generated as required with the following commands once SUSHI pre-processing is complete:

```bash
# Install dependencies - there is currently no package.json for these scripts
npm install remarkable
npm install markdown

# Generate content (these scripts have been copied and tweaked from the NHI IG Github repo)
./localscripts/makeCapabilityStatement.js
```

## FHIR IG Auto-Builder

In addition to the IG Publisher, the FHIR team also provide a [FHIR IG Auto-Builder](https://github.com/FHIR/auto-ig-builder) that allows IGs in public GitHub repositories to be auto-published to the FHIR Continuous Integration build service at [https://build.fhir.org](https://build.fhir.org).  The appropriate webhook configuration has been set up for this project's GitHub repository and the auto-published IG can be viewed at the following URL: https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/

A useful output of the build is the [Build log](https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/branches/master/build.log)

## Publishing CINC FHIR draft IG updates from git branches

Normally the master branch of this repo contains the CINC FHIR Implementation Guide which is the **production** API specification of HNZ's FHIR repository.

While a project is doing major revisions to the master IG this is best done on a branch off master.  The branch can be published as a separate draft / experimental IG at the Url
``https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/branches/feature/{{branch-name}}``

This means the project can review or acceptance test the IG without the mainline production Implementation Guide being affected in anyway.

### Setting up a webhook for automatic branch publishing
Say a draft IG is on the branch **rheumatic-fever**
Configure a webhook for automatic publication using the following command

```bash
curl -X POST  "https://us-central1-fhir-org-starter-project.cloudfunctions.net/ig-commit-trigger" \
  -H "Content-type: application/json" \
  --data '{"ref": "refs/heads/rheumatic-fever", "repository": {"full_name": "tewhatuora/cinc-fhir-ig"}}'
```

Note that branch names can only contain characters in the regex ```[A-Za-z0-9_-]```

## Simplifier.net IG Authoring/Publishing

Authoring and publishing IGs using the [Simplifier](https://simplifier.net/) infrastructure follows a completely different paradigm to the process described above.  In Simplifier, IGs are intended to be authored using the [Simplifier IG Editor](https://docs.simplifier.net/projects/Simplifier/simplifierIGeditor.html) and rendered/published from within Simplifier itself.

Unlike the FHIR IG Publisher, which outputs a fully rendered IG with merged in FHIR artifacts and Markdown content, the Simplifier IG Editor just provides some shorthand notation for rendering FHIR artifacts.  Apart from that, the entire IG, including the structure and layout, would need to be manually authored in the IG Editor.  The FHIR artifacts output by SUSHI can be imported into Simplifier but all of the Markdown content and FHIR IG Publisher output would need to be manually created/re-created.

## Notes on compiling the Implementation Guide for server IG validation

The definitions in the [FHIR Implementation Guide](https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/) must be compiled before to be deployed into FHIRWorks in the HapiValidator.

See the other README dedicated to this [here](fhir-works-on-aws-deployment/COMPILING_IMPLEMENTATION_GUIDES_FOR_VALIDATOR.md).

Notes on compiling:

1. After cloning the Git repo to create a local copy of FHIRworks  

## FHIR IG Quality Guidelines

### New controlled terminology

The following principles are useful when considering how to approach modelling of terminology in a new FHIR IG.

Controlled terminology in data representations can be tricky for the IG developer because where terms needed by
  don't exist in established code systems, there is inevitable delay due to official processes in introducing new terminology.

Due to these factors, the IG developer is often faced with decisions about whether to define and publish new terminology, and
  whether to go with a ValueSet that includes only new terminology or a hybrid of new and existing.

Principles to apply to IG terminology definition (most important first):

1. A FHIR IG MUST constrain representations to coded data, wherever possible, using **Profiles** and **Questionnaires**.  The codes must be well-defined and available in a discoverable and API-accessible codesystem.

1. A FHIR IG MUST **illustrate proper usage of coded data types** through examples, and where applicable definitional resource instances, with fully-formed Coding (code, system and display) references.

1. A FHIR IG SHOULD preferably define all **expected terminology it requires** through integral ValueSets (canonical Url being the IG itself) even where those ValueSets are also officially published on *NZHTS*.  This is to give developers 'one-stop shop' convenience so that IG is as self-contained as possible.

1. A FHIR IG SHOULD preferably publish free of 'code/system not found' type terminology errors.  
  (Note this principle is impossible to accomplish when ValueSets include
    - SNOMED terms that are new in the New Zealand Edition which as of October 2023 is not syndicated with tx.fhir.org -- the global terminology server -- that the IG publisher validates against.
    - NZMT terms which also are not syndicated into the global terminology server.

## Other Health Projects

It's interesting to note that most other FHIR projects in the New Zealand health sector appear to be using the FHIR IG Publisher to produce their implementation guides, with Simplifier being used as a simple repository of FHIR artifacts rather than as an IG authoring/publishing tool.  Using the NHI FHIR API as an example:

- [Source Repository](https://github.com/HL7NZ/nhi) - The source of the NHI IG, set up to build using SUSHI and the FHIR IG Publisher and publish to AWS Amplify
- [Published NHI FHIR IG](https://master.d3b08qop7whnnl.amplifyapp.com/artifacts.html) - The published NHI FHIR IG on AWS Amplify
- [NHI Simplifier Project](https://simplifier.net/NHI) - This project contains a couple of imported FHIR artifacts but no authored IG or published packages
- [FHIR NZ Base Simplifier Project](https://simplifier.net/fhir-nz-base) - Again, this project contains a bunch of imported resources but no authored IG or published packages

This pattern seems to be fairly common throughout the New Zealand FHIR Registry:

- [NZ FHIR Implementation Guide Index](https://simplifier.net/guide/newzealandfhirimplementationguideindex?version=current) - All of the IGs referenced in the Simplifier index are external IGs that have been published using the FHIR IG Publisher.
- [NZ FHIR Registry IGs](https://simplifier.net/organization/nz-fhir-registry/~guides) - This list of NZ FHIR Registry IGs that HAVE been authored in Simplifier shows that they are all experimental/draft in nature.
