# Implementation Guide (IG) Discovery

## IG Source

In this example, all source for the IG can be found in the `input` folder.  There are two folders of note:

`input/fsh`:  This folder contains any FHIR artifacts (CapabilityStatement, Profile StructureDefinitions, etc) included in the IG in FHIR Shorthand (FSH) format.  The FSH format allows these artifacts to be authored in a much more concise and consumable fashion than working directly with FHIR JSON resources.  For more information on FSH please refer to:

- [FHIR Shorthand (FSH)](http://hl7.org/fhir/uv/shorthand/2020May/)
- [FSH School](https://fshschool.org/)

`input/pagecontent`:  Any user/business authored content to be included in the IG is authored in Markdown files in this folder.

## SUSHI Pre-processing

SUSHI is a command-line interpreter/compiler for FSH that can be installed by following the instructions at [SUSHI Installation](https://fshschool.org/docs/sushi/installation/).  Once installed, it can be executed as follows:

```
sushi .
```

When invoked, SUSHI converts the FSH content in `input/fsh` into FHIR artifacts, including an `ImplementationGuide` resource, which can be found in the `fsh-generated` folder.  These artifacts are inputs into the FHIR IG Publication in the next step.

## FHIR IG Publication

The FHIR team provides an IG publishing tool that takes the implementation guide content and converts it into a set of published HTML files - for more information please refer to the [FHIR IG Publisher Documentation](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation).  Publishing an IG requires the following:

1.  Ensure all pre-requisite software is installed - refer to the [IG Publisher Quick Start](https://confluence.hl7.org/pages/viewpage.action?pageId=35718627#IGPublisherDocumentation-QuickStart)
2.  If the publisher has not yet been installed, execute `./_updatePublisher.sh` to download and install the publisher locally
3.  Execute `./_genonce.bat` to generate the published IG.

The published IG content can be found in the `output` folder and can be viewed by opening `output/index.html` in a web browser.

### Additional Content Generation

Some of the Implementation Guide page content is also generated content - specifically the contents of `input/pagecontent/capabilityStatement.xml` and `input/pagecontent/profiles.xml`.  These files can be re-generated as required with the following commands once SUSHI pre-processing is complete:

```bash
# Install dependencies - there is currently no package.json for these scripts
npm install remarkable
npm install markdown

# Generate content (these scripts have been copied and tweaked from the NHI IG Github repo)
./localscripts/makeCapabilityStatement.js
./localscripts/makeProfiles.js
```

## FHIR IG Auto-Builder

In addition to the IG Publisher, the FHIR team also provide a [FHIR IG Auto-Builder](https://github.com/FHIR/auto-ig-builder) that allows IGs in public GitHub repositories to be auto-published to the FHIR Continuous Integration build service at https://build.fhir.org.  The appropriate webhook configuration has been set up for this project's GitHub repository and the auto-published IG can be viewed at the following URL:

https://build.fhir.org/ig/richard-hunt-mwnz/fhir-ig-test/

## Simplifier.net IG Authoring/Publishing

Authoring and publishing IGs using the [Simplifier](https://simplifier.net/) infrastructure follows a completely different paradigm to the process described above.  In Simplifier, IGs are intended to be authored using the [Simplifier IG Editor](https://docs.simplifier.net/projects/Simplifier/simplifierIGeditor.html) and rendered/published from within Simplifier itself.

Unlike the FHIR IG Publisher, which outputs a fully rendered IG with merged in FHIR artifacts and Markdown content, the Simplifier IG Editor just provides some shorthand notation for rendering FHIR artifacts.  Apart from that, the entire IG, including the structure and layout, would need to be manually authored in the IG Editor.  The FHIR artifacts output by SUSHI can be imported into Simplifier but all of the Markdown content and FHIR IG Publisher output would need to be manually created/re-created.

## Other Health Projects

It's interesting to note that most other FHIR projects in the New Zealand health sector appear to be using the FHIR IG Publisher to produce their implementation guides, with Simplifier being used as a simple repository of FHIR artifacts rather than as an IG authoring/publishing tool.  Using the NHI FHIR API as an example:

- [Source Repository](https://github.com/HL7NZ/nhi) - The source of the NHI IG, set up to build using SUSHI and the FHIR IG Publisher and publish to AWS Amplify
- [Published NHI FHIR IG](https://master.d3b08qop7whnnl.amplifyapp.com/artifacts.html) - The published NHI FHIR IG on AWS Amplify
- [NHI Simplifier Project](https://simplifier.net/NHI) - This project contains a couple of imported FHIR artifacts but no authored IG or published packages
- [FHIR NZ Base Simplifier Project](https://simplifier.net/fhir-nz-base) - Again, this project contains a bunch of imported resources but no authored IG or published packages

This pattern seems to be fairly common throughout the New Zealand FHIR Registry:

- [NZ FHIR Implementation Guide Index](https://simplifier.net/guide/newzealandfhirimplementationguideindex?version=current) - All of the IGs referenced in the Simplifier index are external IGs that have been published using the FHIR IG Publisher.
- [NZ FHIR Registry IGs](https://simplifier.net/organization/nz-fhir-registry/~guides) - This list of NZ FHIR Registry IGs that HAVE been authored in Simplifier shows that they are all experimental/draft in nature.
