#!/bin/sh
swift package clean
swift build -c release
cp .build/release/FengNiao /usr/local/bin/ifengniao

export FENGNIAO_OUTPUT=$(ifengniao --exclude Carthage Pods)


echo "#################################################"


if [[ $FENGNIAO_OUTPUT = 0* ]] 
then 
 echo Gereksiz dosya bulunmuyor 🎉 
 else 

  echo $FENGNIAO_OUTPUT | envman add --key UNUSED_ASSET_MESSAGE
  
  envman run bash -c 'echo $UNUSED_ASSET_MESSAGE'

 fi

echo "#################################################"



