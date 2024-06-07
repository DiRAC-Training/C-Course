#! /usr/bin/bash

for item in $(find . -name "*.md" | cut -d . -f -2); do
    echo "convert ${item}.md"
    pandoc -f markdown ${item}.md -o ${item}.html
done
