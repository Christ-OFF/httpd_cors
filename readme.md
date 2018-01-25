# Purpose
* Give sample files and necessary Dockers to serve local radar files
# References
* CORS : http://awesometoast.com/cors/
# Docker Commands
## Run Radar
docker pull wwwthoughtworks/build-your-own-radar
docker run --rm -p 8080:80 -e SERVER_NAMES="localhost 127.0.0.1" wwwthoughtworks/build-your-own-radar
## HTTPD with Cors
### Build
docker build -t httpd_cors .   
### Run
`docker run -dit --name local-apache-app -p 8090:80 -v "$PWD":/usr/local/apache2/htdocs/ httpd_cors:latest`
## See logs
1. find ID of your running container: `docker ps`
2. create image (snapshot) from container filesystem : `docker commit [YOUR_ID] mysnapshot`
3. explore this filesystem using bash (for example): `docker run -t -i mysnapshot /bin/bash`
# Use URL in Radar
http://localhost:8090/sample_radar.csv