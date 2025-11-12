@echo off
echo ========================================
echo Deploying ExamVerse to Vercel...
echo ========================================
echo.

(
echo Y
echo.
echo N
echo ExamVerse
echo.
) | vercel --prod

echo.
echo ========================================
echo Deployment Complete!
echo Check the URL above
echo ========================================
pause
