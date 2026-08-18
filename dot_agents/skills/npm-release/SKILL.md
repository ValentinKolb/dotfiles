---
name: npm-release
description: Release npm packages safely and verify the published result. Use this skill whenever a user asks to publish, release, version, tag, deprecate, or move an npm package; configure npm Trusted Publishing or provenance; prepare a first release; or diagnose a failed npm release. Follow the repository's existing release workflow, preserve unrelated changes, and finish with registry and fresh-consumer verification.
---

# npm release

Release the package through the repository's existing process. Prefer npm
Trusted Publishing from CI over long-lived npm tokens or routine local
publishing.

## 1. Inspect the release contract

Before changing anything, read:

- repository instructions and `git status`
- `package.json`, lockfile, package-manager field, and release scripts
- publish workflows and their tag or branch triggers
- workspace configuration when the repository is a monorepo
- latest Git tags, recent CI runs, and the current npm registry version

Identify the exact package, release version, source commit, dist-tag, and
publishing path. Do not assume the root package is publishable or that every
workspace should be released.

Preserve unrelated work. Never clean, reset, overwrite, or include changes that
do not belong to the release.

## 2. Choose the version

Follow the project's established versioning policy. When no policy exists, use
SemVer:

- patch: compatible fixes
- minor: compatible features
- major: breaking public API changes

For `0.x` packages, inspect prior releases instead of guessing how the project
maps breaking changes to versions. Ask the user when the intended version
cannot be established from the request or repository.

Verify that neither the Git tag nor the npm package version already exists.

## 3. Verify the package

Use the repository's package manager and existing scripts. At minimum run the
relevant:

```sh
<package-manager> run typecheck
<package-manager> test
<package-manager> run build
npm pack --dry-run
```

Inspect the pack output for the expected package name, version, entry points,
types, binary files, README, license, and required runtime assets. Confirm that
secrets, tests, generated junk, and unrelated files are absent.

For workspaces, run checks and packing from the package that will actually be
published.

## 4. Publish through the existing path

### Trusted Publishing

When the repository already publishes from GitHub Actions:

1. Commit only the intended release changes.
2. Push the release commit and require the exact-commit CI run to pass.
3. Create the expected version tag on that commit.
4. Push the tag and watch the release workflow to completion.

The publish job should have `id-token: write`, use a supported npm CLI, and run
`npm publish --provenance --access public` without an npm token.

Do not run a second local publish when the workflow owns publishing.

### First package release

npm can only configure Trusted Publishing after the package exists. For a new
package:

1. Publish one prerelease locally from a clean archive, for example
   `1.0.0-rc.0` under `next`.
2. Use npm web authentication when prompted; do not request or expose tokens.
3. Configure trust for the exact GitHub repository and workflow file.
4. Publish the stable version through the tag workflow.
5. Remove the temporary `next` dist-tag after stable verification.

Use this bootstrap only when needed. Do not replace an already configured
Trusted Publishing flow.

### Local publishing

Publish locally only when the user explicitly requests it or the bootstrap
requires it. Publish from a clean commit archive, not a dirty working tree.
Show the package name, version, tag, and tarball contents before the irreversible
command.

## 5. Verify the release

A green workflow is necessary but not sufficient. Verify:

```sh
npm view <package> version dist-tags repository dist.tarball dist.integrity dist.attestations --json
```

Then:

- confirm the release tag points to the intended commit
- confirm npm `latest` or the requested dist-tag points to the new version
- confirm provenance exists for Trusted Publishing releases
- install the exact version in a fresh temporary consumer
- import every public entry point and run the CLI binary when one exists
- verify container images or other release artifacts when the workflow owns them

Registry metadata can briefly propagate at different speeds. Retry a fresh
consumer after confirming the canonical packument and tarball rather than
changing a correct release immediately.

## 6. Report

State:

- package and released version
- source commit and Git tag
- publish path used
- checks and consumer smoke tests performed
- registry, provenance, and artifact results
- any deprecated package or removed temporary dist-tag
- anything not verified

Never claim a release succeeded based only on a local build, a pushed tag, or a
green test job.
