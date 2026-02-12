[private]
_default:
    @just --list --list-submodules

# Run pre-commit on all files
lint:
    pre-commit run --all --show-diff-on-failure --color always

# Create a tag and GitHub release draft
release:
    gh release create --draft
