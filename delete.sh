#!/usr/bin/bash
apps=$(find . -type f -wholename "./Apps/*.yml" -exec grep -rlPzv 'x-casaos:\s*\n\s*architectures:[\n\s\w-]*- arm\s*\n' {} \;)
for app in "${apps[@]}"; do
    parent_dir=$(dirname $app)
    rm -rf  $parent_dir
done