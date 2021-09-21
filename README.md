## Problem Description

As a programmer, we need to be able to do and redo our project as quickly as possible. Thus, this project is trying to
automate the process of creating a new Java project (with Gradle) structure.

## Development Environment Setup

### Prerequisites

| Prerequisite | Version | Link |
| ------ | -------- | ------ |
| Git | Latest | https://git-scm.com/downloads |

### Dependency

| Dependency | Version | Link |
| ------ | -------- | ------ |
| Java Runtime Environment (JRE) | 11 |  https://docs.oracle.com/goldengate/1212/gg-winux/GDRAD/java.htm#BGBFJHAB |
| Java Development Kit (JDK) | 11 | https://www.oracle.com/java/technologies/downloads/#java11 |
| Gradle | 7.2 | https://gradle.org/install/ |

## How to Use

For windows user please use Git Bash

1. Clone this repository
   ```bash
   git clone https://github.com/ivqonsanada/java-boilerplate-ada
   ```

2. Change directory into project
    ```bash
    cd java-boilerplate-ada
    ```

3. Set the ./cjp.sh as executable file
    ```bash
    chmod +x ./cjp.sh
    ```

4. Run the following command
    ```bash
    ./cjp.sh [project_name] [target_directory]
    ```

### Script Arguments

| Params | Description | Usage |
| ------ | ------------ | ------ |
| project_name | project name (mandatory) | ./cjp.sh \[project_name] |
| target_directory | target directory, default to current directory if not provided | ./cjp.sh \[project_name] \[target_directory] |

## Boilerplate Template Structure

```
template
├── README.md
├── gradlew
├── build.gradle
├── gradlew.bat
├── settings.gradle
├── .gitignore
├── .gitattributes
├── gradle
│   └── wrapper
│       ├── gradle-wrapper.jar
│       └── gradle-wrapper.properties
└── src
    ├── main
    │   └── java
    |        └── com
    |            └── minibootcamp
    |                └── ada
    |                     └── TBD
    └── test
        └── java
            └── com
                └── minibootcamp
                    └── ada
                          └── TBD
```
