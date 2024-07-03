#!/bin/bash
publisher_jar=publisher.jar
input_cache_path=./input-cache/
echo Checking internet connection...
curl -sSf tx.fhir.org > /dev/null

if [ $? -eq 0 ]; then
	echo "Online"
	txoption=""
else
	echo "Offline"
	txoption="-tx n/a"
fi

echo "$txoption"

export JAVA_TOOL_OPTIONS="$JAVA_TOOL_OPTIONS -Dfile.encoding=UTF-8"

publisher=$input_cache_path/$publisher_jar
if test -f "$publisher"; then
	java -jar $publisher -ig . $txoption $*

else
	publisher=../$publisher_jar
	if test -f "$publisher"; then
		java -jar $publisher -ig . $txoption $*
	else
		echo IG Publisher NOT FOUND in input-cache or parent folder.  Please run _updatePublisher.  Aborting...
	fi
fi

CONVERTER_DL_URL=$(curl -s https://api.github.com/repos/tewhatuora/fhir-openapi-converter/releases/latest | jq -r '.assets[] | select(.name == "cli.js") | .browser_download_url')
curl -L -o fhir-openapi-converter.js $CONVERTER_DL_URL
node ./fhir-openapi-converter.js --inputFolder fsh-generated --outputFolder oas
result=$?

if [ $result -ne 0 ]; then
	echo "Error generating OpenAPI specification. Exiting."
	exit $result
fi

cp oas/SharedCareFHIRAPICapabilityStatement.openapi.yaml output/openapi.yaml
