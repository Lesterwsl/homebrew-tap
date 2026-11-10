class Fontvault < Formula
  desc "Back up macOS fonts, Homebrew packages, and application inventory"
  homepage "https://github.com/Lesterwsl/fontvault-cli"
  url "https://github.com/Lesterwsl/fontvault-cli/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "dac4fb54062622af58c98df6b6c2d4d12afc2b0476c7addac29cb5248d16f9ab"
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
    assert_match "fontvault 1.0.0", shell_output("#{bin}/fontvault version")
    assert_match "fontvault backup", shell_output("#{bin}/fontvault help")
  end
end
