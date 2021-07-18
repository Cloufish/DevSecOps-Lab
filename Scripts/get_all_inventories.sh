#!/bin/bash -xv
mapfile -t paths_to_inventories < <(find . -name vagrant_ansible_inventory -type f)
path_to_main_inventory="../ansible/hosts"

echo "" > "$path_to_main_inventory"

for path in "${paths_to_inventories[@]}"; do
    cat "$path" >>  "$path_to_main_inventory"
done
