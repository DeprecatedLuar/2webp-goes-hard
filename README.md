<h3 align="center">WebP goes hard</h3>

<p align="center">
  <a href="https://github.com/DeprecatedLuar/2webp-goes-hard/stargazers">
    <img src="https://img.shields.io/github/stars/DeprecatedLuar/2webp-goes-hard?style=for-the-badge&logo=github&color=1f6feb&logoColor=white&labelColor=black"/>
  </a>
  <a href="https://github.com/DeprecatedLuar/2webp-goes-hard/blob/main/LICENSE">
    <img src="https://img.shields.io/github/license/DeprecatedLuar/2webp-goes-hard?style=for-the-badge&color=green&labelColor=black"/>
  </a>
</p>

---

## **In a nutshell,** image encoding is stupid:

```bash
# Your photo folder
photos/judy-hops/
├── IMG_001.HEIC    (8.2 MB)
├── coconut.JPEG    (37.4 PB)
├── screenshot.PNG  (12.1 MB)
└── ...and 847 more files of *****
```

<h1 align="center">── Here's what I found ──</h1>

Convert entire folders to WebP format while preserving metadata and folder structure. Because smaller file sizes are better, and WebP is the future.

---

## What it does

- **Converts images** - HEIC, JPEG, PNG to WebP format
- **Preserves metadata** - EXIF data stays intact
- **Two modes** - Replace originals or copy to new location
- **Folder structure** - Maintains your organization
- **Quality settings** - Optimized for each format

<h1 align="center">─── Installation ───</h1>

### One-Liner
```bash
curl -sSL https://raw.githubusercontent.com/DeprecatedLuar/2webp-goes-hard/main/install.sh | bash
```

Requires ImageMagick (auto-installs on Ubuntu/Debian if missing)

---

## Usage

**Replace originals in-place:**
```bash
2webp ow photos/vacation-2024/
```

**Copy to new location (converted images only):**
```bash
2webp cp photos/vacation-2024/ photos-webp/
```

**Copy everything (converted + other files):**
```bash
2webp cp photos/vacation-2024/ photos-webp/ -A
```

## Why WebP?

- **50-80% smaller** file sizes than JPEG/PNG
- **Better quality** at same file size
- **Universal support** - all modern browsers and devices
- **Metadata preservation** - keeps your EXIF data

---

## Simple tool, simple purpose

Convert images to WebP. That's it. No configuration files, no complex options, just efficient image conversion that works.

Bug or feedback? Let me know what you think.

---

<p align="center">
  <a href="https://github.com/DeprecatedLuar/2webp-goes-hard/issues">
    <img src="https://img.shields.io/badge/Found%20a%20bug%3F-Report%20it!-red?style=for-the-badge&logo=github&logoColor=white&labelColor=black"/>
  </a>
</p>