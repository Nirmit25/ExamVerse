# Project Structure

## Overview
This is a React + TypeScript + Vite application with Supabase backend for a study/learning management platform.

## Directory Structure

```
src/
├── components/          # Legacy component structure (to be migrated)
│   ├── ui/             # Shadcn UI components
│   ├── auth/           # Authentication components
│   ├── dashboard/      # Dashboard components
│   ├── flashcards/     # Flashcard system
│   ├── planner/        # Study planner
│   └── ...             # Other feature components
│
├── features/           # NEW: Feature-based modules
│   ├── auth/           # Authentication feature
│   ├── dashboard/      # Dashboard feature
│   ├── study/          # Study sessions & materials
│   ├── planner/        # Planning & scheduling
│   ├── profile/        # User profile
│   ├── projects/       # Project management
│   ├── ai/             # AI assistant features
│   └── shared/         # Shared feature components
│
├── core/               # NEW: Core infrastructure
│   ├── config/         # App configuration
│   ├── types/          # Shared TypeScript types
│   └── utils/          # Utility functions
│
├── hooks/              # Custom React hooks
├── integrations/       # External service integrations
│   └── supabase/       # Supabase client & types
├── lib/                # Third-party library configs
├── pages/              # Route pages
└── App.tsx             # Main app component

```

## Path Aliases

- `@/*` - src root
- `@features/*` - Feature modules
- `@core/*` - Core infrastructure
- `@components/*` - Components directory
- `@hooks/*` - Custom hooks
- `@lib/*` - Library configs

## Tech Stack

- **Frontend**: React 18, TypeScript, Vite
- **UI**: Shadcn UI, Tailwind CSS, Radix UI
- **State**: TanStack Query (React Query)
- **Routing**: React Router v6
- **Backend**: Supabase
- **Forms**: React Hook Form + Zod

## Development

```bash
# Install dependencies
npm install

# Start dev server (localhost:8080)
npm run dev

# Build for production
npm run build

# Preview production build
npm run preview
```

## Features

- Study session tracking
- Flashcard system with AI generation
- Study planner & scheduler
- Project management
- AI assistant for learning
- Progress tracking & gamification
- Resource management
- Exam preparation tools
