$message = Read-Host "Please enter commit message"

git add .
git commit -m "$message"

git push Powershell main
Exit 

