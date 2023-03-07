
managers=("apt-get" "yum" "dnf" "pacman" "zypper" "apk")
mi_manager=""



function exists_wget(){

    wget_url="/usr/bin/wget"

    if [[ ! -d "$wget_url" ]]; then

        $mi_manager ;

    fi
}

function what_is_my_package_manager(){


for (( i=0; $i<${#managers[@]}; i=i+1 )); do
    
    # url=whereis ${managers[$i]};
    url=$(whereis ${managers[$i]} | grep "bin");
    
    if [[ "$url" != "" ]]; then
        mi_manager=${managers[$i]};
        $mi_manager --version;
        echo $mi_manager;
        break;
    fi

done
}

function move_to_bin(){

    bin_url="/bin/$1";

    if [[ -d "$bin_url" ]]; then
        
        sudo mv "$1" "$bin_url";

    else

        sudo mkdir "$bin_url";
        sudo mv "$1" "$bin_url";

    fi


}


function unpackage(){

    file=$( ls | grep -m 1 "$1");
    sudo tar -xvzf "$file";
    pwd;

}
function download_tar(){
    # recibe el nombre del archvio y la
    # ubicacion del archivo a descargar

    if [[ -d "$1" ]]; then

        echo "ya existe el archivo :) ";

    else

        # sudo wget 
        echo "$1 $2";

    fi

}
function move_to(){
    # recibe la ubicacion del archivo 

    if [[ -d "$1" ]]; then

        cd "$1";

    else
    
        sudo mkdir "$1";
        cd "$1";
    fi

    pwd;
}



