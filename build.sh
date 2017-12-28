rm -rf ../.published
npm run doc
git checkout gh-pages
git pull
mv ../.published/* ./
git add -f .
git commit -a -m "Deploy: $(git log --oneline -n 1)"
test $? -eq "0" && git push origin gh-pages --quiet
git checkout master
