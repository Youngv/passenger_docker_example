```shell
cd sample
rails webpacker:install
cd ..
docker build . -t passenger
docker run -p 8080:80 passenger
http://localhost:8080/
```
