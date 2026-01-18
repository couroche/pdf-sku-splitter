# PDF SKU Splitter 📦

**Automatically split and combine PDF shipment labels by SKU**

A web-based tool that detects SKUs in PDF files, then splits and combines pages across multiple PDFs by SKU. Perfect for organizing Amazon FBA shipment labels.

![Version](https://img.shields.io/badge/version-1.0.0-blue)
![License](https://img.shields.io/badge/license-MIT-green)
![Node](https://img.shields.io/badge/node-%3E%3D16.0.0-brightgreen)

---

## ✨ Features

- 🔍 **Automatic SKU Detection** - Finds SKUs by parsing "Single SKU" text
- 📊 **Detailed Analysis** - Shows total pages, FBA labels, and UPS labels per SKU
- 🔄 **Cross-File Combining** - Merges pages from multiple PDFs by SKU
- ✅ **Smart Validation** - Verifies all input pages match output pages
- 🔒 **100% Private** - All processing happens in browser, no uploads
- 🚀 **Zero Setup** - Share URL, team members can use instantly

---

## 🎯 Use Case

**Problem:** You have multiple PDF files with shipment labels for different SKUs mixed together.

**Example:**
```
Input Files:
├── FBA194B667CW.pdf (10 pages)
│   ├── Box 1: 9998-Stickered + UPS label
│   ├── Box 2: 9998-Stickered + UPS label
│   ├── Box 3: P002 + UPS label
│   ├── Box 4: P002 + UPS label
│   └── Box 5: P003 + UPS label
└── FBA194B5X5Q7.pdf (18 pages)
    └── [More mixed SKUs...]

Output Files (After Processing):
├── 9998-Stickered.pdf (8 pages - combined from both files)
├── P002.pdf (12 pages - combined from both files)
└── P003.pdf (8 pages - combined from both files)
```

---

## 🚀 Quick Start

### For Users

1. Go to your deployed URL (e.g., `https://your-app.railway.app`)
2. Upload PDF files
3. Review detected SKUs
4. Click "Confirm & Continue"
5. Download organized PDFs

**[See User Guide](USER_GUIDE.md) for detailed instructions**

### For Developers

```bash
# Clone repository
git clone https://github.com/YOUR_USERNAME/pdf-sku-splitter.git
cd pdf-sku-splitter

# Install dependencies
npm install

# Start server
npm start

# Access at http://localhost:3000
```

**[See Deployment Guide](DEPLOY_GUIDE.md) for hosting options**

---

## 📖 Documentation

- **[Deployment Guide](DEPLOY_GUIDE.md)** - How to deploy to Railway, Render, Vercel, etc.
- **[User Guide](USER_GUIDE.md)** - Step-by-step guide for team members
- **[API Documentation](#api)** - Server endpoints

---

## 🏗️ Architecture

### Tech Stack
- **Frontend:** Pure JavaScript, HTML, CSS
- **PDF Processing:** pdf.js (Mozilla) + pdf-lib
- **Backend:** Node.js + Express (static file server only)

### How It Works

```
┌─────────────┐
│   Browser   │
│             │
│  ┌────────┐ │
│  │ pdf.js │ │ ← Text extraction
│  └────────┘ │
│             │
│  ┌────────┐ │
│  │pdf-lib │ │ ← PDF manipulation
│  └────────┘ │
└─────────────┘
      ↑
      │ (Only initial HTML file)
      │
┌─────────────┐
│   Server    │
│  (Express)  │
└─────────────┘
```

**Key Points:**
- Server only serves HTML file once
- All PDF processing happens client-side
- No file uploads, no backend processing
- Complete privacy and security

---

## 🔧 Development

### Prerequisites
- Node.js 16 or higher
- npm or yarn

### Setup

```bash
# Install dependencies
npm install

# Run in development mode (auto-reload)
npm run dev

# Run in production mode
npm start
```

### Project Structure

```
pdf-sku-splitter/
├── public/
│   └── index.html          # Main application
├── server.js               # Express server
├── package.json            # Dependencies
├── Dockerfile              # Container config
├── docker-compose.yml      # Docker Compose config
├── railway.json            # Railway config
├── render.yaml             # Render config
├── DEPLOY_GUIDE.md         # Deployment instructions
├── USER_GUIDE.md           # User documentation
└── README.md               # This file
```

---

## 🌐 Deployment

### Option 1: Railway (Recommended)
```bash
# One-click deploy
railway up
```
[Detailed Railway instructions →](DEPLOY_GUIDE.md#step-2-deploy-to-railway-recommended)

### Option 2: Render
[Deploy to Render →](DEPLOY_GUIDE.md#option-a-rendercom)

### Option 3: Vercel
[Deploy to Vercel →](DEPLOY_GUIDE.md#option-b-vercel)

### Option 4: Docker
```bash
docker build -t pdf-sku-splitter .
docker run -p 3000:3000 pdf-sku-splitter
```

---

## 🔐 Security & Privacy

### Data Privacy
- ✅ All PDF processing happens in browser
- ✅ No files uploaded to server
- ✅ No data storage or logging
- ✅ No tracking or analytics

### Browser Security
- ✅ HTTPS required (automatic on Railway/Render/Vercel)
- ✅ Content Security Policy headers
- ✅ No third-party scripts (except CDN libraries)

---

## 📊 Performance

### Processing Speed
- Small PDFs (10-20 pages): ~5 seconds
- Medium PDFs (50-100 pages): ~20 seconds
- Large PDFs (200+ pages): ~60 seconds

**Note:** Processing happens on user's device, so speed depends on their computer.

### Browser Compatibility
| Browser | Version | Status |
|---------|---------|--------|
| Chrome | 90+ | ✅ Recommended |
| Edge | 90+ | ✅ Recommended |
| Firefox | 88+ | ✅ Supported |
| Safari | 14+ | ✅ Supported |
| Mobile | Latest | ⚠️ Slower |

---

## 🐛 Troubleshooting

### Common Issues

**Problem:** SKUs not detected
- **Solution:** Ensure PDFs contain "Single SKU" text (not scanned images)

**Problem:** Page count mismatch
- **Solution:** Check if there are pages before first SKU appears

**Problem:** Slow processing
- **Solution:** Use desktop Chrome, close other tabs, process fewer files at once

[See full troubleshooting guide →](USER_GUIDE.md#troubleshooting)

---

## 🤝 Contributing

This is an internal tool, but improvements are welcome!

### Feature Requests
- Open an issue describing the feature
- Explain the use case
- Provide example PDFs if relevant

### Bug Reports
- Include browser and version
- Provide steps to reproduce
- Share error messages from console (F12)

---

## 📝 API

### Health Check
```bash
GET /health
```

**Response:**
```json
{
  "status": "ok",
  "timestamp": "2025-01-18T20:00:00.000Z"
}
```

### Static Files
```bash
GET /
```
Returns the main application HTML file.

---

## 🔄 Updates

To update your deployment:

```bash
git pull origin main
git push  # Auto-deploys on Railway/Render/Vercel
```

---

## 📜 License

MIT License - See [LICENSE](LICENSE) file for details

---

## 👥 Team

Built for efficient PDF processing workflows.

---

## 📞 Support

- **User Guide:** [USER_GUIDE.md](USER_GUIDE.md)
- **Deployment:** [DEPLOY_GUIDE.md](DEPLOY_GUIDE.md)
- **Issues:** Contact your development team

---

## 🎯 Roadmap

Potential future enhancements:
- [ ] Support for scanned/image PDFs (OCR)
- [ ] Custom SKU format configuration
- [ ] Batch processing API
- [ ] Docker image on Docker Hub
- [ ] Helm chart for Kubernetes

---

**Made with ❤️ for efficient operations**
