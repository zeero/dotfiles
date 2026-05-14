[Skip to content](https://geminicli.com/docs/resources/uninstall/#_top)

# Uninstalling the CLI

Copy as MarkdownCopied!

Your uninstall method depends on how you ran the CLI. Follow the instructions
for either npx or a global npm installation.

## Method 1: Using npx

[Section titled “Method 1: Using npx”](https://geminicli.com/docs/resources/uninstall/#method-1-using-npx)

npx runs packages from a temporary cache without a permanent installation. To
“uninstall” the CLI, you must clear this cache, which will remove gemini-cli and
any other packages previously executed with npx.

The npx cache is a directory named `_npx` inside your main npm cache folder. You
can find your npm cache path by running `npm config get cache`.

**For macOS / Linux**

```
# The path is typically ~/.npm/_npx

rm -rf "$(npm config get cache)/_npx"
```

**For Windows (PowerShell)**

```
# The path is typically $env:LocalAppData\npm-cache\_npx

Remove-Item -Path (Join-Path $env:LocalAppData "npm-cache\_npx") -Recurse -Force
```

## Method 2: Using npm (global install)

[Section titled “Method 2: Using npm (global install)”](https://geminicli.com/docs/resources/uninstall/#method-2-using-npm-global-install)

If you installed the CLI globally (for example,
`npm install -g @google/gemini-cli`), use the `npm uninstall` command with the
`-g` flag to remove it.

```
npm uninstall -g @google/gemini-cli
```

This command completely removes the package from your system.

## Method 3: Homebrew

[Section titled “Method 3: Homebrew”](https://geminicli.com/docs/resources/uninstall/#method-3-homebrew)

If you installed the CLI globally using Homebrew (for example,
`brew install gemini-cli`), use the `brew uninstall` command to remove it.

```
brew uninstall gemini-cli
```

## Method 4: MacPorts

[Section titled “Method 4: MacPorts”](https://geminicli.com/docs/resources/uninstall/#method-4-macports)

If you installed the CLI globally using MacPorts (for example,
`sudo port install gemini-cli`), use the `port uninstall` command to remove it.

```
sudo port uninstall gemini-cli
```

Last updated: Apr 10, 2026

This website uses [cookies](https://policies.google.com/technologies/cookies) from Google to deliver and enhance the quality of its services and to analyze
traffic.

I understand.