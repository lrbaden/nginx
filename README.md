# nginx
Minimalist file server using Nginx

## Usage

### Using CLI

```{=bash}
# build image
docker build --rm -t my_nginx .

# Or directly from the repository
docker build --rm -t my_nginx https://github.com/lrbaden/nginx.git#main

# run container
docker run --rm -it -name nginx_ctnr -p 80:80 --mount "type=bind,src=/some/path/,dst=/mnt/some/path" my_nginx 
```
### Using compose file

```{=yaml}
version: '3.8'

services:
  nginx:
    build:
      context: https://github.com/lrbaden/nginx.git#main
    ports:
      - 80:80
    volumes:
      - myvolume:/mnt/myvolume
      - ./some/path/:/mnt/some/path
      
  
volumes:
  myvolume:
```

then from your browser visit: http://localhost/files/some/path
