# Development Guide

## Getting Started

### Prerequisites
- Node.js 18+
- npm or pnpm
- Git
- Code editor (VS Code recommended)

### Setup

```bash
git clone https://github.com/xenon231tech/xannrz-portofolio.git
cd xannrz-portofolio
npm install
npm run dev
```

### Project Structure

```
xannrz-portofolio/
├── src/
│   ├── components/
│   ├── pages/
│   ├── hooks/
│   ├── utils/
│   └── styles/
├── public/
├── docs/
├── tests/
└── package.json
```

## Development Workflow

### Creating a Component

```typescript
import React from 'react';

interface ComponentProps {
  title: string;
  children?: React.ReactNode;
}

export const Component: React.FC<ComponentProps> = ({ title, children }) => {
  return (
    <div className="component">
      <h2>{title}</h2>
      {children}
    </div>
  );
};

export default Component;
```

### Creating a Page

```typescript
import React from 'react';
import Head from 'next/head';

export default function Page() {
  return (
    <>
      <Head>
        <title>Page Title</title>
        <meta name="description" content="Page description" />
      </Head>
      <div className="page">
        <h1>Welcome</h1>
      </div>
    </>
  );
}
```

### Running Tests

```bash
npm run test
npm run test:watch
npm run test:coverage
```

### Building for Production

```bash
npm run build
npm run preview
```

## Best Practices

1. Use TypeScript for type safety
2. Write meaningful commit messages
3. Create tests for new features
4. Follow code style guidelines
5. Keep components small and focused
6. Document complex logic
7. Use semantic HTML
8. Optimize performance
9. Consider accessibility
10. Test on multiple browsers

## Debugging

### Browser DevTools
- Use Chrome DevTools for debugging
- Check Console for errors
- Use Network tab to monitor requests
- Use Performance tab to check performance

### VS Code Debugging
- Install Debugger for Chrome extension
- Set breakpoints in code
- Use Debug console to inspect variables
- Step through code execution

## Performance Optimization

1. Use code splitting
2. Optimize images
3. Implement lazy loading
4. Use caching strategies
5. Minimize bundle size
6. Use CDN for assets
7. Implement pagination
8. Use database indexing

---

**Last Updated**: 2026-06-06
**Version**: 1.0
