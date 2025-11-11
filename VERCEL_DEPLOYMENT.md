# Vercel Deployment Guide

## Prerequisites
- GitHub/GitLab/Bitbucket account
- Vercel account (sign up at https://vercel.com)
- Your project pushed to a Git repository

## Project Structure (Ready for Vercel)
Your project is now configured with:
- ✅ `vercel.json` - Vercel configuration file
- ✅ `vite.config.ts` - Vite build configuration
- ✅ `.gitignore` - Updated to exclude Vercel files
- ✅ Build command: `npm run build`
- ✅ Output directory: `dist`

## Deployment Steps

### Method 1: Deploy via Vercel Dashboard (Recommended)

1. **Push your code to Git**
   ```bash
   git add .
   git commit -m "Add Vercel configuration"
   git push origin main
   ```

2. **Import to Vercel**
   - Go to https://vercel.com/new
   - Click "Import Project"
   - Select your Git provider (GitHub/GitLab/Bitbucket)
   - Import your repository

3. **Configure Project**
   - Framework Preset: Vite (auto-detected)
   - Root Directory: `./` (leave as default)
   - Build Command: `npm run build` (auto-detected)
   - Output Directory: `dist` (auto-detected)
   - Install Command: `npm install` (auto-detected)

4. **Add Environment Variables**
   In the Vercel project settings, add these environment variables:
   ```
   VITE_SUPABASE_PROJECT_ID=cmcbkatdyhunlvlktwlv
   VITE_SUPABASE_PUBLISHABLE_KEY=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImNtY2JrYXRkeWh1bmx2bGt0d2x2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDQzOTc2MjIsImV4cCI6MjA1OTk3MzYyMn0.Q45bsnjT3BLNPeuth7CKXZ8O4Z3YLJJ55ez_bVCUYvk
   VITE_SUPABASE_URL=https://cmcbkatdyhunlvlktwlv.supabase.co
   ```

5. **Deploy**
   - Click "Deploy"
   - Wait for the build to complete (usually 1-2 minutes)
   - Your app will be live at `https://your-project-name.vercel.app`

### Method 2: Deploy via Vercel CLI

1. **Install Vercel CLI**
   ```bash
   npm install -g vercel
   ```

2. **Login to Vercel**
   ```bash
   vercel login
   ```

3. **Deploy**
   ```bash
   vercel
   ```
   - Follow the prompts
   - Link to existing project or create new one
   - Confirm settings

4. **Deploy to Production**
   ```bash
   vercel --prod
   ```

## Post-Deployment Configuration

### Custom Domain (Optional)
1. Go to your project settings in Vercel
2. Navigate to "Domains"
3. Add your custom domain
4. Update DNS records as instructed

### Environment Variables Management
- Go to Project Settings → Environment Variables
- Add/edit variables for Production, Preview, and Development
- Redeploy after changes

### Supabase Configuration
Make sure your Supabase project allows requests from your Vercel domain:
1. Go to Supabase Dashboard
2. Navigate to Authentication → URL Configuration
3. Add your Vercel URL to "Site URL" and "Redirect URLs"

## Automatic Deployments
Once connected to Git:
- **Production**: Pushes to `main` branch auto-deploy to production
- **Preview**: Pull requests create preview deployments
- **Rollback**: Easy rollback to previous deployments in Vercel dashboard

## Troubleshooting

### Build Fails
- Check build logs in Vercel dashboard
- Ensure all dependencies are in `package.json`
- Verify environment variables are set correctly

### 404 Errors on Routes
- The `vercel.json` rewrites configuration handles SPA routing
- All routes redirect to `index.html` for client-side routing

### Environment Variables Not Working
- Ensure variables start with `VITE_` prefix
- Redeploy after adding/changing variables
- Check they're set for the correct environment (Production/Preview)

## Performance Optimization
- Vercel automatically optimizes your build
- Enable Edge Network for faster global delivery
- Use Vercel Analytics (optional) to monitor performance

## Useful Commands
```bash
# Deploy to preview
vercel

# Deploy to production
vercel --prod

# View deployment logs
vercel logs

# List deployments
vercel ls

# Remove deployment
vercel rm [deployment-url]
```

## Support
- Vercel Documentation: https://vercel.com/docs
- Vercel Community: https://github.com/vercel/vercel/discussions
