# Deploy to Vercel - Terminal Commands

## You're already logged in! ✅

Now run these commands in your terminal:

### Option 1: Quick Deploy (Recommended)
```bash
vercel --prod
```

When prompted:
1. "Set up and deploy?" → Press **Y** (Yes)
2. "Which scope?" → Select your account (press Enter)
3. "Link to existing project?" → Press **N** (No) - Create new project
4. "What's your project's name?" → Type: **examverse** (or any name)
5. "In which directory is your code located?" → Press Enter (use ./)

The CLI will:
- Auto-detect Vite framework
- Build your project
- Deploy to production
- Give you the live URL!

### Option 2: Using the Dashboard (Easier)
Since your code is already on GitHub, you can also:

1. Go to: https://vercel.com/new
2. Import: `Nirmit25/ExamVerse`
3. Add environment variables:
   ```
   VITE_SUPABASE_PROJECT_ID=cmcbkatdyhunlvlktwlv
   VITE_SUPABASE_PUBLISHABLE_KEY=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImNtY2JrYXRkeWh1bmx2bGt0d2x2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDQzOTc2MjIsImV4cCI6MjA1OTk3MzYyMn0.Q45bsnjT3BLNPeuth7CKXZ8O4Z3YLJJ55ez_bVCUYvk
   VITE_SUPABASE_URL=https://cmcbkatdyhunlvlktwlv.supabase.co
   ```
4. Click Deploy

## After Deployment

You'll get a URL like:
- `https://examverse.vercel.app`
- `https://examverse-nirmit25.vercel.app`

## Add Environment Variables (If using CLI)

After first deployment, add environment variables:
```bash
vercel env add VITE_SUPABASE_PROJECT_ID
# Paste: cmcbkatdyhunlvlktwlv

vercel env add VITE_SUPABASE_PUBLISHABLE_KEY
# Paste: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImNtY2JrYXRkeWh1bmx2bGt0d2x2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDQzOTc2MjIsImV4cCI6MjA1OTk3MzYyMn0.Q45bsnjT3BLNPeuth7CKXZ8O4Z3YLJJ55ez_bVCUYvk

vercel env add VITE_SUPABASE_URL
# Paste: https://cmcbkatdyhunlvlktwlv.supabase.co
```

Then redeploy:
```bash
vercel --prod
```

## Your Local Server
Already running at: http://localhost:8080/

## Need Help?
- Vercel Dashboard: https://vercel.com/dashboard
- Your GitHub Repo: https://github.com/Nirmit25/ExamVerse
