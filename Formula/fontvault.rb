class Fontvault < Formula
  desc "Back up macOS fonts, Homebrew packages, and application inventory"
  homepage "https://github.com/Lesterwsl/fontvault-cli"
  url "https://github.com/Lesterwsl/fontvault-cli/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "0104f75cba86e83d8b0ffe9e3cdc947205b8f378d69aaabffd80a490f5d405c3"
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
    assert_match "fontvault 1.2.0", shell_output("#{bin}/fontvault version")
    assert_match "fontvault backup", shell_output("#{bin}/fontvault help")
  end
end
