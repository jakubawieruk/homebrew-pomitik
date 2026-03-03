class Pomitik < Formula
  desc "A command-line countdown timer with Pomodoro sessions"
  homepage "https://github.com/jakubawieruk/pomitik"
  version "0.3.1"

  on_macos do
    on_arm do
      url "https://github.com/jakubawieruk/pomitik/releases/download/v0.3.1/pomitik-aarch64-apple-darwin.tar.gz"
      sha256 "64a757a9634cb0a23bab2b628eb1d6e71f85e33aa1e94aaa455c16189e5a61b4"
    end

    on_intel do
      url "https://github.com/jakubawieruk/pomitik/releases/download/v0.3.1/pomitik-x86_64-apple-darwin.tar.gz"
      sha256 "d0b4954eaf812fafea22cd1e6e8c96b4a2058b5524675c2a40a4e0cba1a89f6d"
    end
  end

  def install
    bin.install "tik"
  end

  test do
    assert_match "A command-line countdown timer", shell_output("#{bin}/tik --help")
  end
end
