#!/bin/sh

file_path=$(readlink $0) || file_path=$0
root_path=$(dirname ${file_path})
libgnu="lib/x86_64-linux-gnu"
LD_LIBRARY_PATH="${root_path}/usr/${libgnu}:${root_path}/${libgnu}:${root_path}/lib64"

target_script=${root_path}/bin/*
chmod +x ${target_script}

LD_LIBRARY_PATH=${LD_LIBRARY_PATH} ${target_script} $@


