#!/bin/bash

ARGS=($@)

PROJECT_NAME=${ARGS[0]} || false
TARGET_DIRECTORY=${ARGS[1]} || false

function initProject() {
  if [[ -z $PROJECT_NAME ]]; then
      echo "ERROR: Please provide project name."
      echo "USAGE: ./cjp.sh <your_project_name>."
      exit 1
  fi

  echo "INFO: Copying template.."

  if [[ -z $TARGET_DIRECTORY ]]; then
      echo "INFO: Target directory is not provided using current folder as target."
      cp -r template ./$PROJECT_NAME
      echo "INFO: Initializing git repo"
      cd ./$PROJECT_NAME
      chmod +x gradlew 
      git init 
      git add .
  else
      echo "INFO: Creating new project at ${TARGET_DIRECTORY}"
      cp -r template $TARGET_DIRECTORY/$PROJECT_NAME
      echo "INFO: Initializing git repo"
      cd $TARGET_DIRECTORY/$PROJECT_NAME
      chmod +x gradlew 
      git init 
      git add .
  fi

  echo "INFO: Successfully created new project!"
}

initProject
