#!/bin/bash

mkdir "$HOME/Dropbox/adium_logs"
pushd "$HOME/Library/Application Support/Adium 2.0/Users/Default"

cp -R Logs/* "$HOME/Dropbox/adium_logs"
mv Logs Logs_backup
ln -s "$HOME/Dropbox/adium_logs" Logs

popd
