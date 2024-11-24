CONVERTER_DL_URL=$(curl -s https://api.github.com/repos/tewhatuora/fhir-openapi-converter/releases/latest | jq -r '.assets[] | select(.name == "cli.js") | .browser_download_url')
curl -L -o fhir-openapi-converter.js $CONVERTER_DL_URL
LOG_LEVEL=debug node ./fhir-openapi-converter.js --inputFolder fsh-generated --outputFolder temp
result=$?

if [ $result -ne 0 ]; then
	echo "Error generating OpenAPI specification. Exiting."
	exit $result
fi

echo "Copying OpenAPI specification to output/openapi.yaml"
cp temp/SharedCareFHIRAPICapabilityStatement.openapi.yaml output/openapi.yaml
