export FENGNIAO_OUTPUT=$(fengniao --exclude Carthage Pods)


echo "#################################################"


if [[ $FENGNIAO_OUTPUT = 0* ]] 
then 
 echo Gereksiz dosya bulunmuyor 🎉 
 else 

  echo -e $FENGNIAO_OUTPUT | envman --path=./env1.yml add --key UNUSED_ASSET_MESSAGE
  
  envman --path=./env1.yml run bash -c 'echo -e $UNUSED_ASSET_MESSAGE'

 fi

echo "#################################################"



