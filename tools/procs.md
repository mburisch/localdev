## procs

GitHub: https://github.com/dalance/procs

A modern replacement for `ps` written in Rust. Provides human-readable, colorized output with keyword search, tree view, and additional columns like TCP/UDP ports and read/write throughput.

### Examples

```bash
# Show all processes (default view with color and human-readable output)
procs

# Search for processes by keyword (matches against command, user, pid, etc.)
procs firefox

# Show process tree
procs --tree

# Show only processes matching a specific PID
procs --pid 1234

# Sort by cpu usage
procs --sortd cpu

# Sort by memory usage
procs --sortd mem

# Watch mode — refresh output continuously
procs --watch

# Show processes in ascending order by start time
procs --sorta start
```
