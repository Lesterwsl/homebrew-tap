class Fontvault < Formula
  desc "Back up macOS fonts, Homebrew packages, and application inventory"
  homepage "https://github.com/Lesterwsl/fontvault-cli"
  url "https://github.com/Lesterwsl/fontvault-cli/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "ea599164bc7b3566fc0e3a6e442b120e1a1a8931923d7da1ea3ebf78a7b7994d"
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
    assert_match "fontvault 1.1.0", shell_output("#{bin}/fontvault version")
    assert_match "fontvault backup", shell_output("#{bin}/fontvault help")
  end
end
