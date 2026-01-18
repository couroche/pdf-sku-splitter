# 🚂 Deploy to Railway - Step by Step Guide

## Prerequisites
- A GitHub account
- Git installed on your computer
- The PDF SKU Splitter package (extracted)

---

## Step 1: Push Code to GitHub (5 minutes)

### 1.1 Create GitHub Repository

1. Go to [github.com](https://github.com) and sign in
2. Click the **"+"** icon (top right) → **"New repository"**
3. Fill in details:
   - **Repository name:** `pdf-sku-splitter`
   - **Description:** `Web tool to split and combine PDFs by SKU`
   - **Visibility:** Private (recommended) or Public
   - **DO NOT** initialize with README, .gitignore, or license
4. Click **"Create repository"**

### 1.2 Push Code to GitHub

Open terminal/command prompt and run:

```bash
# Navigate to your project folder
cd /path/to/pdf-sku-splitter

# Initialize git repository
git init

# Add all files
git add .

# Commit files
git commit -m "Initial commit: PDF SKU Splitter v1.0"

# Add GitHub remote (replace YOUR_USERNAME and YOUR_REPO)
git remote add origin https://github.com/YOUR_USERNAME/pdf-sku-splitter.git

# Push to GitHub
git branch -M main
git push -u origin main
```

**✅ Checkpoint:** Your code is now on GitHub!

---

## Step 2: Deploy to Railway (3 minutes)

### 2.1 Sign Up / Log In to Railway

1. Go to [railway.app](https://railway.app)
2. Click **"Login"**
3. Choose **"Login with GitHub"**
4. Authorize Railway to access your GitHub

### 2.2 Create New Project

1. Click **"New Project"** (or **"Start a New Project"**)
2. Select **"Deploy from GitHub repo"**
3. If prompted, click **"Configure GitHub App"**
4. Select which repositories Railway can access:
   - Choose **"Only select repositories"**
   - Select `pdf-sku-splitter`
   - Click **"Install & Authorize"**

### 2.3 Select Repository

1. You should see `pdf-sku-splitter` in the list
2. Click on it to deploy

### 2.4 Wait for Deployment

Railway will automatically:
- ✅ Detect it's a Node.js app
- ✅ Run `npm install`
- ✅ Start the server with `npm start`
- ✅ Deploy to a temporary URL

**This takes about 1-2 minutes.**

You'll see logs showing:
```
Installing dependencies...
Building...
Deploying...
✓ Deployed successfully
```

---

## Step 3: Get Your Public URL (1 minute)

### 3.1 Generate Domain

1. Click on your deployed project
2. Go to **"Settings"** tab
3. Scroll to **"Domains"** section
4. Click **"Generate Domain"**
5. Railway will create a URL like: `https://pdf-sku-splitter-production-xxxx.up.railway.app`

### 3.2 Test Your Deployment

1. Click the generated URL
2. You should see the PDF SKU Splitter interface
3. Try uploading a test PDF to verify it works

**✅ SUCCESS!** Your tool is now live and accessible to your team!

---

## Step 4: Share with Your Team

### Copy your Railway URL:
```
https://pdf-sku-splitter-production-xxxx.up.railway.app
```

### Share with team members via:
- Email
- Slack
- Microsoft Teams
- Bookmark/Favorites

### What to tell them:
> "Hey team! I've deployed our PDF SKU Splitter tool. Access it here: [YOUR_URL]
> 
> Use this to automatically split and combine shipment label PDFs by SKU. Just upload your PDFs, review the detected SKUs, and download the organized files. All processing happens in your browser - completely secure and private.
> 
> See the attached User Guide for instructions."

**Attach:** `USER_GUIDE.md`

---

## 🎉 You're Done!

Your tool is now:
- ✅ Deployed and running 24/7
- ✅ Accessible via HTTPS (secure)
- ✅ Available to your entire team
- ✅ Free (Railway's free tier: 500 hours/month)

---

## 📊 Monitoring Your Deployment

### View Logs

1. Go to Railway dashboard
2. Click your project
3. Click **"Deployments"** tab
4. Click on latest deployment
5. View logs in real-time

### Check Health

Visit: `https://your-app.up.railway.app/health`

Should return:
```json
{
  "status": "ok",
  "timestamp": "2025-01-18T20:00:00.000Z"
}
```

### Check Usage

1. Go to Railway dashboard
2. Click **"Usage"** in sidebar
3. See hours used (500/month on free tier)

---

## 🔄 Making Updates

### To update your deployment:

```bash
# Make changes to your code
# ... edit files ...

# Commit changes
git add .
git commit -m "Update: description of changes"

# Push to GitHub
git push

# Railway automatically redeploys! (30 seconds)
```

---

## 🛠️ Troubleshooting

### Problem: "Deploy failed"

**Check build logs:**
1. Railway dashboard → Your project
2. Click on failed deployment
3. Read error messages

**Common fixes:**
```bash
# Ensure package.json is correct
cat package.json

# Ensure all files are committed
git status
git add .
git commit -m "Fix: add missing files"
git push
```

### Problem: "Port already in use"

**Solution:** Railway sets the PORT automatically. No action needed.

### Problem: "Can't access the URL"

**Check:**
1. Domain is generated (Settings → Domains)
2. Deployment succeeded (green checkmark)
3. Try URL in incognito/private window
4. Check `/health` endpoint

### Problem: "App is slow"

**Causes:**
- Cold start after inactivity (first request takes longer)
- Free tier limitations

**Solution:**
- Upgrade to Railway Pro ($5/month) for always-on
- Or accept 2-3 second cold start (only first request)

---

## 💰 Pricing & Limits

### Free Tier (Hobby Plan)
- ✅ 500 hours/month execution time
- ✅ $5 credit for resources
- ✅ Unlimited projects
- ⚠️ Apps sleep after inactivity (cold start)

### Pro Plan ($5/month)
- ✅ $5 credit included
- ✅ Always-on (no sleep)
- ✅ Faster performance
- ✅ Priority support

**Recommendation:** Start with free, upgrade if your team needs always-on.

---

## 🔐 Environment Variables (Optional)

If you need to set custom variables:

1. Railway dashboard → Your project
2. Click **"Variables"** tab
3. Add variables:
   - `NODE_ENV`: `production` (already set)
   - `PORT`: Automatically set by Railway

---

## 📞 Need Help?

### Railway Support
- [Railway Docs](https://docs.railway.app)
- [Railway Discord](https://discord.gg/railway)
- [Railway Status](https://railway.statuspage.io)

### App Issues
- Check browser console (F12)
- Review `USER_GUIDE.md`
- Contact your development team

---

## ✅ Deployment Checklist

- [ ] Code pushed to GitHub
- [ ] Railway project created
- [ ] Deployment successful (green checkmark)
- [ ] Domain generated
- [ ] URL accessible
- [ ] `/health` endpoint returns OK
- [ ] Test PDF upload works
- [ ] Team notified with URL and User Guide

---

## 🎯 What's Next?

### Optional Enhancements:

1. **Custom Domain** (optional)
   - Railway Settings → Domains
   - Add your own domain (e.g., `tools.yourcompany.com`)

2. **Set up monitoring** (optional)
   - [UptimeRobot](https://uptimerobot.com) - Free uptime monitoring
   - Set check interval: 5 minutes
   - Monitor URL: `https://your-app.up.railway.app/health`

3. **Backup strategy** (recommended)
   - Your GitHub repo IS your backup
   - Railway automatically tracks all deployments
   - Can rollback to any previous version

---

## 🎊 Congratulations!

You've successfully deployed your PDF SKU Splitter to production!

Your team can now:
- Upload PDFs from anywhere
- Process them automatically
- Download organized results
- All with complete privacy and security

**Deployment URL:** `https://[your-app].up.railway.app`

---

**Questions?** Check the Railway docs or contact your development team.
