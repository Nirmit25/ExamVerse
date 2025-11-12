@echo off
echo Pushing fixes to GitHub...
git add .
git commit -m "Fix Vercel build configuration"
git push origin master
echo.
echo Done! Vercel will auto-deploy now.
pause
