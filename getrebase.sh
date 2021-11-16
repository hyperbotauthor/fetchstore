echo "installing rebase"

echo "cloning fetchstore"

git clone https://github.com/hyperbotauthor/fetchstore

declare -a arr=(
  "login.js"
  "login.sh"
  "getorigin.js"
  "rebase.sh"
  "bump.js"
  "auth.sh"
  "pub.sh"
)

echo "cloning files"

for i in "${arr[@]}"
do
  echo "copying $i"
  cp fetchstore/$i .
done

echo "removing fetchstore"

rm -rf fetchstore

echo "adding dependencies"

yarn add --dev node-fetch@2.6.5
yarn add --dev parse-git-config

echo "done installing rebase"
