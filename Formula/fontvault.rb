class Fontvault < Formula
  desc "Back up macOS fonts, Homebrew packages, and application inventory"
  homepage "https://github.com/Lesterwsl/fontvault-cli"
  url "https://github.com/Lesterwsl/fontvault-cli/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "a5e99aa489b8b1c9e0c2400e1b6c813f60dadbfe6efe3aa4972305b92621a518"
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
    assert_match "fontvault 1.3.0", shell_output("#{bin}/fontvault version")
    assert_match "fontvault backup", shell_output("#{bin}/fontvault help")
  end
end
