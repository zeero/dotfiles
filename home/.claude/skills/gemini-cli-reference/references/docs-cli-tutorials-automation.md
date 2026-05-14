[Skip to content](https://geminicli.com/docs/cli/tutorials/automation/#_top)

# Automate tasks with headless mode

Copy as MarkdownCopied!

Automate tasks with Gemini CLI. Learn how to use headless mode, pipe data into
Gemini CLI, automate workflows with shell scripts, and generate structured JSON
output for other applications.

## Prerequisites

[Section titled “Prerequisites”](https://geminicli.com/docs/cli/tutorials/automation/#prerequisites)

- Gemini CLI installed and authenticated.
- Familiarity with shell scripting (Bash/Zsh).

## Why headless mode?

[Section titled “Why headless mode?”](https://geminicli.com/docs/cli/tutorials/automation/#why-headless-mode)

Headless mode runs Gemini CLI once and exits. It’s perfect for:

- **CI/CD:** Analyzing pull requests automatically.
- **Batch processing:** Summarizing a large number of log files.
- **Tool building:** Creating your own “AI wrapper” scripts.

## How to use headless mode

[Section titled “How to use headless mode”](https://geminicli.com/docs/cli/tutorials/automation/#how-to-use-headless-mode)

Run Gemini CLI in headless mode by providing a prompt with the `-p` (or
`--prompt`) flag. This bypasses the interactive chat interface and prints the
response to standard output (stdout). Positional arguments without the flag
default to interactive mode, unless the input or output is piped or redirected.

Run a single command:

```
gemini -p "Write a poem about TypeScript"
```

## How to pipe input to Gemini CLI

[Section titled “How to pipe input to Gemini CLI”](https://geminicli.com/docs/cli/tutorials/automation/#how-to-pipe-input-to-gemini-cli)

Feed data into Gemini using the standard Unix pipe `|`. Gemini reads the
standard input (stdin) as context and answers your question using standard
output.

Pipe a file:

**macOS/Linux**

```
cat error.log | gemini -p "Explain why this failed"
```

**Windows (PowerShell)**

```
Get-Content error.log | gemini -p "Explain why this failed"
```

Pipe a command:

```
git diff | gemini -p "Write a commit message for these changes"
```

## Use Gemini CLI output in scripts

[Section titled “Use Gemini CLI output in scripts”](https://geminicli.com/docs/cli/tutorials/automation/#use-gemini-cli-output-in-scripts)

Because Gemini prints to stdout, you can chain it with other tools or save the
results to a file.

### Scenario: Bulk documentation generator

[Section titled “Scenario: Bulk documentation generator”](https://geminicli.com/docs/cli/tutorials/automation/#scenario-bulk-documentation-generator)

You have a folder of Python scripts and want to generate a `README.md` for each
one.

1. Save the following code as `generate_docs.sh` (or `generate_docs.ps1` for
Windows):

**macOS/Linux (`generate_docs.sh`)**



```
#!/bin/bash




# Loop through all Python files

for file in *.py; do

     echo "Generating docs for $file..."




     # Ask Gemini CLI to generate the documentation and print it to stdout

     gemini -p "Generate a Markdown documentation summary for @$file. Print the

     result to standard output." > "${file%.py}.md"

done
```









**Windows PowerShell (`generate_docs.ps1`)**



```
# Loop through all Python files

Get-ChildItem -Filter *.py | ForEach-Object {

     Write-Host "Generating docs for $($_.Name)..."




     $newName = $_.Name -replace '\.py$', '.md'

     # Ask Gemini CLI to generate the documentation and print it to stdout

     gemini -p "Generate a Markdown documentation summary for @$($_.Name). Print the result to standard output." | Out-File -FilePath $newName -Encoding utf8

}
```

2. Make the script executable and run it in your directory:

**macOS/Linux**



```
chmod +x generate_docs.sh

./generate_docs.sh
```









**Windows (PowerShell)**



```
.\generate_docs.ps1
```









This creates a corresponding Markdown file for every Python file in the
folder.


## Extract structured JSON data

[Section titled “Extract structured JSON data”](https://geminicli.com/docs/cli/tutorials/automation/#extract-structured-json-data)

When writing a script, you often need structured data (JSON) to pass to tools
like `jq`. To get pure JSON data from the model, combine the
`--output-format json` flag with `jq` to parse the response field.

### Scenario: Extract and return structured data

[Section titled “Scenario: Extract and return structured data”](https://geminicli.com/docs/cli/tutorials/automation/#scenario-extract-and-return-structured-data)

1. Save the following script as `generate_json.sh` (or `generate_json.ps1` for
Windows):

**macOS/Linux (`generate_json.sh`)**



```
#!/bin/bash




# Ensure we are in a project root

if [ ! -f "package.json" ]; then

     echo "Error: package.json not found."

     exit 1

fi




# Extract data

gemini --output-format json "Return a raw JSON object with keys 'version' and 'deps' from @package.json" | jq -r '.response' > data.json
```









**Windows PowerShell (`generate_json.ps1`)**



```
# Ensure we are in a project root

if (-not (Test-Path "package.json")) {

     Write-Error "Error: package.json not found."

     exit 1

}




# Extract data (requires jq installed, or you can use ConvertFrom-Json)

$output = gemini --output-format json "Return a raw JSON object with keys 'version' and 'deps' from @package.json" | ConvertFrom-Json

$output.response | Out-File -FilePath data.json -Encoding utf8
```

2. Run the script:

**macOS/Linux**



```
chmod +x generate_json.sh

./generate_json.sh
```









**Windows (PowerShell)**



```
.\generate_json.ps1
```

3. Check `data.json`. The file should look like this:



```
{

     "version": "1.0.0",

     "deps": {

       "react": "^18.2.0"

     }

}
```


## Build your own custom AI tools

[Section titled “Build your own custom AI tools”](https://geminicli.com/docs/cli/tutorials/automation/#build-your-own-custom-ai-tools)

Use headless mode to perform custom, automated AI tasks.

### Scenario: Create a “Smart Commit” alias

[Section titled “Scenario: Create a “Smart Commit” alias”](https://geminicli.com/docs/cli/tutorials/automation/#scenario-create-a-smart-commit-alias)

You can add a function to your shell configuration to create a `git commit`
wrapper that writes the message for you.

**macOS/Linux (Bash/Zsh)**

1. Open your `.zshrc` file (or `.bashrc` if you use Bash) in your preferred
text editor.



```
nano ~/.zshrc
```









**Note**: If you use VS Code, you can run `code ~/.zshrc`.

2. Scroll to the very bottom of the file and paste this code:



```
function gcommit() {

     # Get the diff of staged changes

     diff=$(git diff --staged)




     if [ -z "$diff" ]; then

       echo "No staged changes to commit."

       return 1

     fi




     # Ask Gemini to write the message

     echo "Generating commit message..."

     msg=$(echo "$diff" | gemini -p "Write a concise Conventional Commit message for this diff. Output ONLY the message.")




     # Commit with the generated message

     git commit -m "$msg"

}
```









Save your file and exit.

3. Run this command to make the function available immediately:



```
source ~/.zshrc
```


**Windows (PowerShell)**

1. Open your PowerShell profile in your preferred text editor.



```
notepad $PROFILE
```

2. Scroll to the very bottom of the file and paste this code:



```
function gcommit {

     # Get the diff of staged changes

     $diff = git diff --staged




     if (-not $diff) {

       Write-Host "No staged changes to commit."

       return

     }




     # Ask Gemini to write the message

     Write-Host "Generating commit message..."

     $msg = $diff | gemini -p "Write a concise Conventional Commit message for this diff. Output ONLY the message."




     # Commit with the generated message

     git commit -m "$msg"

}
```









Save your file and exit.

3. Run this command to make the function available immediately:



```
. $PROFILE
```

4. Use your new command:



```
gcommit
```









Gemini CLI will analyze your staged changes and commit them with a generated
message.


## Next steps

[Section titled “Next steps”](https://geminicli.com/docs/cli/tutorials/automation/#next-steps)

- Explore the [Headless mode reference](https://geminicli.com/docs/cli/headless) for full JSON
schema details.
- Learn about [Shell commands](https://geminicli.com/docs/cli/tutorials/shell-commands) to let the agent run scripts
instead of just writing them.

Last updated: Mar 9, 2026

This website uses [cookies](https://policies.google.com/technologies/cookies) from Google to deliver and enhance the quality of its services and to analyze
traffic.

I understand.