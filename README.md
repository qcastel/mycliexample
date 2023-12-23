# Example of releasing a CLI with brew, using GitOps principles on a github repository

## Resulting installation of the CLI

```
brew tap qcastel/test-cli-release git@github.com:qcastel/test-cli-release.git
brew install mycliexample
```

The CLI will verify each day if a new upgrade is available via brew.

## How it works

### github actions

The CI is implemented using github actions, which will release the cli on each commit into master.
The release will also manage the versioning of your CLI

### Brew

Brew will fetch the `Formula/mycliexample.rb`, which is bumped at each release.


Enjoy!