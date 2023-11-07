$message = Read-Host "Please enter commit message"

Git
git add .
git commit -m "$message"

git push Powershell main
Exit 

