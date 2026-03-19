## yq

GitHub: https://github.com/mikefarah/yq
Homepage: https://mikefarah.gitbook.io/yq

## Description

`yq` is a CLI processor for YAML, XML, and TOML files — like `jq` but for structured config formats.

## Examples

```bash
# Read a value from YAML
yq '.services.web.image' docker-compose.yml

# Update a value in place
yq -i '.version = "2.0"' config.yaml

# Convert YAML to JSON
yq -o json config.yaml
```
