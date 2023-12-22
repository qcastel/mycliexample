# sample CLI managed by Brew and released using github actions, following gitops principal

## Resulting installation of the CLI

```
brew tap qcastel/test-cli-release git@github.com:qcastel/test-cli-release.git
brew install mycliexample
```

The CLI will verify each day if an upgrade is available.

## How it works

### github actions

The CI is implemented using github actions, which will package the cli at each commit to master.
It will manage the versioning of your CLI

### Brew

Brew will fetch the `Formula/mycliexample.rb` which is bumped at each release.


Enjoy!