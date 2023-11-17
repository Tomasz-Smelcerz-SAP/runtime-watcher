# Runtime Watcher Release Procedure

### Steps

1. Checkout the main branch
2. Create a new tag for the release in the main branch and push it the repository. The tag should follow semantic versioning scheme, e.g: `1.2.3`
   The new tag will trigger a prowjob that creates and publishes a Docker image with a runtime watcher executable.
   The new tag will also trigger a release workflow.

Note 1: The release workflow will wait for a docker image to be published. If the image is not available within a configured time (15 minutes), the workflow will fail. In that case you need to manually re-run it once the docker image is ready. The expected image URL is: `europe-docker.pkg.dev/kyma-project/prod/runtime-watcher-skr:<NewTag>`

Note 2: If you want to create a tag without triggering a release, just ensure the tag does not match a semantic versioning scheme.

