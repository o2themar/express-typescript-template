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
echo "The project is all setup. You can now delete this script."