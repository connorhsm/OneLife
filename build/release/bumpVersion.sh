cd OneLifeData7
lastTaggedVersion=$(git describe --tags --abbrev=0 --match="2HOL_v[0-9]*")

newVersion=$(lastTaggedVersion + 1)

echo -n "$newVersion" > dataVersionNumber.txt
git add dataVersionNumber.txt
git commit -m "Updatated dataVersionNumber to $newVersion"
cd ..

