FROM nginx

SHELL ["/bin/bash", "-c"]
RUN <<EOF
yes | apt update 
yes | apt install vim
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
1
yes | apt install cargo 
source /root/.bashrc
cargo install mdbook
yes | apt install git 
git clone https://github.com/Devoodie/myBlog.git
rm /etc/nginx/conf.d/default.conf 
EOF
RUN cp -r /myBlog/mdbook/book/* /myBlog/


