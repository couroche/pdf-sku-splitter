# 🚀 QUICK START - Deploy to Railway in 10 Minutes

## What You'll Get
A live web app at `https://your-app.up.railway.app` that your team can use to split and combine PDFs by SKU.

---

## Before You Start

You need:
- ✅ A GitHub account (free) - [Sign up here](https://github.com/signup)
- ✅ Git installed on your computer - [Download here](https://git-scm.com/downloads)
- ✅ This deployment package (extracted)

---

## Option A: Automated Setup (Easiest - 5 minutes)

### Step 1: Run the setup script

**On Mac/Linux:**
```bash
cd pdf-sku-splitter
./deploy.sh
```

**On Windows:**
```bash
# Use Git Bash (comes with Git)
cd pdf-sku-splitter
bash deploy.sh
```

The script will:
1. Ask for your GitHub username
2. Initialize git repository
3. Guide you to create GitHub repo
4. Push code to GitHub

### Step 2: Deploy to Railway

1. Go to [railway.app](https://railway.app)
2. Click **"Login"** → **"Login with GitHub"**
3. Click **"New Project"** → **"Deploy from GitHub repo"**
4. Select `pdf-sku-splitter`
5. Wait 1-2 minutes
6. Click **Settings** → **Generate Domain**

**Done!** You have a live URL like: `https://pdf-sku-splitter.up.railway.app`

---

## Option B: Manual Setup (10 minutes)

If the script doesn't work, follow these manual steps:

### Step 1: Create GitHub Repository

1. Go to [github.com/new](https://github.com/new)
2. Repository name: `pdf-sku-splitter`
3. Make it **Private**
4. **DO NOT** check any boxes (no README, .gitignore, license)
5. Click **Create repository**

### Step 2: Push Code

```bash
cd pdf-sku-splitter

# Initialize git
git init

# Add files
git add .

# Commit
git commit -m "Initial commit"

# Add remote (replace YOUR_USERNAME)
git remote add origin https://github.com/YOUR_USERNAME/pdf-sku-splitter.git

# Push
git branch -M main
git push -u origin main
```

### Step 3: Deploy to Railway

1. Go to [railway.app](https://railway.app)
2. Click **"Login"** → **"Login with GitHub"**
3. Click **"New Project"**
4. Select **"Deploy from GitHub repo"**
5. Click **"Configure GitHub App"** (if needed)
6. Select `pdf-sku-splitter` repository
7. Click **"Install & Authorize"**
8. Select the repository from the list
9. Wait for deployment (1-2 minutes)
10. Click **Settings** → **Generate Domain**

**Done!** Your app is live!

---

## Step 3: Test Your Deployment

### Check if it's working:

1. Visit your Railway URL: `https://your-app.up.railway.app`
2. You should see the PDF SKU Splitter interface
3. Test the health check: `https://your-app.up.railway.app/health`

Should return:
```json
{"status":"ok","timestamp":"..."}
```

### Upload a test PDF:

1. Use one of your real shipment PDFs
2. Click upload or drag & drop
3. Review detected SKUs
4. Click "Confirm & Continue"
5. Download results

**If everything works, you're ready to share with your team!**

---

## Step 4: Share with Your Team

### Copy your URL:
```
https://pdf-sku-splitter-production-abc123.up.railway.app
```

### Send this message:

> **Subject: New PDF SKU Splitter Tool is Live!**
> 
> Hey team,
> 
> I've deployed our new PDF SKU Splitter tool. You can access it here:
> [YOUR RAILWAY URL]
> 
> **What it does:**
> - Automatically detects SKUs in shipment PDFs
> - Splits and combines pages by SKU
> - Creates one PDF per SKU with all pages
> - 100% secure - all processing happens in your browser
> 
> **How to use:**
> 1. Upload your PDF files
> 2. Review the detected SKUs
> 3. Click "Confirm & Continue"
> 4. Download the organized PDFs
> 
> See attached User Guide for detailed instructions.
> 
> Let me know if you have any questions!

**Attach:** `USER_GUIDE.md` from this package

---

## Troubleshooting

### Problem: "Authentication failed" when pushing to GitHub

**Solution:**
```bash
# If using HTTPS, you need a personal access token
# Generate one at: https://github.com/settings/tokens
# Use the token as your password when prompted

# Or use SSH instead:
# Generate SSH key: ssh-keygen -t ed25519 -C "your_email@example.com"
# Add to GitHub: https://github.com/settings/keys
```

### Problem: Deploy script fails on Windows

**Solution:** Use Git Bash instead of CMD/PowerShell
```bash
# Right-click in folder → "Git Bash Here"
bash deploy.sh
```

### Problem: Railway deployment failed

**Check:**
1. Railway dashboard → Your project → Deployments
2. Click on failed deployment
3. Read error logs
4. Common fix: Ensure `package.json` has correct start script

### Problem: Can't access the Railway URL

**Check:**
1. Domain is generated (Settings → Domains → Generate Domain)
2. Deployment shows green checkmark
3. Try incognito/private window
4. Check `/health` endpoint first

---

## Cost

### Railway Pricing:

**Free (Hobby):**
- 500 hours/month
- Perfect for small teams
- App sleeps after inactivity (2-3 sec wake-up)

**Pro ($5/month):**
- Always-on (no sleep)
- Faster performance
- Good for daily use

**Start with free, upgrade if needed.**

---

## Next Steps

### After deployment:

1. ✅ Bookmark the Railway URL
2. ✅ Share with team members
3. ✅ Test with real PDFs
4. ✅ Set up monitoring (optional):
   - [UptimeRobot](https://uptimerobot.com) - Free uptime checks
   - Monitor: `https://your-app.up.railway.app/health`

### To update the app:

```bash
# Make changes to code
# ... edit files ...

# Commit and push
git add .
git commit -m "Update: description"
git push

# Railway auto-deploys in 30 seconds!
```

---

## Files in This Package

- `server.js` - Express server
- `package.json` - Dependencies
- `public/index.html` - Main application
- `deploy.sh` - Automated setup script ⭐
- `RAILWAY_DEPLOY.md` - Detailed Railway guide
- `USER_GUIDE.md` - Guide for team members
- `DEPLOY_GUIDE.md` - All deployment options
- `README_NEW.md` - Project documentation

---

## Need More Help?

1. **Detailed Railway guide:** Read `RAILWAY_DEPLOY.md`
2. **Railway docs:** [docs.railway.app](https://docs.railway.app)
3. **GitHub authentication:** [docs.github.com/authentication](https://docs.github.com/en/authentication)

---

## ✅ Checklist

- [ ] GitHub account created
- [ ] Git installed
- [ ] Package extracted
- [ ] Ran `deploy.sh` OR manually pushed to GitHub
- [ ] Railway account created (via GitHub login)
- [ ] Project deployed on Railway
- [ ] Domain generated
- [ ] URL tested and working
- [ ] Team notified with URL and User Guide

---

**You're all set!** Your team can now use the tool at your Railway URL.

Questions? Check `RAILWAY_DEPLOY.md` for detailed instructions.
