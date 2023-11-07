$message = Read-Host "Please enter commit message"

Git
git add .
git commit "$message"

git push Powershell main
Exit 

Read-Host "Press any key..."