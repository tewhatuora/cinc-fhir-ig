### Setting up a webhook for automatic branch publishing
# Assumes draft phase 2 IG is on the branch **RFphase2**
# Configure a webhook for automatic publication using the following command

#!/bin/bash
curl -X POST  "https://us-central1-fhir-org-starter-project.cloudfunctions.net/ig-commit-trigger" \
  -H "Content-type: application/json" \
  --data '{"ref": "refs/heads/RFphase1", "repository": {"full_name": "tewhatuora/cinc-fhir-ig"}}'
