TAG="0.0.1-test2"

git tag --delete ${TAG}
git push --delete origin ${TAG}
git tag ${TAG}
git push origin ${TAG}
