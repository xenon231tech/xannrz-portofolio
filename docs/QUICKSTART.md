# Quick Start Guide

Get started with XANNRZ Portfolio in 2 minutes!

## 1. Visit Online (Easiest)

Simply visit: https://xannrz-portfolio-dolmmcs8.manus.space/

No installation needed!

## 2. Local Setup

### Requirements
- Node.js 18+
- npm or yarn
- Git

### Steps

```bash
# Clone repository
git clone https://github.com/xannrz/xannrz-portofolio.git
cd xannrz-portofolio

# Install dependencies
npm install

# Start development server
npm run dev

# Open browser
open http://localhost:3000
```

## 3. Customize

### Update Your Information
1. Edit `src/data/profile.json` with your details
2. Update `src/data/projects.json` with your projects
3. Modify `src/data/skills.json` with your skills
4. Add your images to `public/images/`

### Change Theme
1. Edit `tailwind.config.js` for colors
2. Modify `src/styles/globals.css` for fonts
3. Update CSS variables in `src/styles/variables.css`

## 4. Deploy

### Deploy to Vercel (Recommended)

```bash
npm run build
vercel deploy --prod
```

### Deploy to GitHub Pages

```bash
npm run build
npm run export
git add .
git commit -m "Deploy to GitHub Pages"
git push origin main
```

## 5. Next Steps

- Read [Installation Guide](INSTALLATION.md)
- Check [Features](FEATURES.md)
- View [Documentation](README.md)
- Join [Community](COMMUNITY.md)

---

**That's it! You're ready to go!** 🚀
