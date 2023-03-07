# !/bin/bash


php74_url="https://prototype.php.net/distributions/php-7.4.8.tar.bz2";
temp_url="/tmp/php";
tar_file="php-7.4.8.tar"

function install_php(){

move_to "$temp_url";

download_tar "$tar_file" "$php74_url";

folder_name=$(ls | grep -m 1 "$tar_file");

unpackage $folder_name;


}


