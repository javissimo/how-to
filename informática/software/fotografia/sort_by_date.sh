#!/bin/bash
#
#
PhotosPath="/media/javier/029483DC9483D119/Fotos/Otras"
SortPath="/home/javier/.imagesort"
LibraryPath="/home/javier/Photos"
CameraPath="/media/javier/029483DC9483D119/Fotos"
CharFromName=4
echo 
echo 
############
# Test to see if $PhotosPath exists, if not promp for new path / exit.
test -d $PhotosPath || read -p "$PhotosPath does not exist, close to exit or type new path:" PhotosPath
test -d $PhotosPath || "read -p '$PhotosPath is invalid. Press enter to close' && exit"

############
# move files from camera to $SortPath
mv $PhotosPath/* $SortPath/

############
# rename all image files in $SortPath
# FolderDateDD-HHMMSS.ext
jhead  -autorot -ft -nf%y%m%d-%H%M%S $SortPath/*

###########
# Sort files into folders using $CharFromName letters of the file name
#
ls $SortPath | while read file; do
 # extract first $CharFromName characters from filename
 FolderDate=${file:0:$CharFromName}
 # create directory if it does not exist
 test -d $LibraryPath/$FolderDate || mkdir $LibraryPath/$FolderDate
 # move the current file to the destination dir
 mv -v $SortPath/$file $LibraryPath/$FolderDate/$file
done

##########
# move sorted files into photo library
#mv -v $SortPath/* $LibraryPath/ 

##########
# Umount the card
umount $CameraPath

##########
# End notification
echo 
echo "Photos  from: $PhotosPath"
echo "End location: $LibraryPath"
echo 
echo "The card has been ejected."
echo 
read -p "Press enter to close this window…"