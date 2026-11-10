# Tap maintenance / Tap 維護指引

- Formulae must reference immutable version tags and verified SHA-256 checksums.  
  Formula 必須使用不可變版本標籤及已驗證 SHA-256 checksum。
- Never add fonts, credentials, private repository contents, or user-specific paths.  
  絕不可加入字型、登入憑證、私人 repository 內容或使用者專用路徑。
- Test with `brew audit --strict --formula` and `brew test` before publishing.  
  發佈前使用 `brew audit --strict --formula` 及 `brew test` 驗證。

