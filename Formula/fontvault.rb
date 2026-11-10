class Fontvault < Formula
  desc "Back up macOS fonts, Homebrew packages, and application inventory"
  homepage "https://github.com/Lesterwsl/fontvault-cli"
  url "https://github.com/Lesterwsl/fontvault-cli/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "d4baa8c0834121d92bb63631e48d98e9930f8d457bf377bbea95a168eda896c4"
  license "MIT"

  depends_on "gh"
  depends_on "git"
  depends_on "jq"
  depends_on :macos

  def install
    bin.install "bin/fontvault"
    zsh_completion.install "completions/_fontvault"
    man1.install "man/fontvault.1"
  end

  test do
    assert_match "fontvault 1.0.1", shell_output("#{bin}/fontvault version")
    assert_match "fontvault backup", shell_output("#{bin}/fontvault help")
  end
end
