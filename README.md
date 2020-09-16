# 42-ft_server

Simple webserver running from docker container

  This projects aims to run a basic website from a docker container, without needing to install a server on your machine system file. For the build, it was used the Debian Buster operational system, which is dowloaded from DockerHub at build time. The following services are available on this website:
  
1. Web server with [Nginx](https://www.nginx.com/)
2. SQL Database with [MariaDB](https://www.mariadb.org/)
3. Database web admin with [PhpMyAdmin](https://www.phpmyadmin.net/)
4. OpenSource CMS with [Wordpress](https://www.wordpress.com/)

The project also have a self-signed certificate [OpenSSL](https://www.openssl.org/) and an autoindex script on the container's root directory.

## Usage

#### Prerequisites

Docker: https://docs.docker.com/engine/install/

#### Download
Feel free to download the project:
```
git clone https://github.com/laerciocandido/42-ft_server.git
```

#### Build Instructions

###### Docker commands

`docker build -t $(IMAGE_NAME) .` builds the image\
`docker run -it -p 80:80 -p 443:443 --name $(CONTAINER_NAME) $(IMAGE_NAME)` runs the image as a container\
`docker stop $(CONTAINER_NAME)` stops the container\
`docker rmi $(IMAGE_NAME)` removes the image\
`docker rm $(CONTAINER_NAME)` removes the container\

#### Access

You can acess the website from your browser:

- <https://localhost>
- <https://localhost/wordpress>
- <https://localhost/phpmyadmin>

#### Security Concerns
As this website supports SSL connection, it will automatically redirects its users to a HTTPS protocol website domain. At first, your web browser should launch a security warning regarding the certificate used to verify the security layer on this website. This is expected, as this webiste have a self-signed certificate.

#### Autoindex

 There is an autoindex selection script on the container `root` directory. Therefore, one can select the autoindex option for this website with the following command. By default, autoindex is selected to `on`.

    sh autoindex.sh
    

![docker-logo](https://user-images.githubusercontent.com/56961723/85928195-716b5780-b8ab-11ea-940e-6fb29546fb25.png)
