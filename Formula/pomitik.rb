class Pomitik < Formula
  desc "A command-line countdown timer with Pomodoro sessions"
  homepage "https://github.com/jakubawieruk/pomitik"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/jakubawieruk/pomitik/releases/download/v0.2.0/pomitik-aarch64-apple-darwin.tar.gz"
      sha256 "b3a0acb3aa4ebd0032d03349b1fd18ebe5deba8a90eb4825e1055f181e802f55"
    end

    on_intel do
      url "https://github.com/jakubawieruk/pomitik/releases/download/v0.2.0/pomitik-x86_64-apple-darwin.tar.gz"
      sha256 "2113b9a5151ee150eca6410046074307e29b70af28b368a4a98010411faf15e6"
    end
  end

  def install
    bin.install "tik"
  end

  test do
    assert_match "A command-line countdown timer", shell_output("#{bin}/tik --help")
  end
end
