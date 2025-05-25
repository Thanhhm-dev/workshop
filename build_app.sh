cd /var/jenkins_home/workspace/workshop2
docker build -t my-static-site .
docker run -d --name static-site-container -p 7777:80 my-static-site
docker cp ~/build_remote.sh static-site-container:/usr/share/nginx/html
docker exec static-site-container chmod +x /usr/share/nginx/html/build_remote.sh
