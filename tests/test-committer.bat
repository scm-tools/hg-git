rd /s /q test.git.pyc
git init --bare test.git.pyc
rd /s /q test-committer.pyc
hg init test-committer.pyc
cd test-committer.pyc
echo x > x.txt
hg add x.txt
set "HGUSER=Mike Hommey <mh+mozilla@glandium.org> 1425548420 -32400" & hg commit -m "fekwag" -u "Yonggang Luo<luoyonggang@gmail.com>"
echo y >> x.txt
set "HGUSER="
hg commit -m "no timestamp" -u "Mike Hommey <mh+mozilla@glandium.org>"
hg bookmark master
hg push ..\test.git.pyc
cd ..