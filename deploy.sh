#!/bin/bash
# ============================================================
# Green Elite PG — One-shot deployment helper
# Usage: ./deploy.sh <your-github-username>
# ============================================================
set -e

GH_USER="${1:-}"

if [ -z "$GH_USER" ]; then
  echo ""
  echo "USAGE:  ./deploy.sh <your-github-username>"
  echo "EXAMPLE: ./deploy.sh nandhakumarpkr"
  echo ""
  echo "Before running this script:"
  echo "  1. Go to https://github.com/new"
  echo "  2. Create a new EMPTY repo named 'greenelitepg' (no README, no .gitignore)"
  echo "  3. Then run this script with your GitHub username."
  echo ""
  exit 1
fi

cd "$(dirname "$0")"

# Ensure we're in a git repo
if [ ! -d .git ]; then
  echo "→ Initializing git repo..."
  git init -b main
  git config user.name "Green Elite PG"
  git config user.email "info@greenelitepg.com"
fi

# Add remote if not already set
if ! git remote get-url origin >/dev/null 2>&1; then
  echo "→ Adding remote: https://github.com/$GH_USER/greenelitepg.git"
  git remote add origin "https://github.com/$GH_USER/greenelitepg.git"
fi

# Stage everything and commit any changes
git add .
if ! git diff --cached --quiet; then
  echo "→ Committing local changes..."
  git commit -m "Update website"
else
  echo "→ No local changes to commit."
fi

git branch -M main

echo ""
echo "→ Pushing to GitHub..."
echo "   (If this is the first push, you'll be asked for your GitHub credentials /"
echo "    a Personal Access Token. Create one at: https://github.com/settings/tokens)"
echo ""

git push -u origin main

echo ""
echo "✅ Pushed to GitHub!"
echo ""
echo "NEXT — deploy to Vercel (1-minute, no command line needed):"
echo "  1. Go to:  https://vercel.com/new"
echo "  2. Sign in with GitHub."
echo "  3. Import the repo 'greenelitepg'."
echo "  4. Leave all build settings empty → click 'Deploy'."
echo "  5. In Vercel → Settings → Domains → add 'greenelitepg.com'."
echo ""
