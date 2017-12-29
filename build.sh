git config --global user.email "mrlee_23@naver.com"
git config --global user.name "mrlee23"
rm -rf ./.published
npm run doc
git checkout --orphan gh-pages
git rm -rf .
git pull origin gh-pages
git add ./.published
git mv -f ./.published/* ./
git commit -a -m "Deploy: $(git log --oneline -n 1)"
test $? -eq "0" && git push "https://${GH_TOKEN}@github.com/mrlee23/github-test.git" gh-pages > /dev/null 2>&1
git checkout master
