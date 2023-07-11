Development 
===========

> This document is dedicated to the developers of the module.
 
Dev Flow
--------
```shell script
git git fetch 
git pull origin master
git checkout -b dev/0.0.1

# Use change log update for commit message.
git add .  
git commit -a

git push origin dev/0.0.1
git checkout master 
git merge dev/0.0.1
```

Release 
-------
```shell script
git tag -l
git tag -a 0.0.1
git show 0.0.1
git push origin 0.0.1
```