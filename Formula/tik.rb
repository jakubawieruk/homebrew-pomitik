class Tik < Formula
  desc "A command-line countdown timer with Pomodoro sessions"
  homepage "https://github.com/jakubawieruk/tik"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/jakubawieruk/tik/releases/download/v0.1.0/tik-aarch64-apple-darwin.tar.gz"
      sha256 "cc8d92751b0855d5ea7dcf54e1378d9cedbef59f5c617e9ec6cbb65c2a70cc4d"
    end
  end

  def install
    bin.install "tik"
  end

  test do
    assert_match "A command-line countdown timer", shell_output("#{bin}/tik --help")
  end
end
