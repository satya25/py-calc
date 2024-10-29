#!/bin/bash

# Clean up Python cache files
echo "Removing __pycache__ directories..."
find . -name '__pycache__' -type d -exec rm -r {} +

# Remove pytest cache
echo "Removing .pytest_cache directories..."
rm -rf .pytest_cache/

# Clear Poetry cache
echo "Clearing Poetry cache..."
poetry cache clear pypi --all

# Remove build artifacts
echo "Removing build artifacts..."
rm -rf dist/ *.egg-info

echo "Cleanup completed!"