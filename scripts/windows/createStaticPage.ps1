# PowerShell Script to create a static web page with Docker Desktop

Write-Output "Creating static web page in $PWD"
docker run -it --rm -v "${PWD}:/srv/jekyll" jekyll/jekyll jekyll new . --force
