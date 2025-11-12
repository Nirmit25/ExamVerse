# Fix Vercel Build Error - Quick Guide

## The Problem
Vercel build is failing with "Permission denied" error on `npm run build`.

## The Fix (Already Applied)
I've updated:
1. ✅ `vercel.json` - Changed to use `npm ci` instead of `npm install`
2. ✅ `package.json` - Build script is correct

## Deploy the Fix

### Step 1: Commit and Push (Run in NEW terminal)
```bash
git add .
git commit -m "Fix Vercel build configuration"
git push origin master
```

### Step 2: Redeploy on Vercel
Go to your Vercel dashboard and:
1. Click on your "ExamVerse" project
2. Click "Redeploy" button
3. Or it will auto-deploy when you push

## Alternative: Override Build Command in Vercel Dashboard

If the error persists, go to Vercel Dashboard:

1. Go to: https://vercel.com/dashboard
2. Select your "ExamVerse" project
3. Go to **Settings** → **General**
4. Find "Build & Development Settings"
5. Override the build command with:
   ```
   npm install && npm run build
   ```
6. Save and redeploy

## Alternative 2: Delete and Reimport

If still failing:
1. Delete the project from Vercel dashboard
2. Go to https://vercel.com/new
3. Import `Nirmit25/ExamVerse` again
4. Add environment variables:
   ```
   VITE_SUPABASE_PROJECT_ID=cmcbkatdyhunlvlktwlv
   VITE_SUPABASE_PUBLISHABLE_KEY=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImNtY2JrYXRkeWh1bmx2bGt0d2x2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDQzOTc2MjIsImV4cCI6MjA1OTk3MzYyMn0.Q45bsnjT3BLNPeuth7CKXZ8O4Z3YLJJ55ez_bVCUYvk
   VITE_SUPABASE_URL=https://cmcbkatdyhunlvlktwlv.supabase.co
   ```
5. Deploy

## What Changed in vercel.json
```json
{
  "version": 2,
  "buildCommand": "npm run build",
  "outputDirectory": "dist",
  "installCommand": "npm ci",  // Changed from "npm install"
  "framework": "vite",
  "rewrites": [
    {
      "source": "/(.*)",
      "destination": "/index.html"
    }
  ]
}
```

The `npm ci` command is more reliable in CI/CD environments like Vercel.

## Test Locally First (Optional)
```bash
npm ci
npm run build
```

If this works locally, it will work on Vercel.
