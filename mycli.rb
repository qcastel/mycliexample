class MyCli < Formula
    desc "Example of releasing a CLI into brew, using gitops princiapl"
    homepage "https://github.com/qcastel/test-cli-release"
    url "https://github.com/qcastel/archive/master.tar.gz"
    sha256 "checksum_of_your_tarball"
  
    def install
      bin.install "dkuremote"
      
      # Create the user data directory
      (etc/"mycli").mkpath


      # Install additional directories to libexec
      libexec.install %w[libs]

      # Install the Zsh autocompletion file
      zsh_completion.install "autocompletions/mycli.zsh"
    end

    end
  
    test do
      # Your test logic here
      system "#{bin}/mycli"
    end
  end
  