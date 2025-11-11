# 📚 StudyMate AI — Intelligent Study Assistant

> An AI-powered personal learning dashboard for students to streamline college projects, exam preparation, and skill development — all in one place.

---

## 🚀 Overview

StudyMate AI is a full-stack web application designed to help students focus, organize, and accelerate their learning. Whether you're managing assignments, preparing for exams, or practicing coding, StudyMate integrates everything you need into a single distraction-free platform.

---

## ✨ Key Features

- 🧠 **AI Content Generator**  
  Generate flashcards, quizzes, mind maps, flowcharts, and summaries from notes or PDFs using integrated OpenAI models.

- 📊 **Dual Dashboards**  
  Switch between **College Mode** (project & skill tracking) and **Preparation Mode** (mock tests, revision logs, performance tracking).

- 🔗 **External Platform Integration**  
  Seamlessly connect GitHub, LeetCode, and LinkedIn to sync progress and receive AI-powered study recommendations.

- 💬 **AI Chat Assistant**  
  Built-in conversational assistant for concept clarity, planning, and content generation.

- 📁 **Personalized Study Resources**  
  Upload notes, PDFs, and use them across AI tools for smart content generation.

- ⏱️ **Focus Mode & Timer**  
  Pomodoro-style sessions with tools like code editor, terminal, practice problem launcher.

---

## 🛠️ Tech Stack

- **Frontend**: React 18 + TypeScript + Vite
- **UI Framework**: Shadcn UI + Tailwind CSS + Radix UI
- **State Management**: TanStack Query (React Query)
- **Routing**: React Router v6
- **Backend**: Supabase (Auth, DB, Storage)
- **AI Integration**: OpenAI GPT-4 APIs
- **Forms**: React Hook Form + Zod validation
- **Editor Tools**: Monaco Editor (VS Code-like), CodeMirror
- **Hosting**: Vercel / Render / Custom server

---

## 🚀 Quick Start

### Prerequisites
- Node.js 18+ installed
- npm or yarn package manager

### Installation & Setup

```bash
# 1. Install dependencies
npm install

# 2. Configure environment variables
# Create a .env file with:
VITE_SUPABASE_PROJECT_ID=your_project_id
VITE_SUPABASE_PUBLISHABLE_KEY=your_publishable_key
VITE_SUPABASE_URL=your_supabase_url

# 3. Start development server
npm run dev

# 4. Open in browser
# Local: http://localhost:8080/
# Network: http://172.20.10.3:8080/
```

### Available Commands

```bash
npm run dev      # Start dev server (port 8080)
npm run build    # Build for production
npm run preview  # Preview production build
npm run lint     # Run ESLint
```

---

## 📁 Project Structure

The project uses a feature-based architecture for better organization:

```
src/
├── features/          # Feature modules (auth, dashboard, study, etc.)
├── core/             # Core infrastructure (config, types, utils)
├── components/       # UI components (Shadcn UI + feature components)
├── hooks/           # Custom React hooks
├── integrations/    # External services (Supabase)
├── lib/             # Third-party library configs
└── pages/           # Route pages
```

### Path Aliases
- `@/*` - src root
- `@features/*` - Feature modules
- `@core/*` - Core infrastructure
- `@components/*` - Components
- `@hooks/*` - Custom hooks

**📖 See [PROJECT_STRUCTURE.md](./PROJECT_STRUCTURE.md) for detailed architecture**

---

## 📚 Documentation

- **[QUICK_START.md](./QUICK_START.md)** - Getting started guide
- **[PROJECT_STRUCTURE.md](./PROJECT_STRUCTURE.md)** - Architecture overview
- **[MIGRATION_GUIDE.md](./MIGRATION_GUIDE.md)** - Feature migration guide
- **[DEV_CHEATSHEET.md](./DEV_CHEATSHEET.md)** - Development shortcuts & patterns
- **[DEPLOYMENT_SUMMARY.md](./DEPLOYMENT_SUMMARY.md)** - Latest deployment info

---


