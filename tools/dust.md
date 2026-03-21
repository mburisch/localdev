## dust

GitHub: https://github.com/bootandy/dust

A more intuitive version of `du` (disk usage). Displays disk usage in a visual, sorted tree format so you can quickly find what's taking up space.

### Examples

```bash
# Show disk usage for the current directory
dust

# Show only the top 10 largest items
dust -n 10

# Show disk usage for a specific directory
dust /var/log

# Show apparent file size instead of disk usage
dust -s

# Reverse the output order (smallest first)
dust -r

# Only show directories, not files
dust -d

# Limit depth of the tree to 2 levels
dust -D 2

# Ignore hidden files
dust -i
```
