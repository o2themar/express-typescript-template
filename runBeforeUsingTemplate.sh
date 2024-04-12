#!/bin/sh

echo "Please provide a project name: "
read PROJECT_NAME

echo "Please provide a project description: "
read PROJECT_DESCRIPTION

PACKAGE_JSON_FILE="package.json"
README_FILE="README.md"

sed -i '' "s/PROJECT_NAME_HERE/$PROJECT_NAME/g" $README_FILE
sed -i '' "s/PROJECT_NAME_HERE/$PROJECT_NAME/g" $PACKAGE_JSON_FILE
sed -i '' "s/PROJECT_DESCRIPTION_HERE/$PROJECT_DESCRIPTION/g" $PACKAGE_JSON_FILE

cp .env.template .env

echo "Please rename the top level project folder to '${PROJECT_NAME}'"
echo "To get github actions working the following steps need to be done:"
echo "1. Create a github classic token with write:packages, read:packages, and delete:packages permissions."
echo "2. Create in project Settings > Security > Secrets & varaibles > Actions a token with name GH_Token and with the value from step 1."
echo "3. Make sure in project Settings > code & automation > Actions > General > Work Flow pemissions is set to read & write."
echo "The project is all setup. You can now delete this script."