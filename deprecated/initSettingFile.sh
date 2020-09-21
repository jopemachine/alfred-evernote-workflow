#!/bin/bash
echo ""

if [[ "$1" == "--force" || "$1" == "-f" ]]; then
    mv "$envTemplateFile" "$envFile";
    mv "$thumbNailPathTemplate" "$thumbNailPathJson";
    mv "$htmlCacheLogTemplate" "$htmlCacheLog";
    mv "$commandLog" "$commandLogTemplate"
fi

envFile="./.env"
envTemplateFile="./envTemplate"

thumbNailPathJson="./search_content/thumbNailPath.json"
thumbNailPathTemplate="./search_content/thumbNailPathTemplate.json"

htmlCacheLog="./search_content/htmlCacheLog.json"
htmlCacheLogTemplate="./search_content/htmlCacheLogTemplate.json"

commandLog="./commandLog.json"
commandLogTemplate="./commandLogTemplate.json"

checkAndMove() {
    if [ -f $1 ]; then
        echo "## $1 file exists. skip the mv command.."
    else
        mv "$2" "$1"; 
        echo "## $2 file is renamed to $1"
    fi
}

checkAndMove "$envFile" "$envTemplateFile"
checkAndMove "$thumbNailPathJson" "$thumbNailPathTemplate"
checkAndMove "$htmlCacheLog" "$htmlCacheLogTemplate"
checkAndMove "$commandLog" "$commandLogTemplate"

echo "## init setting files done."