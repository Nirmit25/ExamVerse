# Migration Guide

## Moving to Feature-Based Architecture

This guide helps you migrate components from the old structure to the new feature-based organization.

## Before & After

### Old Structure
```
src/components/dashboard/CollegeDashboard.tsx
src/components/flashcards/FlashcardVault.tsx
```

### New Structure
```
src/features/dashboard/components/CollegeDashboard.tsx
src/features/study/components/FlashcardVault.tsx
```

## Migration Steps

### 1. Identify Feature Domain
Determine which feature your component belongs to:
- `auth` - Authentication, sign in/up
- `dashboard` - Main dashboard views
- `study` - Flashcards, sessions, materials
- `planner` - Study planning, scheduling
- `profile` - User profile, settings
- `projects` - Project management
- `ai` - AI assistant, chat
- `shared` - Used across multiple features

### 2. Move Component Files

```bash
# Example: Moving dashboard components
mkdir src/features/dashboard/components
move src/components/dashboard/* src/features/dashboard/components/
```

### 3. Update Imports

**Old:**
```typescript
import { CollegeDashboard } from '@/components/dashboard/CollegeDashboard';
```

**New:**
```typescript
import { CollegeDashboard } from '@features/dashboard';
// or
import { CollegeDashboard } from '@features/dashboard/components/CollegeDashboard';
```

### 4. Update Feature Index

Add exports to `src/features/[feature]/index.ts`:

```typescript
export { CollegeDashboard } from './components/CollegeDashboard';
export { ExamDashboard } from './components/ExamDashboard';
```

## Feature Structure Template

```
src/features/[feature-name]/
├── components/          # Feature-specific components
│   ├── FeatureMain.tsx
│   └── FeatureDetail.tsx
├── hooks/              # Feature-specific hooks (optional)
│   └── useFeature.ts
├── types/              # Feature-specific types (optional)
│   └── types.ts
├── utils/              # Feature-specific utilities (optional)
│   └── helpers.ts
└── index.ts            # Public API exports
```

## Gradual Migration

You don't need to migrate everything at once:

1. **Phase 1**: Keep existing structure, use new path aliases
2. **Phase 2**: Move new components to feature structure
3. **Phase 3**: Gradually migrate existing components
4. **Phase 4**: Remove old structure when complete

## Path Alias Usage

```typescript
// UI Components
import { Button } from '@components/ui/button';

// Features
import { Dashboard } from '@features/dashboard';
import { AuthProvider } from '@features/auth';

// Hooks
import { useStudySessions } from '@hooks/useStudySessions';

// Core utilities
import { formatDate } from '@core/utils/date';

// Supabase
import { supabase } from '@/integrations/supabase/client';
```

## Best Practices

1. **Keep features independent** - Avoid circular dependencies
2. **Use index files** - Export public API only
3. **Colocate related code** - Keep components, hooks, and types together
4. **Shared code in core** - Put truly shared utilities in `/core`
5. **UI components stay separate** - Keep Shadcn UI in `/components/ui`

## Example Migration

### Before
```typescript
// src/components/dashboard/CollegeDashboard.tsx
import { Card } from '@/components/ui/card';
import { useUserStats } from '@/hooks/useUserStats';

export const CollegeDashboard = () => {
  // component code
};
```

### After
```typescript
// src/features/dashboard/components/CollegeDashboard.tsx
import { Card } from '@components/ui/card';
import { useUserStats } from '@hooks/useUserStats';

export const CollegeDashboard = () => {
  // component code
};

// src/features/dashboard/index.ts
export { CollegeDashboard } from './components/CollegeDashboard';
```

## Need Help?

Check `PROJECT_STRUCTURE.md` for the complete architecture overview.
