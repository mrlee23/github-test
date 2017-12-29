git config --global user.email "mrlee_23@naver.com"
git config --global user.name "mrlee23"
rm -rf ../.published
npm run doc
ls ../
echo "A"
git checkout --orphan gh-pages
git rm -rf .
git pull origin gh-pages
mv -f ../.published/* ./
git add -f .
git commit -a -m "Deploy: $(git log --oneline -n 1)"
test $? -eq "0" && git push origin gh-pages
git checkout master
