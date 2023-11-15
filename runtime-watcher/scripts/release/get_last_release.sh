#!/usr/bin/env bash

set -o nounset
set -o pipefail

#GITHUB_URL=https://api.github.com/repos/kyma-project/runtime-watcher
GITHUB_URL=https://api.github.com/repos/Tomasz-Smelcerz-SAP/runtime-watcher

CURL_RESPONSE=$(curl -L \
  -s \
  --fail-with-body \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  "${GITHUB_URL}"/releases/latest) 

CURL_EXIT_CODE=$?

if [[ ${CURL_EXIT_CODE} == 0 ]]; then
	#echo "${CURL_RESPONSE}" | jq .id
	echo "${CURL_RESPONSE}" | jq .tag_name
fi
exit ${CURL_EXIT_CODE}
