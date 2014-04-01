# This should make it more idiot proof
git checkout -b gh-pages origin/gh-pages
git checkout master

# Remove the temporary directory since things may have changed
rm -rf /tmp/dist

# Rebuild the files and copy them to the tmp folder
grunt dist         &&
cp -R dist /tmp/dist  &&

# copy JS files EAK filtered out
cp -R public/assets/scripts /tmp/dist/assets/scripts

# Checkout gh-pages, save what we need, delete the rest and copy over
git checkout gh-pages    &&
git pull --rebase origin gh-pages &&
cp 404.html /tmp/dist/   &&
cp CNAME /tmp/dist/      &&
cp -R builds /tmp/dist/  &&
rm -r ./*                &&
cp -R /tmp/dist/* ./        &&

# Commit and push the changes then switch back to master
git add . &&
git commit -am "Update website content" &&
git push origin gh-pages  &&
git checkout master &&
echo "Website update successful"
rm -rf assets/ &&
echo "Finsihed cleanup"
