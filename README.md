Ruby version : ruby '2.2.3'


##### Diff from vlrchtlt
- Dockerfile for container definition
- docker-compose.yml for future 'fig-type' usage (DB and else...)
- Readme in MD

##### SetUp
- fork from vlrchtlt
- set seconde remote from vlrchtlt:
~~sh
git remote add <GitAddress> <NameForSecondeRemote>
~~

##### Update
- Get updates from vlrchtlt
- merge in master

~~sh
git fetch <NameForSecondeRemote>
git checkout master
git merge <NameForSecondeRemote>
[git push]
~~
