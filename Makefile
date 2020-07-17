SHELL=/bin/bash

# Usage:
# make ci-pr					# runs during a pull request check on CI/CD server
# make ci-build					# builds the artifact (ie. jar file) on CI/CD server

test:
	mvn clean test

ci-pr:
	mvn clean verify

ci-build:
	mvn clean package docker:build -DskipTests
	
