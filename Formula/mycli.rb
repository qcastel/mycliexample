class Mycli < Formula
  version "0.0.0"
  desc "Example of releasing a CLI into brew, using GitOps principles"
  homepage "https://github.com/qcastel/test-cli-release"
  url "https://github.com/qcastel/test-cli-release/releases/latest/download/release.tar.gz"

  def install
    bin.install "mycli"
    
    # Create the user data directory
    (etc/"mycli").mkpath

    # Install additional directories to libexec
    libexec.install %w[libs]

    # Install the Zsh autocompletion file
    zsh_completion.install "autocompletions/mycli.zsh"
  end

  test do
    # Your test logic here
    system "#{bin}/mycli version"
  end
end
