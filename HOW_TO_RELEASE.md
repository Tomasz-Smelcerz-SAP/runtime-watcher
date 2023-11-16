# Runtime Watcher Release Procedure

### Steps

1. Create a new tag for the release in the main branch and push it the repository. The tag should follow semantic versioning scheme, e.g: `1.2.3`
   The new tag will trigger a prowjob that creates and publishes a Docker image with a runtime watcher executable.

2. Ensure the image exists. The expected image URL is: `europe-docker.pkg.dev/kyma-project/prod/runtime-watcher-skr:<NewTag>`

3. Manually start the "Create release" GitHub Action. Provide the name of the tag created in step 1 as the input.
   The GitHub Action will find the latest (most recent) release, generate relevant changelog and publish the new release based on the provided tag name.
