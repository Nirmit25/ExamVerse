# Development Cheatsheet

## Quick Commands

```bash
# Start dev server
npm run dev

# Build for production
npm run build

# Preview production build
npm run preview

# Run linter
npm run lint

# Install new package
npm install package-name

# Update dependencies
npm update
```

## Path Aliases

```typescript
// Features
import { Dashboard } from '@features/dashboard';
import { AuthProvider } from '@features/auth';
import { AIAssistant } from '@features/ai';

// Components
import { Button } from '@components/ui/button';
import { Card } from '@components/ui/card';

// Hooks
import { useStudySessions } from '@hooks/useStudySessions';
import { useFlashcards } from '@hooks/useFlashcards';

// Core
import { config } from '@core/config';
import { formatDate } from '@core/utils';

// Direct imports
import { supabase } from '@/integrations/supabase/client';
```

## Common Patterns

### Creating a New Feature

```bash
# 1. Create feature directory
mkdir src/features/my-feature
mkdir src/features/my-feature/components

# 2. Create index file
# src/features/my-feature/index.ts
export { MyComponent } from './components/MyComponent';

# 3. Create component
# src/features/my-feature/components/MyComponent.tsx
export const MyComponent = () => {
  return <div>My Feature</div>;
};
```

### Using Supabase

```typescript
import { supabase } from '@/integrations/supabase/client';

// Query data
const { data, error } = await supabase
  .from('table_name')
  .select('*');

// Insert data
const { data, error } = await supabase
  .from('table_name')
  .insert({ column: 'value' });
```

### Using React Query

```typescript
import { useQuery, useMutation } from '@tanstack/react-query';

// Fetch data
const { data, isLoading } = useQuery({
  queryKey: ['key'],
  queryFn: async () => {
    // fetch logic
  },
});

// Mutate data
const mutation = useMutation({
  mutationFn: async (data) => {
    // mutation logic
  },
});
```

### Form with React Hook Form + Zod

```typescript
import { useForm } from 'react-hook-form';
import { zodResolver } from '@hookform/resolvers/zod';
import { z } from 'zod';

const schema = z.object({
  name: z.string().min(1),
});

const form = useForm({
  resolver: zodResolver(schema),
});
```

## Useful Shortcuts

- `Ctrl + C` - Stop dev server
- `r + Enter` - Restart dev server
- `h + Enter` - Show Vite help
- `o + Enter` - Open in browser
- `q + Enter` - Quit

## Environment Variables

Create `.env` file:
```env
VITE_SUPABASE_URL=your_url
VITE_SUPABASE_ANON_KEY=your_key
```

Access in code:
```typescript
const url = import.meta.env.VITE_SUPABASE_URL;
```

## Debugging

```typescript
// Development only logs
if (import.meta.env.DEV) {
  console.log('Debug info');
}

// Check environment
console.log(import.meta.env.MODE); // 'development' or 'production'
```

## Common Issues

### Port already in use
```bash
# Change port in vite.config.ts
server: {
  port: 3000, // Change from 8080
}
```

### Module not found
```bash
# Clear cache and reinstall
rm -rf node_modules package-lock.json
npm install
```

### TypeScript errors
```bash
# Restart TypeScript server in your IDE
# Or check tsconfig.json paths
```

## Project URLs

- **Local**: http://localhost:8080/
- **Network**: http://172.20.10.3:8080/
- **Landing**: http://localhost:8080/landing
- **Auth**: http://localhost:8080/auth

## File Structure Tips

```
Feature Module:
├── components/     # UI components
├── hooks/         # Custom hooks (optional)
├── types/         # TypeScript types (optional)
├── utils/         # Helper functions (optional)
└── index.ts       # Public exports

Keep it simple - only add subdirectories when needed!
```
