rm -rf ../.published
npm run doc
git checkout origin/gh-pages -b gh-pages
git pull
mv ../.published/* ./
git add -f .
git commit -a -m "Deploy: $(git log --oneline -n 1)"
test $? -eq "0" && git push origin gh-pages
git checkout master
