[Skip to content](https://geminicli.com/docs/get-started/installation/#_top)

# Gemini CLI installation, execution, and releases

Copy as MarkdownCopied!

This document provides an overview of Gemini CLI’s system requirements,
installation methods, and release types.

## Recommended system specifications

[Section titled “Recommended system specifications”](https://geminicli.com/docs/get-started/installation/#recommended-system-specifications)

- **Operating System:**
  - macOS 15+
  - Windows 11 24H2+
  - Ubuntu 20.04+
- **Hardware:**
  - “Casual” usage: 4GB+ RAM (short sessions, common tasks and edits)
  - “Power” usage: 16GB+ RAM (long sessions, large codebases, deep context)
- **Runtime:** Node.js 20.0.0+
- **Shell:** Bash, Zsh, or PowerShell
- **Location:** [Gemini Code Assist supported locations](https://developers.google.com/gemini-code-assist/resources/available-locations#americas)
- **Internet connection required**

## Install Gemini CLI

[Section titled “Install Gemini CLI”](https://geminicli.com/docs/get-started/installation/#install-gemini-cli)

We recommend most users install Gemini CLI using one of the following
installation methods. Note that Gemini CLI comes pre-installed on
[**Cloud Shell**](https://docs.cloud.google.com/shell/docs) and
[**Cloud Workstations**](https://cloud.google.com/workstations).

- [npm](https://geminicli.com/docs/get-started/installation/#tab-panel-18)
- [Homebrew (macOS/Linux)](https://geminicli.com/docs/get-started/installation/#tab-panel-19)
- [MacPorts (macOS)](https://geminicli.com/docs/get-started/installation/#tab-panel-20)
- [Anaconda](https://geminicli.com/docs/get-started/installation/#tab-panel-21)

Install globally with npm:

```
npm install -g @google/gemini-cli
```

Install globally with Homebrew:

```
brew install gemini-cli
```

Install globally with MacPorts:

```
sudo port install gemini-cli
```

Install with Anaconda (for restricted environments):

```
# Create and activate a new environment

conda create -y -n gemini_env -c conda-forge nodejs

conda activate gemini_env

# Install Gemini CLI globally via npm (inside the environment)

npm install -g @google/gemini-cli
```

## Run Gemini CLI

[Section titled “Run Gemini CLI”](https://geminicli.com/docs/get-started/installation/#run-gemini-cli)

For most users, we recommend running Gemini CLI with the `gemini` command:

```
gemini
```

For a list of options and additional commands, see the
[CLI cheatsheet](https://geminicli.com/docs/cli/cli-reference).

You can also run Gemini CLI using one of the following advanced methods:

- [npx](https://geminicli.com/docs/get-started/installation/#tab-panel-25)
- [Docker/Podman Sandbox](https://geminicli.com/docs/get-started/installation/#tab-panel-26)
- [From source](https://geminicli.com/docs/get-started/installation/#tab-panel-27)

Run instantly with npx. You can run Gemini CLI without permanent installation.

```
# Using npx (no installation required)

npx @google/gemini-cli
```

You can also execute the CLI directly from the main branch on GitHub, which is
helpful for testing features still in development:

```
npx https://github.com/google-gemini/gemini-cli
```

For security and isolation, Gemini CLI can be run inside a container. This is
the default way that the CLI executes tools that might have side effects.

- **Directly from the registry:** You can run the published sandbox image
directly. This is useful for environments where you only have Docker and want
to run the CLI.



```
# Run the published sandbox image

docker run --rm -it us-docker.pkg.dev/gemini-code-dev/gemini-cli/sandbox:0.1.1
```

- **Using the `--sandbox` flag:** If you have Gemini CLI installed locally
(using the standard installation described above), you can instruct it to run
inside the sandbox container.



```
gemini --sandbox -y -p "your prompt here"
```


Contributors to the project will want to run the CLI directly from the source
code.

- **Development mode:** This method provides hot-reloading and is useful for
active development.



```
# From the root of the repository

npm run start
```

- **Production mode (React optimizations):** This method runs the CLI with React
production mode enabled, which is useful for testing performance without
development overhead.



```
# From the root of the repository

npm run start:prod
```

- **Production-like mode (linked package):** This method simulates a global
installation by linking your local package. It’s useful for testing a local
build in a production workflow.



```
# Link the local cli package to your global node_modules

npm link packages/cli




# Now you can run your local version using the `gemini` command

gemini
```


## Releases

[Section titled “Releases”](https://geminicli.com/docs/get-started/installation/#releases)

Gemini CLI has three release channels: stable, preview, and nightly. For most
users, we recommend the stable release, which is the default installation.

- [Stable](https://geminicli.com/docs/get-started/installation/#tab-panel-22)
- [Preview](https://geminicli.com/docs/get-started/installation/#tab-panel-23)
- [Nightly](https://geminicli.com/docs/get-started/installation/#tab-panel-24)

Stable releases are published each week. A stable release is created from the
previous week’s preview release along with any bug fixes. The stable release
uses the `latest` tag. Omitting the tag also installs the latest stable
release by default.

```
# Both commands install the latest stable release.

npm install -g @google/gemini-cli

npm install -g @google/gemini-cli@latest
```

New preview releases will be published each week. These releases are not fully
vetted and may contain regressions or other outstanding issues. Try out the
preview release by using the `preview` tag:

```
npm install -g @google/gemini-cli@preview
```

Nightly releases are published every day. The nightly release includes all
changes from the main branch at time of release. It should be assumed there are
pending validations and issues. You can help test the latest changes by
installing with the `nightly` tag:

```
npm install -g @google/gemini-cli@nightly
```

Last updated: Apr 17, 2026

This website uses [cookies](https://policies.google.com/technologies/cookies) from Google to deliver and enhance the quality of its services and to analyze
traffic.

I understand.