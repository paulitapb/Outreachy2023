cd nx-guides
source nx-guides-dev/bin/activate
# The following commands finds ALL the .md files in the repository
find content/ -name "*.md" -exec jupytext --to notebook {} \;
# Run pre-commit on all files
pre-commit run --all-files --show-diff-on-failure --color always
# Convert all the new "cleaned" ipynb files to myst
find content/ -name "*.ipynb" -exec jupytext --to md:myst {} \;
# Remove the .ipynb files
find content/ -name "*.ipynb" -exec rm {} \;
