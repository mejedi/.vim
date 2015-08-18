#! /bin/sh

for path in _*; do

dot_path=$(echo $path | sed -e 's/^_/./')

ln -shfF $(pwd)/$path $HOME/$dot_path

done

