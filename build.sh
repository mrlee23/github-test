git config --global user.email "mrlee_23@naver.com"
git config --global user.name "mrlee23"
rm -rf ../.published
npm run doc
git checkout -b gh-pages
git pull
mv ../.published/* ./
git add -f .
git commit -a -m "Deploy: $(git log --oneline -n 1)"
test $? -eq "0" && git remote add origin/pages && https://${G}@github.com/mrlee23/github-test.git && git push origin/gh-pages
git checkout master
