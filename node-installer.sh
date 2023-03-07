

function install_node(){
    
node_url="https://nodejs.org/download/release/v16.12.0/node-v16.12.0.tar.gz"
tmp_url="/tmp/node"
tar_file="node-v16.12.0.tar"

move_to "$tmp_url";

download_tar "$tar_file"

tar_name=$(ls | grep -m 1 "$tar_file");

unpackage $tar_name;


}


