# PDF SKU Splitter - User Guide

## What This Tool Does

Automatically splits and combines shipment label PDFs by SKU. Upload your PDFs, confirm the detected SKUs, and download organized PDFs - one per SKU.

---

## Quick Start (3 Steps)

### 1️⃣ Upload Your PDFs
- Click the upload area or drag & drop PDF files
- You can upload multiple PDFs at once
- Files stay on your computer (not uploaded to server)

### 2️⃣ Review Detected SKUs
The tool automatically analyzes your PDFs and shows:
- **All detected SKUs** (e.g., 9998-Stickered, P002, P003)
- **Total pages** for each SKU
- **FBA labels count** (pages with SKU)
- **UPS labels count** (shipping labels)

✅ **Verify the numbers look correct**

### 3️⃣ Confirm & Download
- Click **"✓ Confirm & Continue"**
- Wait 10-30 seconds while processing
- Download individual PDFs or click **"Download All PDFs"**

---

## Example Workflow

**Your files:**
- `FBA194B667CW.pdf` (10 pages)
- `FBA194B5X5Q7.pdf` (18 pages)

**Contains:**
- Pages for SKU: 9998-Stickered
- Pages for SKU: P002
- Pages for SKU: P003

**Result after processing:**
- `9998-Stickered.pdf` (8 pages - all from both files)
- `P002.pdf` (12 pages - all from both files)
- `P003.pdf` (8 pages - all from both files)

✅ **Total: 28 pages in → 28 pages out**

---

## Understanding the Results

### Stage 1: Detection Summary
```
Total Pages Detected: 28
3 SKUs found

9998-Stickered
📄 8 total pages | 📦 4 UPS labels | 📋 4 FBA labels

P002
📄 12 total pages | 📦 6 UPS labels | 📋 6 FBA labels

P003
📄 8 total pages | 📦 4 UPS labels | 📋 4 FBA labels
```

### Stage 2: Processing Results
```
✓ Page Count Validated
Input: 28 pages → Output: 28 pages

9998-Stickered (8 pages)
📋 4 FBA labels | 📦 4 UPS labels
[Download]

P002 (12 pages)
📋 6 FBA labels | 📦 6 UPS labels
[Download]

P003 (8 pages)
📋 4 FBA labels | 📦 4 UPS labels
[Download]
```

---

## Features

### ✅ Automatic SKU Detection
- Finds SKUs by looking for "Single SKU" text in PDFs
- Counts FBA labels and UPS shipping labels separately
- Shows total pages for each SKU

### ✅ Smart Label Pairing
- Automatically pairs FBA labels with their UPS shipping labels
- UPS labels (pages without SKU) follow their FBA label
- All pages for the same SKU are combined together

### ✅ Cross-File Combining
- Combines pages from multiple PDFs
- If the same SKU appears in different PDFs, they're merged
- Final output: One PDF per SKU with all its pages

### ✅ Validation
- Confirms all input pages are in the output
- Shows warning if pages are missing
- Helps catch any processing errors

### ✅ Privacy
- All processing happens in your browser
- PDFs never uploaded to server
- No data stored anywhere

---

## Tips & Best Practices

### ✅ DO:
- Use text-based PDFs (not scanned images)
- Upload multiple PDFs at once for efficiency
- Review the detected SKUs before confirming
- Verify page counts match your expectations

### ❌ DON'T:
- Don't use scanned/image-only PDFs (won't work)
- Don't refresh page while processing (will lose progress)
- Don't close browser while downloading multiple files

---

## Troubleshooting

### Problem: "No SKUs detected"

**Cause:** PDFs don't contain "Single SKU" text

**Solution:**
1. Check if your PDFs have FBA labels with "Single SKU" lines
2. Ensure PDFs are text-based (not scanned images)
3. Use "Edit SKUs Manually" button to add SKUs manually

---

### Problem: Page count mismatch

**Example:** Input: 30 pages → Output: 28 pages

**Cause:** Some pages weren't assigned to any SKU

**Possible reasons:**
- Pages before the first SKU appears
- Pages without "Single SKU" that come before any FBA label
- Corrupted pages

**Solution:**
1. Check if the first few pages of your PDF have SKUs
2. Use "Edit SKUs Manually" to adjust
3. Try uploading PDFs in a different order

---

### Problem: Wrong SKU detected

**Example:** P003 pages showing as P002

**Cause:** Header text contains multiple SKUs

**Solution:**
1. The tool prioritizes "Single SKU" lines (most accurate)
2. This should be rare - contact support if it happens
3. Use "Edit SKUs Manually" to correct

---

### Problem: Processing is slow

**Normal:** Large PDFs (50+ pages) take 30-60 seconds

**Speed up:**
- Close other browser tabs
- Use Chrome or Edge (fastest browsers)
- Process fewer PDFs at once
- Use a desktop computer (not mobile)

---

### Problem: Can't download files

**Check:**
- Pop-up blocker isn't blocking downloads
- Browser allows multiple downloads
- You have enough disk space

**Solution:**
- Allow pop-ups for this site
- Download files one at a time instead of "Download All"
- Try a different browser

---

## FAQ

### Q: Do my PDFs get uploaded to a server?
**A:** No! All processing happens in your browser. Your PDFs stay on your computer.

### Q: Can multiple people use this tool at the same time?
**A:** Yes! Each person processes PDFs on their own computer independently.

### Q: Is there a file size limit?
**A:** No hard limit, but very large files (500+ pages) will be slower to process.

### Q: Can I use this on my phone or tablet?
**A:** Yes, but desktop is recommended for better performance.

### Q: What if I accidentally uploaded the wrong file?
**A:** Click the "Remove" button next to the file before confirming. Or refresh the page to start over.

### Q: Can I edit the SKUs after they're detected?
**A:** Yes! Click "✏️ Edit SKUs Manually" in Stage 1 to add, remove, or modify SKUs.

### Q: What happens if I close the page while processing?
**A:** You'll lose progress and need to start over. Wait for processing to complete.

### Q: Can I combine PDFs with different SKU formats?
**A:** The tool detects any text after "Single SKU". Contact your dev team for custom formats.

---

## Keyboard Shortcuts

| Shortcut | Action |
|----------|--------|
| Click upload area | Select files |
| Drag & drop | Upload files |
| Enter (in manual SKU input) | Add SKU |
| Escape | Close error messages |

---

## Browser Compatibility

### ✅ Fully Supported
- Chrome 90+ (Recommended)
- Edge 90+
- Firefox 88+
- Safari 14+

### ⚠️ Limited Support
- Mobile browsers (slower)
- Older browsers (may not work)

---

## Privacy & Security

### What We Track: Nothing
- No analytics
- No user accounts
- No login required
- No cookies

### Your Data: Stays Local
- PDFs processed in your browser
- Nothing uploaded to servers
- Nothing stored anywhere
- Completely private

---

## Getting Help

### Steps to Get Support

1. **Check this guide** - Most issues are covered above
2. **Check browser console**
   - Press F12
   - Look for error messages
   - Take a screenshot
3. **Try with a test PDF**
   - Use a small (1-2 page) PDF first
   - Verify it has "Single SKU" text
4. **Contact your team**
   - Provide screenshots
   - Describe what you expected vs what happened
   - Include any error messages

---

## Updates

This tool is continuously improved. Refresh your browser to get the latest version.

**Recent updates:**
- ✅ Automatic SKU detection
- ✅ UPS label counting
- ✅ Two-stage workflow
- ✅ Detailed label breakdowns

---

## Tool URL

Access at: **[Your deployed URL here]**

Bookmark this page for easy access!

---

**Need help?** Contact your development team.
