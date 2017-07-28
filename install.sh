#!/usr/bin/env bash
if [ $(basename `pwd`) != "templates" ];then
    echo "[Error] Please do this in the templates directory!"
    exit
fi
if [ ! -d "lpisme" ]; then
    git clone https://github.com/SilverBlogTeam/lpisme.git
    cd lpisme
fi
ln -s $(pwd)/static ../static/lpisme
if [ -f "config.json" ]; then
    cp config.example.json config.json
    vim config.json
fi
