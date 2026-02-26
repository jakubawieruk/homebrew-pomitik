class Pomitik < Formula
  desc "A command-line countdown timer with Pomodoro sessions"
  homepage "https://github.com/jakubawieruk/pomitik"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/jakubawieruk/pomitik/releases/download/v0.1.0/pomitik-aarch64-apple-darwin.tar.gz"
      sha256 "cc1a7f700dc29cc384eca95694198abcecacbd3cc70ca4703cf7093292566518"
    end

    on_intel do
      url "https://github.com/jakubawieruk/pomitik/releases/download/v0.1.0/pomitik-x86_64-apple-darwin.tar.gz"
      sha256 "460c4687fb24c36d3605a1eb42659cc4dcbd2e19c48266d0f257d21d6f8e8a9e"
    end
  end

  def install
    bin.install "tik"
  end

  test do
    assert_match "A command-line countdown timer", shell_output("#{bin}/tik --help")
  end
end
