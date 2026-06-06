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
