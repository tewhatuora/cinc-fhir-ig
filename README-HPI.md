# Notes on using HPI IG resources

**WARNING: IGs that depend on the HPI IG cannot be published due to a dependency inside the HPI IG.  See the Publisher error section below.**

## Need
It is only necessary for the IG to depend on HPI IG resources if one wishes to do things like define an example instance of an HpiOrganisation.  

Consider the following example which could be handy for IGs that make extensive use of Reference(Organization) in profiles and examples:
```fsh
Instance: WaikatoRFSecondaryPreventionService
InstanceOf: HpiOrganization
Description: "Identifies the Waikato rheumatic fever secondary prevention provider organization"
Usage: #example

* identifier[orgId].use = #official
* identifier[orgId].system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* identifier[orgId].value = "GOM087-D"

* name = "Waikato Rheumatic Fever Secondary Prevention Service"
```


## Depending on HPI in another Implementation Guide (IG)

### Configure the IG dependency

In ``sushi-config.yaml``, declare the dependency on HPI resources exactly as follows, except correcting the version number
```yaml
..
dependencies:
  hl7.org.nz.fhir.ig.hpi:
    uri: 'https://hpi-ig.hip-uat.digital.health.nz'   
    version: 1.2.0
..
```

### Ensure the HPI resources (package) are in the local cache

If the resource package is not located correctly, **sushi will fail with the error like**
``` 
info  Did not find hl7.org.nz.fhir.ig.hpi#1.2.0 in /Users/dgrainge/.fhir/packages.
info  Downloading hl7.org.nz.fhir.ig.hpi#1.2.0... https://packages.fhir.org/hl7.org.nz.fhir.ig.hpi/1.2.0
info  Downloading hl7.org.nz.fhir.ig.hpi#1.2.0... https://packages2.fhir.org/packages/hl7.org.nz.fhir.ig.hpi/1.2.0
error Failed to load hl7.org.nz.fhir.ig.hpi#1.2.0: The package hl7.org.nz.fhir.ig.hpi#1.2.0 could not be loaded locally or from the FHIR package registry.
```

The resource package has to be found the [local package cache](https://confluence.hl7.org/display/FHIR/FHIR+Package+Cache) -- in ``~/.fhir/packages`` on Macs -- for sushi to work.

To resolve this error, follow Pat Ryan's exact instructions as follows:
1. Download the **full-IG.zip** from the Support link of the **HPI IG website** [https://hpi-ig.hip.digital.health.nz/](https://hpi-ig.hip.digital.health.nz/)
1. Extract package.tgz from the zip, and from this get the ``packages.tar`` file
1. Expand (untar) the contents of ``packages.tar`` into ~/.fhir/packages/hl7.org.nz.fhir.ig.hpi#1.2.0/package which is the default ;local place sushi looks for packages.  Correct the version number if needed
1. run sushi

Note that the following alternative resource placement tactics **do not work**
- Placing the resources in ``fsh/input/resources`` (supposed to be a conventional place sushi looks)
- Placing the resources in another subdirectory say ``fsh/input/foo`` and setting the ``path-resource`` parameter in ``sushi-config.yaml``

### Publisher error
At the time of writing, although sushi works with an IG dependency on HPI, the IG publisher fails to an error like
```command
 org.hl7.fhir.exceptions.FHIRException: The package 'hl7.org.nz.fhir.ig.hip-core' has no entry on the current build server
```
I believe this is caused by a bad dependency declared in the HPI package.json "hl7.org.nz.fhir.ig.hip-core" : "1.3.1".

I checked with Pat Ryan and there is no workaround for this as Pat doesn't use the international fhir build server / registry and no one in HPI land is focusing on this at the moment :-(
