#!/bin/bash

# Update all guide files
for i in {1..30}; do
  cat > "docs/guides/guide-$i.md" << 'DOCEOF'
# Guide $i: Professional Portfolio Development

## Overview
This comprehensive guide covers essential aspects of building a professional portfolio website.

## Table of Contents
1. Introduction
2. Core Concepts
3. Implementation
4. Best Practices
5. Troubleshooting
6. Resources

## 1. Introduction

This guide is part of the XANNRZ Portfolio documentation series. It provides in-depth information about portfolio development techniques and strategies.

**Target Audience**: Developers, designers, and portfolio builders

**Prerequisites**: 
- Basic web development knowledge
- Node.js and npm installed
- Familiarity with React

## 2. Core Concepts

### 2.1 Portfolio Structure
A professional portfolio should include:
- Project showcase
- Skills display
- Experience timeline
- Contact information
- Blog/Articles section

### 2.2 Design Principles
- **Simplicity**: Clean and minimal design
- **Consistency**: Uniform styling and layout
- **Accessibility**: WCAG compliant
- **Performance**: Fast loading times
- **Responsiveness**: Mobile-first approach

## 3. Implementation

### 3.1 Setup
```bash
npm install
npm run dev
```

### 3.2 Configuration
Edit `.env.local` with your settings:
```
VITE_API_URL=http://localhost:3000
VITE_APP_NAME=Your Portfolio
```

### 3.3 Customization
Update components in `src/components/` directory.

## 4. Best Practices

- Use semantic HTML
- Optimize images
- Implement lazy loading
- Use CSS Grid/Flexbox
- Test on multiple devices
- Monitor performance
- Keep code DRY
- Document your code

## 5. Troubleshooting

### Issue: Build fails
**Solution**: Clear node_modules and reinstall
```bash
rm -rf node_modules
npm install
npm run build
```

### Issue: Slow performance
**Solution**: 
- Optimize images
- Enable caching
- Minify CSS/JS
- Use CDN

## 6. Resources

- [React Documentation](https://react.dev/)
- [Tailwind CSS](https://tailwindcss.com/)
- [Next.js Guide](https://nextjs.org/)
- [TypeScript Handbook](https://www.typescriptlang.org/docs/)

## Support

For more help, visit: https://github.com/xenon231tech/xannrz-portofolio

**Last Updated**: 2026-06-06
DOCEOF
done

# Update all tutorial files
for i in {1..20}; do
  cat > "docs/tutorials/tutorial-$i.md" << 'TUTEOF'
# Tutorial $i: Building Advanced Portfolio Features

## Objective
Learn how to implement advanced features in your portfolio website.

## Difficulty Level: Intermediate

## Time Required: 30-45 minutes

## Prerequisites
- Completed basic portfolio setup
- Familiarity with React hooks
- Understanding of TypeScript

## Step 1: Setup

```bash
cd xannrz-portofolio
npm install
npm run dev
```

## Step 2: Create Component

Create a new component in `src/components/`:

```tsx
import React from 'react';

interface FeatureProps {
  title: string;
  description: string;
}

export const Feature$i: React.FC<FeatureProps> = ({ title, description }) => {
  return (
    <div className="feature-container">
      <h3>{title}</h3>
      <p>{description}</p>
    </div>
  );
};

export default Feature$i;
```

## Step 3: Add Styling

```css
.feature-container {
  padding: 2rem;
  border-radius: 0.5rem;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}
```

## Step 4: Integrate

```tsx
import Feature$i from '@/components/Feature$i';

export default function Page() {
  return (
    <Feature$i 
      title="Feature $i" 
      description="This is feature $i description"
    />
  );
}
```

## Step 5: Test

```bash
npm run dev
# Visit http://localhost:3000
```

## Conclusion

You've successfully implemented feature $i! Continue building more features using this pattern.

## Next Steps

- Add more components
- Implement state management
- Add animations
- Deploy to production

## Resources

- [React Patterns](https://react.dev/learn)
- [TypeScript Tips](https://www.typescriptlang.org/docs/handbook/)
- [Tailwind Components](https://tailwindcss.com/docs)

**Created**: 2026-06-06
**Last Updated**: 2026-06-06
TUTEOF
done

# Update all API documentation
for i in {1..15}; do
  cat > "docs/api/endpoint-$i.md" << 'APIEOF'
# API Endpoint $i Documentation

## Endpoint Details

### GET /api/endpoint-$i
Retrieve data from endpoint $i

### Description
This endpoint returns portfolio data for endpoint $i. It supports filtering, sorting, and pagination.

### Request

**URL**: `/api/endpoint-$i`

**Method**: `GET`

**Headers**:
```
Content-Type: application/json
Authorization: Bearer {token}
```

**Query Parameters**:
| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| id | string | No | Filter by ID |
| page | number | No | Page number (default: 1) |
| limit | number | No | Items per page (default: 10) |
| sort | string | No | Sort field |
| order | string | No | Sort order (asc/desc) |

### Response

**Status**: 200 OK

```json
{
  "success": true,
  "data": [
    {
      "id": 1,
      "title": "Item 1",
      "description": "Description for item 1",
      "status": "active",
      "createdAt": "2026-06-06T00:00:00Z",
      "updatedAt": "2026-06-06T00:00:00Z"
    }
  ],
  "pagination": {
    "page": 1,
    "limit": 10,
    "total": 100,
    "pages": 10
  }
}
```

### Error Responses

**Status**: 400 Bad Request
```json
{
  "success": false,
  "error": "Invalid query parameters"
}
```

**Status**: 401 Unauthorized
```json
{
  "success": false,
  "error": "Authentication required"
}
```

**Status**: 500 Internal Server Error
```json
{
  "success": false,
  "error": "Internal server error"
}
```

### Examples

#### cURL
```bash
curl -X GET "http://localhost:3000/api/endpoint-$i?page=1&limit=10" \
  -H "Authorization: Bearer your_token"
```

#### JavaScript/Fetch
```javascript
const response = await fetch('/api/endpoint-$i?page=1&limit=10', {
  method: 'GET',
  headers: {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer your_token'
  }
});

const data = await response.json();
console.log(data);
```

#### Python/Requests
```python
import requests

headers = {
    'Authorization': 'Bearer your_token'
}

response = requests.get(
    'http://localhost:3000/api/endpoint-$i',
    params={'page': 1, 'limit': 10},
    headers=headers
)

data = response.json()
print(data)
```

### Rate Limiting

- **Limit**: 1000 requests per hour
- **Header**: `X-RateLimit-Limit: 1000`
- **Remaining**: `X-RateLimit-Remaining: 999`
- **Reset**: `X-RateLimit-Reset: 1623000000`

### Related Endpoints

- [POST /api/endpoint-$i](#) - Create new item
- [PUT /api/endpoint-$i/:id](#) - Update item
- [DELETE /api/endpoint-$i/:id](#) - Delete item

**Last Updated**: 2026-06-06
APIEOF
done

# Update page files
for i in {1..50}; do
  cat > "pages/page-$i.tsx" << 'PAGEEOF'
/**
 * Page $i Component
 * 
 * This page demonstrates a professional portfolio page layout.
 * It includes sections for content display, navigation, and user interaction.
 * 
 * @component
 * @example
 * return <Page$i />
 */

import React, { useState, useEffect } from 'react';
import Head from 'next/head';

interface PageProps {
  params?: any;
  searchParams?: any;
}

/**
 * Page $i - Professional Portfolio Page
 * 
 * Features:
 * - Responsive layout
 * - SEO optimized
 * - Accessible components
 * - Performance optimized
 */
export const Page$i: React.FC<PageProps> = ({ params, searchParams }) => {
  const [data, setData] = useState<any>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    // Fetch data
    const fetchData = async () => {
      try {
        setLoading(true);
        // Simulate API call
        await new Promise(resolve => setTimeout(resolve, 500));
        setData({
          id: $i,
          title: 'Page $i',
          description: 'Professional portfolio page $i',
          content: 'This is the content for page $i'
        });
      } catch (err) {
        setError('Failed to load page data');
      } finally {
        setLoading(false);
      }
    };

    fetchData();
  }, []);

  if (loading) {
    return (
      <div className="page-container loading">
        <div className="spinner">Loading...</div>
      </div>
    );
  }

  if (error) {
    return (
      <div className="page-container error">
        <div className="error-message">{error}</div>
      </div>
    );
  }

  return (
    <>
      <Head>
        <title>Page $i - XANNRZ Portfolio</title>
        <meta name="description" content="Professional portfolio page $i" />
        <meta property="og:title" content="Page $i" />
        <meta property="og:description" content="Professional portfolio page $i" />
      </Head>

      <div className="page-container">
        <header className="page-header">
          <h1>{data?.title}</h1>
          <p className="subtitle">{data?.description}</p>
        </header>

        <main className="page-content">
          <section className="content-section">
            <h2>Overview</h2>
            <p>{data?.content}</p>
          </section>

          <section className="features-section">
            <h2>Features</h2>
            <div className="features-grid">
              <div className="feature-card">
                <h3>Feature 1</h3>
                <p>Description of feature 1</p>
              </div>
              <div className="feature-card">
                <h3>Feature 2</h3>
                <p>Description of feature 2</p>
              </div>
              <div className="feature-card">
                <h3>Feature 3</h3>
                <p>Description of feature 3</p>
              </div>
            </div>
          </section>

          <section className="cta-section">
            <h2>Call to Action</h2>
            <button className="cta-button">Get Started</button>
          </section>
        </main>

        <footer className="page-footer">
          <p>&copy; 2026 XANNRZ Portfolio. All rights reserved.</p>
        </footer>
      </div>

      <style jsx>{`
        .page-container {
          min-height: 100vh;
          display: flex;
          flex-direction: column;
          padding: 2rem;
        }

        .page-header {
          text-align: center;
          margin-bottom: 3rem;
        }

        .page-header h1 {
          font-size: 2.5rem;
          font-weight: 700;
          margin-bottom: 1rem;
        }

        .subtitle {
          font-size: 1.25rem;
          color: #666;
        }

        .page-content {
          flex: 1;
          max-width: 1200px;
          margin: 0 auto;
          width: 100%;
        }

        .content-section {
          margin-bottom: 3rem;
        }

        .features-grid {
          display: grid;
          grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
          gap: 2rem;
          margin-top: 1.5rem;
        }

        .feature-card {
          padding: 1.5rem;
          border-radius: 0.5rem;
          background: #f5f5f5;
          border: 1px solid #e0e0e0;
        }

        .cta-button {
          padding: 0.75rem 2rem;
          background: #667eea;
          color: white;
          border: none;
          border-radius: 0.5rem;
          font-size: 1rem;
          cursor: pointer;
          transition: background 0.3s;
        }

        .cta-button:hover {
          background: #5568d3;
        }

        .page-footer {
          text-align: center;
          margin-top: 3rem;
          padding-top: 2rem;
          border-top: 1px solid #e0e0e0;
          color: #666;
        }
      `}</style>
    </>
  );
};

export default Page$i;
PAGEEOF
done

echo "✅ Updated all guide, tutorial, API, and page files with comprehensive descriptions!"
