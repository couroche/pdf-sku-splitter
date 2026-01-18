#!/bin/bash

# PDF SKU Splitter - Railway Deployment Setup Script
# This script helps you quickly push your code to GitHub and deploy to Railway

set -e  # Exit on error

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  PDF SKU Splitter - Railway Deployment"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Error: Git is not installed"
    echo "Please install Git first: https://git-scm.com/downloads"
    exit 1
fi

echo "✅ Git is installed"
echo ""

# Get GitHub username
echo "Step 1: GitHub Setup"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
read -p "Enter your GitHub username: " github_username

if [ -z "$github_username" ]; then
    echo "❌ Error: GitHub username is required"
    exit 1
fi

# Get repository name
read -p "Enter repository name [pdf-sku-splitter]: " repo_name
repo_name=${repo_name:-pdf-sku-splitter}

echo ""
echo "📝 Configuration:"
echo "   GitHub user: $github_username"
echo "   Repository: $repo_name"
echo ""

# Confirm
read -p "Is this correct? (y/n): " confirm
if [ "$confirm" != "y" ] && [ "$confirm" != "Y" ]; then
    echo "Cancelled."
    exit 0
fi

echo ""
echo "Step 2: Initializing Git Repository"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# Initialize git if not already initialized
if [ ! -d .git ]; then
    git init
    echo "✅ Git repository initialized"
else
    echo "✅ Git repository already exists"
fi

# Create .gitignore if it doesn't exist
if [ ! -f .gitignore ]; then
    cat > .gitignore << 'GITIGNORE'
node_modules/
.env
.DS_Store
npm-debug.log
*.log
.vscode/
.idea/
GITIGNORE
    echo "✅ Created .gitignore"
fi

echo ""
echo "Step 3: Committing Files"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

git add .
git commit -m "Initial commit: PDF SKU Splitter v1.0" 2>/dev/null || echo "✅ Files already committed"

echo "✅ Files committed"
echo ""

echo "Step 4: Pushing to GitHub"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "⚠️  IMPORTANT: Before continuing, create a repository on GitHub:"
echo ""
echo "   1. Go to: https://github.com/new"
echo "   2. Repository name: $repo_name"
echo "   3. Make it Private (recommended)"
echo "   4. DO NOT initialize with README, .gitignore, or license"
echo "   5. Click 'Create repository'"
echo ""
read -p "Press Enter when you've created the repository..."

# Set up remote
git remote remove origin 2>/dev/null || true
git remote add origin "https://github.com/$github_username/$repo_name.git"
git branch -M main

echo ""
echo "Pushing to GitHub..."
git push -u origin main

if [ $? -eq 0 ]; then
    echo "✅ Code pushed to GitHub successfully!"
else
    echo "❌ Error pushing to GitHub. Please check your credentials and try again."
    echo ""
    echo "You may need to set up GitHub authentication:"
    echo "https://docs.github.com/en/authentication"
    exit 1
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  🎉 Setup Complete!"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "Your code is now on GitHub at:"
echo "https://github.com/$github_username/$repo_name"
echo ""
echo "Next Steps - Deploy to Railway:"
echo ""
echo "1. Go to: https://railway.app"
echo "2. Click 'Login' → 'Login with GitHub'"
echo "3. Click 'New Project' → 'Deploy from GitHub repo'"
echo "4. Select: $repo_name"
echo "5. Wait for deployment (1-2 minutes)"
echo "6. Go to Settings → Generate Domain"
echo ""
echo "Your app will be live at:"
echo "https://$repo_name-production-xxxx.up.railway.app"
echo ""
echo "📖 For detailed instructions, see: RAILWAY_DEPLOY.md"
echo ""
