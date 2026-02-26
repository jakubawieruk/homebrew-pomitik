class Pomitik < Formula
  desc "A command-line countdown timer with Pomodoro sessions"
  homepage "https://github.com/jakubawieruk/pomitik"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/jakubawieruk/pomitik/releases/download/v0.1.0/pomitik-aarch64-apple-darwin.tar.gz"
      sha256 "ad6f6db64f74f1d863f6992e518168ad6f2f97093aef46801c921bfb577348fe"
    end

    on_intel do
      url "https://github.com/jakubawieruk/pomitik/releases/download/v0.1.0/pomitik-x86_64-apple-darwin.tar.gz"
      sha256 "2a5601721191a281e7f44a3b652c3e2bb4e7cd246c02a7c35dd09e929b053fc9"
    end
  end

  def install
    bin.install "pomitik"
  end

  test do
    assert_match "A command-line countdown timer", shell_output("#{bin}/pomitik --help")
  end
end
