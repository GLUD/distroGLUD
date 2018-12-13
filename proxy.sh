#Se añade la configuracion del proxy para la universidad

PROXY_DIR=http://10.20.4.15:3128

export {HTTP,HTTPS,FTP,ALL,SOCKS,RSYNC}_PROXY=$PROXY_DIR
export {http,https,ftp,all,socks,rsync}_proxy=$PROXY_DIR
#export {NO_PROXY,no_proxy}="localhost,127.0.0.1,localaddress,.localdomain.com,10.0.0.0/8,192.168.0.0/16,172.16.0.0/12"
