FROM nginx

RUN apt update --no-cache
RUN <<EOF
yes | apt install vim
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
1
yes | apt install cargo 
source /root/.bashrc
cargo install mdbook
yes | apt install git 
git clone https://github.com/Devoodie/myBlog.git
rm /etc/nginx/conf.d/default.confd 
cp /SSLinfo/default.conf /etc/nginx/conf.d/
cp /myBlog/mdbook/book/* /myBlog/
nginx -s reload
mdbook serve /myBlog/mdbook/
EOF

