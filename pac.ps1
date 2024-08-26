dotnet publish -c Release  ..\AinAlAtaaFoundation\AinAlAtaaFoundation\ -r win-x64 -o .\publish

$version = "0.1.28"
$pack_id = "AinAlAtaaFoundation"
$main_exe = "AinAlAtaaFoundation.exe"
$icon_path = ".\ain-al-ataa-foundation.ico"
$splash_image = ".\ain-al-ataa.jpg"
$framework = "net8.0-x64-desktop"
$pack_title = "Ain Al-Ataa Foundation"
vpk pack -u $pack_id -v $version -p .\publish -e $main_exe --icon $icon_path --splashImage $splash_image --framework $framework --packTitle $pack_title

git add .
git commit -m "Create new release $version"
git push
git tag $version
git push origin tag $version