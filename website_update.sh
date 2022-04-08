#!/bin/sh -x

echo "Updating website ..."

DEST=/var/www/html

for subdir in assets css images js lighthouse pdf vendor favicon.ico;
do

	sudo rm -rf $DEST/$subdir; 
	sudo cp -r $subdir $DEST/$subdir
	sudo chmod -R 777 $DEST/$subdir
	sudo chown -R apache:apache $DEST/$subdir
	
done 


sudo rm -rf $DEST/*.php;	 	
sudo cp  *.php	 	$DEST/
sudo chmod -R 777 $DEST/*.php
sudo chown -R apache:apache $DEST/*.php




