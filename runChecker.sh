export FENGNIAO_OUTPUT=$(fengniao --exclude Carthage Pods)


echo "#################################################"


if [[ $FENGNIAO_OUTPUT = 0* ]]
then

  echo Projede gereksiz/kullanılmayan asset bulunmuyor 🎉 | envman add --key UNUSED_ASSET_MESSAGE

 else

  IFS='-'

  read -a array <<< "$FENGNIAO_OUTPUT"

  echo -e "🕵️ ${array[0]}" | envman add --key UNUSED_ASSET_MESSAGE_TITLE

  echo -e "🗑️ ${array[1]}" | envman add --key UNUSED_ASSET_MESSAGE_DESC

  envman run bash -c 'echo -e $UNUSED_ASSET_MESSAGE_TITLE'

  envman run bash -c 'echo -e $UNUSED_ASSET_MESSAGE_DESC'

 fi

echo "#################################################"
