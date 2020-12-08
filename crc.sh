#!/bin/sh
mkdir "./$1" && mkdir "./$1/__tests__";

cp ~/.crc/templates/Component.temp "./$1/$1.tsx"
cp ~/.crc/templates/index.temp "./$1/index.ts"
cp ~/.crc/templates/styles.temp "./$1/styles.ts"
cp ~/.crc/templates/stories.temp "./$1/$1.stories.tsx"
cp ~/.crc/templates/test.temp "./$1/__tests__/$1.test.tsx"

cd ./"$1" || exit;
sed -i "s/\*\*name\*\*/$1/g" "$1.tsx";
sed -i "s/\*\*name\*\*/$1/g" index.ts;
sed -i "s/\*\*name\*\*/$1/g" styles.ts;
sed -i "s/\*\*name\*\*/$1/g" "$1.stories.tsx";
sed -i "s/\*\*name\*\*/$1/g" "./__tests__/$1.test.tsx";
