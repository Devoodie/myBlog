FROM nginx

SHELL ["/bin/bash", "-c"]
RUN <<EOF
yes | apt update 
yes | apt install vim
1
yes | apt install git 
git clone https://github.com/Devoodie/myBlog.git
rm /etc/nginx/conf.d/default.conf 
EOF


