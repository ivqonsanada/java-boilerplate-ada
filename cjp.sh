#!/bin/bash

ARGS=($@)

PROJECT_NAME=${ARGS[0]} || false
PROJECT_NAME=`echo $PROJECT_NAME | sed 's/\/$//g'`
TARGET_DIRECTORY=${ARGS[1]} || false
TARGET_DIRECTORY=`echo $TARGET_DIRECTORY | sed 's/\/$//g'`
FULL_PATH=$TARGET_DIRECTORY/$PROJECT_NAME

function initProject() {
  if [[ -z $PROJECT_NAME ]]; then
      echo "ERROR: Please provide project name."
      echo "USAGE: ./cjp.sh <your_project_name>."
      exit 1
  fi

  if [ ! -d $FULL_PATH ]
  then
      mkdir -p $FULL_PATH
  fi

  echo "INFO: Copying template.."

  if [[ -z $TARGET_DIRECTORY ]]; then
      echo "INFO: Target directory is not provided using current folder as target."
      cp -R template/* ./$PROJECT_NAME
      echo "INFO: Initializing git repo"
      cd ./$PROJECT_NAME
      chmod +x gradlew 
      git init 
      git add .
  else
      echo "INFO: Creating new project at ${TARGET_DIRECTORY}"
      cp -R template/* $TARGET_DIRECTORY/$PROJECT_NAME
      echo "INFO: Initializing git repo"
      cd $TARGET_DIRECTORY/$PROJECT_NAME
      chmod +x gradlew 
      git init 
      git add .
  fi

  echo "INFO: Successfully created new project!"
}

initProject
