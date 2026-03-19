## gh

GitHub: https://github.com/cli/cli

Homepage: https://cli.github.com

GitHub's official command-line tool for interacting with GitHub from the terminal. Manage pull requests, issues, repositories, gists, workflows, and more without leaving the command line.

### Examples

```bash
# Create a pull request
gh pr create --title "Fix bug" --body "Description of changes"

# List open issues
gh issue list

# View the status of CI checks on the current branch
gh pr checks

# Clone a repository
gh repo clone owner/repo

# Trigger a workflow run
gh workflow run deploy.yml

# Browse the repo in the terminal
gh browse
```
