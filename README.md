# txtcv Homebrew tap

Installs the Go CLI from [txtcv/txtcv](https://github.com/txtcv/txtcv).

Until the Go CLI has a tagged release, the formula builds the current `main`
branch from source. Homebrew installs Go as a build dependency.

## Install

```sh
brew install --HEAD txtcv/tap/txtcv
```

Update to the latest commit:

```sh
brew update
brew upgrade --fetch-HEAD txtcv/tap/txtcv
```

Or, in a `brew bundle` `Brewfile`:

```ruby
tap "txtcv/tap"
brew "txtcv", args: ["HEAD"]
```

## Try it

```sh
mkdir my-cv
cd my-cv
txtcv init
txtcv validate
txtcv serve
```

Open http://localhost:9090 to preview the CV and save a PDF using your browser's
Print dialog. See the [CLI documentation](https://github.com/txtcv/txtcv#readme)
for more details.

## Maintaining the tap

CI builds and tests the HEAD formula on the latest Linux and Apple Silicon macOS runners.
HEAD installations build from source; the tap does not publish bottles for them.
Once the Go CLI has a tagged release, add its source archive URL and SHA-256
checksum to the formula to enable installation without `--HEAD`.
