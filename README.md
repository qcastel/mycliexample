# Example of Releasing a CLI with Homebrew and GitOps on GitHub

## Resulting installation of the CLI

```
brew tap qcastel/mycliexample git@github.com:qcastel/mycliexample.git
brew install mycliexample
```

The CLI will verify each day if a new upgrade is available via Homebrew.

## How it works

### github actions

The CI is implemented using GitHub Actions, which releases the CLI on each commit to the master branch.
The release process also manages the versioning of your CLI.

### Homebrew

Homebrew will fetch the Formula/mycliexample.rb, which is bumped at each release.

Enjoy!


