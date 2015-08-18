#! /bin/sh

for path in _*; do

dot_path=$(echo $path | sed -e 's/^_/./')

if [ -h ~/$dot_path ]; then
rm ~/$dot_path || exit
fi

if [ -d ~/$dot_path ]; then
rmdir ~/$dot_path || exit
fi

ln -sf $(pwd)/$path $HOME/$dot_path || exit

done

