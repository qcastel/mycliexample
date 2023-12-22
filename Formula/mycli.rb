class Mycli < Formula
  version "VERSION"  # Replace with the actual version number
  desc "Example of releasing a CLI into brew, using GitOps principles"
  homepage "https://github.com/qcastel/test-cli-release"
  url "https://github.com/qcastel/test-cli-release/releases/latest/download/release.tar.gz"

  def install
    # Install the executable to bin
    bin.install "mycli"

    # Ensure execute permissions are set
    chmod "+x", "#{bin}/mycli"

    # Create the user data directory
    (etc/"mycli").mkpath

    # Copy everything under lib to /usr/local/lib/mycli
    (lib/"mycli").install "version.txt", "lib"

    # Install the Zsh autocompletion file
    zsh_completion.install "autocompletions/mycli.zsh"

  end

  test do
    # Your test logic here
    system "#{bin}/mycli"
  end
end
