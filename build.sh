git config --global user.email "mrlee_23@naver.com"
git config --global user.name "mrlee23"
rm -rf ../.published
npm run doc
ls -alh ../
echo "A"
git checkout --orphan gh-pages
ls -alh 
git rm -rf .
ls -alh
git pull origin gh-pages
ls -alh
mv -f ../.published/* ./
ls -alh
git add .
git commit -a -m "Deploy: $(git log --oneline -n 1)"
test $? -eq "0" && git push origin gh-pages
git checkout master
