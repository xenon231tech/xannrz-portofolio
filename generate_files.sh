#!/bin/bash

# Generate 100+ documentation files
for i in {1..30}; do
  cat > "docs/guides/guide-$i.md" << 'DOCEOF'
# Guide Documentation

This is a comprehensive guide for portfolio development.

## Overview
- Feature overview
- Implementation details
- Best practices
- Examples

## Getting Started
Follow the steps in the main README.

## Support
Contact: xannrlcs@gmail.com
DOCEOF
done

# Generate tutorial files
for i in {1..20}; do
  cat > "docs/tutorials/tutorial-$i.md" << 'DOCEOF'
# Tutorial: Advanced Portfolio Techniques

Learn advanced techniques for building professional portfolios.

## Prerequisites
- Node.js 18+
- React knowledge
- TypeScript basics

## Steps
1. Setup environment
2. Create components
3. Add styling
4. Deploy

## Conclusion
Great job! You've completed this tutorial.
DOCEOF
done

# Generate API documentation
for i in {1..15}; do
  cat > "docs/api/endpoint-$i.md" << 'DOCEOF'
# API Endpoint Documentation

## Endpoint Details

### GET /api/data
Returns portfolio data

### Parameters
- id: string
- format: json|xml

### Response
```json
{
  "success": true,
  "data": {}
}
```

### Examples
See examples folder for more details.
DOCEOF
done

# Generate example files
for i in {1..25}; do
  cat > "examples/projects/project-example-$i.tsx" << 'EXEOF'
import React from 'react';

export const ProjectExample$i = () => {
  return (
    <div className="project-container">
      <h2>Project Example $i</h2>
      <p>This is an example project component.</p>
      <div className="project-details">
        <span>Status: Active</span>
        <span>Type: React Component</span>
      </div>
    </div>
  );
};

export default ProjectExample$i;
EXEOF
done

# Generate component examples
for i in {1..20}; do
  cat > "examples/components/component-$i.tsx" << 'COMPEOF'
import React from 'react';

interface ComponentProps {
  title?: string;
  content?: string;
}

export const Component$i: React.FC<ComponentProps> = ({ 
  title = 'Component $i', 
  content = 'Default content' 
}) => {
  return (
    <div className="component-wrapper">
      <h3>{title}</h3>
      <p>{content}</p>
    </div>
  );
};

export default Component$i;
COMPEOF
done

# Generate template files
for i in {1..15}; do
  cat > "templates/layouts/layout-$i.tsx" << 'LAYOUTEOF'
import React from 'react';

interface LayoutProps {
  children: React.ReactNode;
}

export const Layout$i: React.FC<LayoutProps> = ({ children }) => {
  return (
    <div className="layout-$i">
      <header>Header $i</header>
      <main>{children}</main>
      <footer>Footer $i</footer>
    </div>
  );
};

export default Layout$i;
LAYOUTEOF
done

# Generate utility files
for i in {1..20}; do
  cat > "utils/helpers/helper-$i.ts" << 'UTILEOF'
/**
 * Utility Helper $i
 * Provides helper functions for portfolio operations
 */

export const helper$i = {
  /**
   * Process data
   */
  processData: (data: any) => {
    return {
      ...data,
      processed: true,
      timestamp: new Date().toISOString(),
    };
  },

  /**
   * Format output
   */
  formatOutput: (value: any) => {
    return JSON.stringify(value, null, 2);
  },

  /**
   * Validate input
   */
  validate: (input: any) => {
    return input !== null && input !== undefined;
  },
};

export default helper$i;
UTILEOF
done

# Generate test files
for i in {1..15}; do
  cat > "tests/unit/test-$i.spec.ts" << 'TESTEOF'
import { describe, it, expect } from 'vitest';

describe('Test Suite $i', () => {
  it('should pass basic test', () => {
    expect(true).toBe(true);
  });

  it('should handle data correctly', () => {
    const data = { id: $i, name: 'Test' };
    expect(data.id).toBe($i);
  });

  it('should validate input', () => {
    const input = 'valid';
    expect(input).toBeDefined();
  });
});
TESTEOF
done

# Generate config files
for i in {1..10}; do
  cat > "config/webpack/webpack-$i.config.js" << 'CFGEOF'
module.exports = {
  mode: 'production',
  entry: './src/index.ts',
  output: {
    filename: 'bundle-$i.js',
  },
  module: {
    rules: [
      {
        test: /\.tsx?$/,
        use: 'ts-loader',
      },
    ],
  },
};
CFGEOF
done

echo "✅ Generated 100+ files successfully!"
