set -e
node ./scripts/apis-guru.js
node ./scripts/aws/rewrite.js
node ./scripts/bump-versions.js --bump major
node ./scripts/get-logos.js
node ./scripts/generate-json.js
node ./scripts/readmes/generate-readmes.js
node ./scripts/readmes/add-links.js

echo "Done updating files. Please run ./scripts/publish.sh and ./scripts/push-data.sh"
