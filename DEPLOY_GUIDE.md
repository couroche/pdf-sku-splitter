# PDF SKU Splitter - Complete Deployment Guide

## 🎯 Overview

This tool allows your team to automatically split and combine PDF shipment labels by SKU. All processing happens in the browser - no files are uploaded to any server.

## ⚡ Quick Deploy (5 Minutes)

### Step 1: Push to GitHub

```bash
# Initialize git repository
git init
git add .
git commit -m "Initial commit: PDF SKU Splitter"

# Create repository on GitHub, then:
git remote add origin https://github.com/YOUR_USERNAME/pdf-sku-splitter.git
git branch -M main
git push -u origin main
```

### Step 2: Deploy to Railway (Recommended)

1. Go to [railway.app](https://railway.app)
2. Click **"Login"** → Sign in with GitHub
3. Click **"New Project"**
4. Select **"Deploy from GitHub repo"**
5. Choose your `pdf-sku-splitter` repository
6. Railway automatically detects Node.js and deploys!
7. Click **"Settings"** → **"Generate Domain"** to get your public URL

**That's it!** Your team can now access the tool at `https://your-app.up.railway.app`

---

## 🌐 Alternative Deployment Options

### Option A: Render.com

**Free Tier:** Yes | **SSL:** Automatic | **Difficulty:** Easy

1. Go to [render.com](https://render.com)
2. Click **"New"** → **"Web Service"**
3. Connect your GitHub repository
4. Render auto-detects settings from `render.yaml`
5. Click **"Create Web Service"**

**URL:** `https://pdf-sku-splitter.onrender.com`

**Note:** Free tier spins down after 15 min of inactivity (cold start ~30 seconds)

---

### Option B: Vercel

**Free Tier:** Yes | **SSL:** Automatic | **Difficulty:** Easiest

1. Go to [vercel.com](https://vercel.com)
2. Click **"Import Project"**
3. Import from GitHub
4. Click **"Deploy"**

**URL:** `https://pdf-sku-splitter.vercel.app`

**Best for:** Simplest deployment, unlimited bandwidth

---

### Option C: Docker + Your Own Server

**Free Tier:** No (requires server) | **SSL:** Manual | **Difficulty:** Advanced

```bash
# Build Docker image
docker build -t pdf-sku-splitter .

# Run container
docker run -d -p 3000:3000 --name pdf-sku-splitter pdf-sku-splitter

# With Docker Compose
docker-compose up -d
```

Create `docker-compose.yml`:
```yaml
version: '3.8'
services:
  app:
    build: .
    ports:
      - "3000:3000"
    restart: unless-stopped
    healthcheck:
      test: ["CMD", "curl", "-f", "http://localhost:3000/health"]
      interval: 30s
      timeout: 3s
      retries: 3
```

---

### Option D: AWS EC2 / DigitalOcean / Linode

**Free Tier:** Varies | **SSL:** Manual | **Difficulty:** Advanced

1. SSH into your server
2. Install Node.js 18+:
   ```bash
   curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
   sudo apt-get install -y nodejs
   ```
3. Clone repository:
   ```bash
   git clone https://github.com/YOUR_USERNAME/pdf-sku-splitter.git
   cd pdf-sku-splitter
   ```
4. Install and run:
   ```bash
   npm install
   npm start
   ```
5. Use PM2 for production:
   ```bash
   sudo npm install -g pm2
   pm2 start server.js --name pdf-sku-splitter
   pm2 startup
   pm2 save
   ```
6. Set up Nginx reverse proxy (optional but recommended)
7. Configure SSL with Let's Encrypt/Certbot

---

## 🔧 Local Development

```bash
# Install dependencies
npm install

# Start development server (with auto-reload)
npm run dev

# Or start production server
npm start
```

Access at: `http://localhost:3000`

---

## 🛡️ Security & Privacy

### How It Works
- **100% Client-Side Processing**: All PDF manipulation happens in the browser using JavaScript
- **No File Uploads**: PDFs never leave the user's device
- **No Backend Storage**: Server only serves the HTML file
- **No Tracking**: No analytics or user tracking

### Libraries Used
- `pdf.js` (Mozilla) - PDF text extraction
- `pdf-lib` - PDF manipulation
- Both run entirely in the browser

### Data Flow
```
User's Computer → Browser → PDF Processing → Download
                    ↑
              Server only serves
              the HTML file once
```

---

## 📊 Monitoring & Health Checks

### Health Check Endpoint
```bash
curl https://your-app.railway.app/health
```

Response:
```json
{
  "status": "ok",
  "timestamp": "2025-01-18T16:00:00.000Z"
}
```

### Uptime Monitoring (Optional)
Set up free monitoring with:
- [UptimeRobot](https://uptimerobot.com) - Free for 50 monitors
- [Cronitor](https://cronitor.io) - Free tier available
- Railway/Render built-in monitoring

---

## 👥 Team Access

### Share the URL
Once deployed, share the URL with your team:
```
https://pdf-sku-splitter.railway.app
```

### No Setup Required
Team members just need:
- ✅ A modern web browser (Chrome, Firefox, Safari, Edge)
- ✅ The URL
- ❌ No installation
- ❌ No account creation
- ❌ No API keys

### Browser Requirements
- Chrome/Edge 90+
- Firefox 88+
- Safari 14+

---

## 🐛 Troubleshooting

### App Not Starting

**Check logs:**
```bash
# Railway
railway logs

# Render
Check "Logs" tab in Render dashboard

# Local
npm start (errors will show in console)
```

**Common issues:**
- Port conflict: Change `PORT` in environment variables
- Node version: Requires Node.js 16+
- Missing dependencies: Run `npm install`

### SKUs Not Detected

**Checklist:**
- ✅ PDFs contain "Single SKU" text lines
- ✅ SKU appears on FBA label pages
- ✅ Format matches: `Single SKU` followed by the SKU code

**Debug in browser:**
- Open Developer Console (F12)
- Check for errors in console
- Look for "[DEBUG]" messages

### Page Count Mismatch

**Causes:**
- Pages before first SKU (not assigned to any SKU)
- PDFs without "Single SKU" text
- Corrupted or image-only PDFs

**Solution:**
- Use "Edit SKUs Manually" option
- Ensure PDFs are text-based (not scanned images)

### Slow Processing

**Normal behavior:**
- Large PDFs (100+ pages) take 30-60 seconds
- Processing happens in browser (uses user's CPU)

**Optimization:**
- Close other browser tabs
- Use desktop Chrome for best performance
- Split very large PDFs before processing

---

## 🔄 Updates & Maintenance

### Update Deployment

```bash
# Make changes locally
git add .
git commit -m "Update: description of changes"
git push

# Railway/Render/Vercel automatically redeploy
```

### Manual Restart

**Railway:**
```bash
railway restart
```

**Render:**
Dashboard → Manual Deploy → Deploy Latest Commit

**Docker:**
```bash
docker restart pdf-sku-splitter
```

---

## 📈 Cost Estimates

### Free Tiers

| Platform | Cost | Limits |
|----------|------|--------|
| Railway | FREE | 500 hours/month, then $5/month |
| Render | FREE | Sleeps after 15 min idle |
| Vercel | FREE | 100GB bandwidth/month |

### Paid Options (if needed)

| Platform | Cost | Benefits |
|----------|------|----------|
| Railway Pro | $5/mo | No sleep, better performance |
| Render Starter | $7/mo | Always-on, no cold starts |
| AWS EC2 t3.micro | ~$8/mo | Full control |

**Recommendation:** Start with free tier, upgrade if needed

---

## 🎓 How to Use (For Team Members)

### Step 1: Upload PDFs
- Click or drag PDF files into the upload area
- Can upload multiple PDFs at once

### Step 2: Review Detected SKUs
- App automatically detects all SKUs
- Shows breakdown: Total pages, FBA labels, UPS labels
- Verify counts are correct

### Step 3: Confirm & Process
- Click "✓ Confirm & Continue"
- Processing starts automatically
- Wait for completion (usually 10-30 seconds)

### Step 4: Download Results
- Each SKU gets its own combined PDF
- Click individual "Download" buttons
- Or click "Download All PDFs" for all at once

### Tips
- ✅ Only text-based PDFs work (not scanned images)
- ✅ PDFs must have "Single SKU" text
- ✅ Processing happens locally - your files stay private
- ✅ No file size limits (but large files are slower)

---

## 📞 Support

### Common Questions

**Q: Are my PDFs uploaded to a server?**
A: No! All processing happens in your browser. PDFs never leave your computer.

**Q: Can I use this on mobile?**
A: Yes, but desktop is recommended for better performance.

**Q: What if I have different PDF formats?**
A: Contact your development team to add support for new formats.

**Q: Can multiple people use this at once?**
A: Yes! Each user processes PDFs on their own device.

### Get Help

1. Check browser console (F12) for error messages
2. Try with a single small PDF first
3. Ensure PDFs are text-based (not scanned images)
4. Contact your development team

---

## 🔐 Environment Variables

| Variable | Default | Description |
|----------|---------|-------------|
| PORT | 3000 | Server port |
| NODE_ENV | production | Environment mode |

Set in your platform:
- **Railway**: Settings → Variables
- **Render**: Environment → Environment Variables
- **Docker**: `-e PORT=3000`

---

## 📝 License

MIT License - Free to use and modify

---

## 🚀 Quick Reference

```bash
# Clone
git clone https://github.com/YOUR_USERNAME/pdf-sku-splitter.git

# Install
npm install

# Run
npm start

# Deploy
git push  # Auto-deploys on Railway/Render/Vercel
```

**Questions?** Contact your development team.
