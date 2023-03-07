# !/bin/bash

source utils/functions.sh


mysql_url="https://dev.mysql.com/get/Downloads/MySQL-5.7/mysql-5.7.41.tar.gz"




function install_mysql(){

    temp_url="/tmp/mysql";
    tar_file="mysql-5.7.41.tar.gz";

    move_to "$temp_url";

    # download_tar "$tar_file"

    folder_name=$(ls | grep -m 1 "$tar_file");

    unpackage $folder_name;
}

