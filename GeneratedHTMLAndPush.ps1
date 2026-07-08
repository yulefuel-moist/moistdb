git pull
Start-Sleep -Seconds 0.5
.\GenerateHtml.exe
Start-Sleep -Seconds 0.5
git add moistdb.sqlite AQ40.html BWL.html MC.html Naxx.html Index.html
git commit -m "Updated points"
git push
