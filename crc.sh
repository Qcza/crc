#!/bin/bash

unset COMP_NAME MEMO

create_files() {
  mkdir "./$COMP_NAME" && mkdir "./$COMP_NAME/__tests__"
  cp ~/.crc/templates/index.temp "./$COMP_NAME/index.ts"
  cp ~/.crc/templates/styles.temp "./$COMP_NAME/styles.ts"
  cp ~/.crc/templates/stories.temp "./$COMP_NAME/$COMP_NAME.stories.tsx"
  cp ~/.crc/templates/test.temp "./$COMP_NAME/__tests__/$COMP_NAME.test.tsx"
}

create_component() {
  cp ~/.crc/templates/Component.temp "./$COMP_NAME/$COMP_NAME.tsx"
}

create_memo_component() {
  cp ~/.crc/templates/Component.memo.temp "./$COMP_NAME/$COMP_NAME.tsx"
}

replace_names() {
  cd ./"$COMP_NAME" || exit
  sed -i "s/\*\*name\*\*/$COMP_NAME/g" "$COMP_NAME.tsx"
  sed -i "s/\*\*name\*\*/$COMP_NAME/g" index.ts
  sed -i "s/\*\*name\*\*/$COMP_NAME/g" styles.ts
  sed -i "s/\*\*name\*\*/$COMP_NAME/g" "$COMP_NAME.stories.tsx"
  sed -i "s/\*\*name\*\*/$COMP_NAME/g" "./__tests__/$COMP_NAME.test.tsx"
}

while getopts ":n:m" opt; do
    case $opt in
      n)
        COMP_NAME=$OPTARG
        ;;
      m)
        MEMO=true
        ;;
      \?)
        echo "Invalid option: -$OPTARG" >&2
        exit 1
        ;;
      :)
        echo "Invalid option: $OPTARG requires an argument" 1>&2
        exit 1
        ;;
    esac
done


if [ -n "$COMP_NAME" ]; then
  create_files
  if [ "$MEMO" = true ]; then
    create_memo_component
  else
    create_component
  fi
  replace_names
else
  echo "Missing component name -n"
  exit 1
fi
