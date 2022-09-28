#!/usr/bin/env bash
echo "Initializing...downloading helm chart dependencies"
helm dependency update
echo "Completed init."
