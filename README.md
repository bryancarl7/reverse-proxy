## Reverse Proxy Script ##
Very simple and straight forward. Be sure to edit the site-default.txt 
with your IP/Port combo and to edit your domain name at the top. 
<br>
site-default.txt is the file to be injected into line 19: sudo vim /etc/nginx/sites-available/default in case that step is confusing.
<br>
I used the help of this article to figure out the necessary commands, and I figured I'd upload it for other people who need help: https://medium.com/@utkarsh_verma/configure-nginx-as-a-web-server-and-reverse-proxy-for-nodejs-application-on-aws-ubuntu-16-04-server-872922e21d38

### Setup ###
1. git clone https://github.com/bryancarl7/reverse-proxy.git
2. sudo chmod 777 setup-proxy.sh
3. ./setup-proxy

And voila! your reverse proxy should be setup. If you have any questions on how this works, you can read the comments in the article linked above, or read the comments I put in the script. Feel free to favorite the library or push updates to make the script more comprehensive.