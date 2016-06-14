while true; do
read -p "Do you have already set the remote branch?" yn
case $yn in
[Yy]* ) 
git add .

echo "Please enter the commitmessage:"
read userinput

git commit -m "$userinput"
git push -u origin master; break;;
[Nn]* ) exit;;
* ) echo "Please answer yes or no.";;
esac
done

