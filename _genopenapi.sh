CONVERTER_DL_URL=$(curl -s https://api.github.com/repos/tewhatuora/fhir-openapi-converter/releases/latest | jq -r '.assets[] | select(.name == "cli.js") | .browser_download_url')
curl -L -o fhir-openapi-converter.js $CONVERTER_DL_URL
LOG_LEVEL=debug node ./fhir-openapi-converter.js --inputFolder fsh-generated --outputFolder oas
result=$?

if [ $result -ne 0 ]; then
	echo "Error generating OpenAPI specification. Exiting."
	exit $result
fi

oas_replace='SharedCareFHIRAPICapabilityStatement.openapi'
yaml_file=$(echo oas/*.yaml)
echo "Copying OpenAPI specification to output/${oas_replace}.yaml"
cp $yaml_file output/${oas_replace}.yaml

json_file=$(echo oas/*.json)
echo "Copying OpenAPI specification to output/${oas_replace}.json"
cp $json_file output/${oas_replace}.json
