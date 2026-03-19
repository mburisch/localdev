## jq

GitHub: https://github.com/jqlang/jq
Homepage: https://jqlang.github.io/jq/

## Description

`jq` is a CLI JSON processor for filtering, transforming, and querying JSON data from the command line.

## Examples

```bash
# Pretty-print JSON
cat data.json | jq .

# Extract a field
jq '.name' package.json

# Filter an array
jq '.items[] | select(.status == "active")' data.json
```
