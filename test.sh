AUTHOR=yabirgba
SOURCE_BRANCH=compound-tests

git remote add author https://github.com/$AUTHOR/test-caching.git

git fetch author $SOURCE_BRANCH && git checkout -b $SOURCE_BRANCH author/$SOURCE_BRANCH || exit 0

echo "Happy ending!"
git checkout develop && git branch -D $SOURCE_BRANCH
