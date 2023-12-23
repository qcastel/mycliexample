class Mycliexample < Formula
  version "0.0.22"  # Replace with the actual version number
  desc "Example of releasing a CLI with brew, using GitOps principles on a github repository"
  homepage "https://github.com/qcastel/test-cli-release"
  url "https://github.com/qcastel/test-cli-release/releases/latest/download/release.tar.gz"

  def install
    # Install the executable to bin
    bin.install "mycliexample"

    # Ensure execute permissions are set
    chmod "+x", "#{bin}/mycliexample"

    # Create the user data directory
    (etc/"mycliexample").mkpath

    # Copy everything under lib to /usr/local/lib/mycliexample
    (lib/"mycliexample").install "version.txt", "lib"

    # Install the Zsh autocompletion file
    zsh_completion.install "autocompletions/mycliexample.zsh"

  end

  test do
    # Your test logic here
    system "#{bin}/mycliexample"
  end
end
