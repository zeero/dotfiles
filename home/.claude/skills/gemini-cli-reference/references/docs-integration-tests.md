[Skip to content](https://geminicli.com/docs/integration-tests/#_top)

# Integration tests

Copy as MarkdownCopied!

This document provides information about the integration testing framework used
in this project.

## Overview

[Section titled “Overview”](https://geminicli.com/docs/integration-tests/#overview)

The integration tests are designed to validate the end-to-end functionality of
Gemini CLI. They execute the built binary in a controlled environment and verify
that it behaves as expected when interacting with the file system.

These tests are located in the `integration-tests` directory and are run using a
custom test runner.

## Building the tests

[Section titled “Building the tests”](https://geminicli.com/docs/integration-tests/#building-the-tests)

Prior to running any integration tests, you need to create a release bundle that
you want to actually test:

```
npm run bundle
```

You must re-run this command after making any changes to the CLI source code,
but not after making changes to tests.

## Running the tests

[Section titled “Running the tests”](https://geminicli.com/docs/integration-tests/#running-the-tests)

The integration tests are not run as part of the default `npm run test` command.
They must be run explicitly using the `npm run test:integration:all` script.

The integration tests can also be run using the following shortcut:

```
npm run test:e2e
```

## Running a specific set of tests

[Section titled “Running a specific set of tests”](https://geminicli.com/docs/integration-tests/#running-a-specific-set-of-tests)

To run a subset of test files, you can use
`npm run <integration test command> <file_name1> ....` where <integration
test command> is either `test:e2e` or `test:integration*` and `<file_name>`
is any of the `.test.js` files in the `integration-tests/` directory. For
example, the following command runs `list_directory.test.js` and
`write_file.test.js`:

```
npm run test:e2e list_directory write_file
```

### Running a single test by name

[Section titled “Running a single test by name”](https://geminicli.com/docs/integration-tests/#running-a-single-test-by-name)

To run a single test by its name, use the `--test-name-pattern` flag:

```
npm run test:e2e -- --test-name-pattern "reads a file"
```

### Regenerating model responses

[Section titled “Regenerating model responses”](https://geminicli.com/docs/integration-tests/#regenerating-model-responses)

Some integration tests use faked out model responses, which may need to be
regenerated from time to time as the implementations change.

To regenerate these golden files, set the REGENERATE\_MODEL\_GOLDENS environment
variable to “true” when running the tests, for example:

**WARNING**: If running locally you should review these updated responses for
any information about yourself or your system that gemini may have included in
these responses.

```
REGENERATE_MODEL_GOLDENS="true" npm run test:e2e
```

**WARNING**: Make sure you run **await rig.cleanup()** at the end of your test,
else the golden files will not be updated.

### Deflaking a test

[Section titled “Deflaking a test”](https://geminicli.com/docs/integration-tests/#deflaking-a-test)

Before adding a **new** integration test, you should test it at least 5 times
with the deflake script or workflow to make sure that it is not flaky.

### Deflake script

[Section titled “Deflake script”](https://geminicli.com/docs/integration-tests/#deflake-script)

```
npm run deflake -- --runs=5 --command="npm run test:e2e -- -- --test-name-pattern '<your-new-test-name>'"
```

#### Deflake workflow

[Section titled “Deflake workflow”](https://geminicli.com/docs/integration-tests/#deflake-workflow)

```
gh workflow run deflake.yml --ref <your-branch> -f test_name_pattern="<your-test-name-pattern>"
```

### Running all tests

[Section titled “Running all tests”](https://geminicli.com/docs/integration-tests/#running-all-tests)

To run the entire suite of integration tests, use the following command:

```
npm run test:integration:all
```

### Sandbox matrix

[Section titled “Sandbox matrix”](https://geminicli.com/docs/integration-tests/#sandbox-matrix)

The `all` command will run tests for `no sandboxing`, `docker` and `podman`.
Each individual type can be run using the following commands:

```
npm run test:integration:sandbox:none
```

```
npm run test:integration:sandbox:docker
```

```
npm run test:integration:sandbox:podman
```

## Memory regression tests

[Section titled “Memory regression tests”](https://geminicli.com/docs/integration-tests/#memory-regression-tests)

Memory regression tests are designed to detect heap growth and leaks across key
CLI scenarios. They are located in the `memory-tests` directory.

These tests are distinct from standard integration tests because they measure
memory usage and compare it against committed baselines.

### Running memory tests

[Section titled “Running memory tests”](https://geminicli.com/docs/integration-tests/#running-memory-tests)

Memory tests are not run as part of the default `npm run test` or
`npm run test:e2e` commands. They are run nightly in CI but can be run manually:

```
npm run test:memory
```

### Updating baselines

[Section titled “Updating baselines”](https://geminicli.com/docs/integration-tests/#updating-baselines)

If you intentionally change behavior that affects memory usage, you may need to
update the baselines. Set the `UPDATE_MEMORY_BASELINES` environment variable to
`true`:

```
UPDATE_MEMORY_BASELINES=true npm run test:memory
```

This will run the tests, take median snapshots, and overwrite
`memory-tests/baselines.json`. You should review the changes and commit the
updated baseline file.

### How it works

[Section titled “How it works”](https://geminicli.com/docs/integration-tests/#how-it-works)

The harness (`MemoryTestHarness` in `packages/test-utils`):

- Forces garbage collection multiple times to reduce noise.
- Takes median snapshots to filter spikes.
- Compares against baselines with a 10% tolerance.
- Can analyze sustained leaks across 3 snapshots using `analyzeSnapshots()`.

## Performance regression tests

[Section titled “Performance regression tests”](https://geminicli.com/docs/integration-tests/#performance-regression-tests)

Performance regression tests are designed to detect wall-clock time, CPU usage,
and event loop delay regressions across key CLI scenarios. They are located in
the `perf-tests` directory.

These tests are distinct from standard integration tests because they measure
performance metrics and compare it against committed baselines.

### Running performance tests

[Section titled “Running performance tests”](https://geminicli.com/docs/integration-tests/#running-performance-tests)

Performance tests are not run as part of the default `npm run test` or
`npm run test:e2e` commands. They are run nightly in CI but can be run manually:

```
npm run test:perf
```

### Updating baselines

[Section titled “Updating baselines”](https://geminicli.com/docs/integration-tests/#updating-baselines-1)

If you intentionally change behavior that affects performance, you may need to
update the baselines. Set the `UPDATE_PERF_BASELINES` environment variable to
`true`:

```
UPDATE_PERF_BASELINES=true npm run test:perf
```

This will run the tests multiple times (with warmup), apply IQR outlier
filtering, and overwrite `perf-tests/baselines.json`. You should review the
changes and commit the updated baseline file.

### How it works

[Section titled “How it works”](https://geminicli.com/docs/integration-tests/#how-it-works-1)

The harness (`PerfTestHarness` in `packages/test-utils`):

- Measures wall-clock time using `performance.now()`.
- Measures CPU usage using `process.cpuUsage()`.
- Monitors event loop delay using `perf_hooks.monitorEventLoopDelay()`.
- Applies IQR (Interquartile Range) filtering to remove outlier samples.
- Compares against baselines with a 15% tolerance.

## Diagnostics

[Section titled “Diagnostics”](https://geminicli.com/docs/integration-tests/#diagnostics)

The integration test runner provides several options for diagnostics to help
track down test failures.

### Keeping test output

[Section titled “Keeping test output”](https://geminicli.com/docs/integration-tests/#keeping-test-output)

You can preserve the temporary files created during a test run for inspection.
This is useful for debugging issues with file system operations.

To keep the test output set the `KEEP_OUTPUT` environment variable to `true`.

```
KEEP_OUTPUT=true npm run test:integration:sandbox:none
```

When output is kept, the test runner will print the path to the unique directory
for the test run.

### Verbose output

[Section titled “Verbose output”](https://geminicli.com/docs/integration-tests/#verbose-output)

For more detailed debugging, set the `VERBOSE` environment variable to `true`.

```
VERBOSE=true npm run test:integration:sandbox:none
```

When using `VERBOSE=true` and `KEEP_OUTPUT=true` in the same command, the output
is streamed to the console and also saved to a log file within the test’s
temporary directory.

The verbose output is formatted to clearly identify the source of the logs:

```
--- TEST: <log dir>:<test-name> ---

... output from the gemini command ...

--- END TEST: <log dir>:<test-name> ---
```

## Linting and formatting

[Section titled “Linting and formatting”](https://geminicli.com/docs/integration-tests/#linting-and-formatting)

To ensure code quality and consistency, the integration test files are linted as
part of the main build process. You can also manually run the linter and
auto-fixer.

### Running the linter

[Section titled “Running the linter”](https://geminicli.com/docs/integration-tests/#running-the-linter)

To check for linting errors, run the following command:

```
npm run lint
```

You can include the `:fix` flag in the command to automatically fix any fixable
linting errors:

```
npm run lint:fix
```

## Directory structure

[Section titled “Directory structure”](https://geminicli.com/docs/integration-tests/#directory-structure)

The integration tests create a unique directory for each test run inside the
`.integration-tests` directory. Within this directory, a subdirectory is created
for each test file, and within that, a subdirectory is created for each
individual test case.

This structure makes it easy to locate the artifacts for a specific test run,
file, or case.

```
.integration-tests/

└── <run-id>/

    └── <test-file-name>.test.js/

        └── <test-case-name>/

            ├── output.log

            └── ...other test artifacts...
```

## Continuous integration

[Section titled “Continuous integration”](https://geminicli.com/docs/integration-tests/#continuous-integration)

To ensure the integration tests are always run, a GitHub Actions workflow is
defined in `.github/workflows/chained_e2e.yml`. This workflow automatically runs
the integrations tests for pull requests against the `main` branch, or when a
pull request is added to a merge queue.

The workflow runs the tests in different sandboxing environments to ensure
Gemini CLI is tested across each:

- `sandbox:none`: Runs the tests without any sandboxing.
- `sandbox:docker`: Runs the tests in a Docker container.
- `sandbox:podman`: Runs the tests in a Podman container.

Last updated: Apr 10, 2026

This website uses [cookies](https://policies.google.com/technologies/cookies) from Google to deliver and enhance the quality of its services and to analyze
traffic.

I understand.