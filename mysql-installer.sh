# !/bin/bash

source utils/functions.sh






function install_mysql(){

    tmp_url="/tmp/mysql";
    tar_file="mysql-5.7.41.tar.gz";
    mysql_url="https://dev.mysql.com/get/Downloads/MySQL-5.7/mysql-5.7.41.tar.gz";

    move_to "$tmp_url";

    download_tar "$tar_file" "$mysql_url" ;

    folder_name=$(ls | grep -m 1 "$tar_file");

    unpackage $folder_name;
}

