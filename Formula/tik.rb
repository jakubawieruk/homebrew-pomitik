class Tik < Formula
  desc "A command-line countdown timer with Pomodoro sessions"
  homepage "https://github.com/jakubawieruk/tik"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/jakubawieruk/tik/releases/download/v0.1.0/tik-aarch64-apple-darwin.tar.gz"
      sha256 "c87743e1b3992dbd2ef1c07fe5d169d90b7b955a9e8890266c26d03e5b014dac"
    end

    on_intel do
      url "https://github.com/jakubawieruk/tik/releases/download/v0.1.0/tik-x86_64-apple-darwin.tar.gz"
      sha256 "598cb305b1290bc73cc9cab6c9c0681543547a195661a9b092736a1622b8b114"
    end
  end

  def install
    bin.install "tik"
  end

  test do
    assert_match "A command-line countdown timer", shell_output("#{bin}/tik --help")
  end
end
