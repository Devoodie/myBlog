FROM nginx

RUN <<EOF
mkdir SSLinfo
apt update --no-cache
yes | apt install vim
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
1
yes | apt install cargo 
source /root/.bashrc
cargo install mdbook
yes | apt install git 
git clone https://github.com/Devoodie/myBlog.git
rm /etc/nginx/conf.d/default.confd 
cp /SSLinfo/default.confd /etc/nginx/conf.d/
nginx reload
mdbook serve /myBlog/mdbook/
EOF

