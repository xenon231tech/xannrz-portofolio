# Installation Guide

Complete installation and setup instructions for XANNRZ Portfolio.

## Prerequisites

- Node.js 18.0 or higher
- npm 9.0 or higher (or yarn/pnpm)
- Git
- Code editor (VS Code recommended)
- Terminal/Command line

## Installation Methods

### Method 1: Clone from GitHub (Recommended)

```bash
# Clone repository
git clone https://github.com/xannrz/xannrz-portofolio.git

# Navigate to project
cd xannrz-portofolio

# Install dependencies
npm install

# Start development server
npm run dev

# Open in browser
open http://localhost:3000
```

### Method 2: Using Docker

```bash
# Build Docker image
docker build -t xannrz-portfolio .

# Run container
docker run -p 3000:3000 xannrz-portfolio

# Open in browser
open http://localhost:3000
```

### Method 3: Using Docker Compose

```bash
# Start services
docker-compose up -d

# View logs
docker-compose logs -f

# Stop services
docker-compose down
```

## Configuration

### Environment Variables

Create `.env.local` file with your settings:

```env
NEXT_PUBLIC_SITE_NAME=Xannrz Portfolio
NEXT_PUBLIC_SITE_URL=https://xannrz-portfolio.com
NEXT_PUBLIC_ANALYTICS_ID=your-analytics-id
```

### Optional Variables

```env
NEXT_PUBLIC_GITHUB_URL=https://github.com/xannrz
NEXT_PUBLIC_TWITTER_URL=https://twitter.com/xannrz
NEXT_PUBLIC_EMAIL=xannrlcs@gmail.com
```

## Development

### Available Scripts

```bash
# Start development server
npm run dev

# Build for production
npm run build

# Start production server
npm start

# Run tests
npm run test

# Run linter
npm run lint

# Format code
npm run format

# Type check
npm run type-check
```

### Project Structure

```
xannrz-portofolio/
├── src/
│   ├── components/      # React components
│   ├── pages/          # Next.js pages
│   ├── styles/         # CSS files
│   ├── utils/          # Utility functions
│   └── data/           # Data files
├── public/             # Static assets
├── docs/               # Documentation
├── .github/            # GitHub config
├── package.json        # Dependencies
└── tsconfig.json       # TypeScript config
```

## Troubleshooting

### Port Already in Use

```bash
# Use different port
npm run dev -- -p 3001
```

### Module Not Found

```bash
# Clear node_modules and reinstall
rm -rf node_modules package-lock.json
npm install
```

### Build Fails

```bash
# Clear Next.js cache
rm -rf .next

# Rebuild
npm run build
```

## Next Steps

- [Quick Start](QUICKSTART.md)
- [Development Guide](DEVELOPMENT.md)
- [Deployment](DEPLOYMENT.md)
- [Contributing](CONTRIBUTING.md)

---

**Installation complete!** 🎉
