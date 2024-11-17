#! /bin/bash

AVAILABLE_LANGUAGES=("Ruby" "Node.js" "Deno" "Go" "PHP" "Python" "Java" )
SELECTED_LANGUAGES="Ruby","Node.js"
export SELECTED_GUM_LANGUAGES=$(gum choose "${AVAILABLE_LANGUAGES[@]}" --no-limit --selected "$SELECTED_LANGUAGES" --height 10 --header "Select programming languages")

AVAILABLE_TOOLS=("kubectl" "minikube" "helm" "pnpm" "yarn" "maven" )
SELECTED_TOOLS="kubectl","minikube","helm","pnpm"
export SELECTED_GUM_TOOLS=$(gum choose "${AVAILABLE_TOOLS[@]}" --no-limit --selected "$SELECTED_TOOLS" --height 10 --header "Select additional tools")