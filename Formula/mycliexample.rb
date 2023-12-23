#READ ONLY! EDIT TEMPLATE INSTEAD. THIS FILE WILL BE OVERRIDED AT THE NEXT RELEASE
class Mycliexample < Formula
  version "v0.0.27"
  desc "Example of releasing a CLI into brew, using GitOps principles"
  homepage "https://github.com/qcastel/mycliexample"
  url "git@github.com:dataiku/dataiku-platform-tooling.git",
      tag:      "v0.0.27",
      revision: "v0.0.27"

  def install
    # Install the executable to bin
    bin.install "mycliexample_brew" => "mycliexample"

    # Ensure execute permissions are set
    chmod "+x", "#{bin}/mycliexample"

    # Create the user data directory
    (etc/"mycliexample").mkpath

    # Copy everything under lib to /usr/local/lib/mycliexample
    (lib/"mycliexample").install "version.txt", "lib"

    # Install the Zsh autocompletion file
    zsh_completion.install "autocompletions/mycliexample.zsh"  => "_mycliexample"

  end

  test do
    # Your test logic here
    system "#{bin}/mycliexample"
  end
end
