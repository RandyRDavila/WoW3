
#!/bin/bash

# Set a default commit message if none provided
COMMIT_MSG=${1:-"Update site"}

# Step 1: Add all changes
git add .

# Step 2: Commit with message
git commit -m "$COMMIT_MSG"

# Step 3: Push to main branch
git push origin main

# Step 4: Deploy with MkDocs
mkdocs gh-deploy --force
