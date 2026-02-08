# homebrew-tap

Homebrew tap for `j4n-e4t` formulas.

## Add this tap

```bash
brew tap j4n-e4t/tap
```

## Install a formula

```bash
brew install <formula-name>
```

## Repository layout

- `Formula/` contains Ruby formula files.
- `.github/workflows/tests.yml` runs Homebrew checks in CI.

## Publishing formulas

1. Add a formula file to `Formula/<name>.rb`.
2. Commit and push to `main`.
3. Users can then install with `brew install j4n-e4t/tap/<name>`.
