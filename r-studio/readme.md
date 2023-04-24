## Docker-compose for different setups

When I am developing this container at home, I use a personal domain name that uses Traefik v2 as a reverse-proxy. The labels you see in the docker compose file are specific to that setup. A generic docker-compose.yaml file is pasted below. You will also need to create a `.env` file to hold your password. See the `.env.example` file as a reference.

````yaml
####################################
#         Docker-Compose           #
####################################
version: "3"

####################################
#            Networks              #
####################################

networks:
  default:
    driver: bridge

####################################
#            Services              #
####################################

services:
  quarto-r:
    image: rocker/tidyverse
    container_name: Quarto-R-Studio
    networks: 
      - default
    ports:
      - "3333:3333"
      - "8787:8787"
    volumes:
      - /volume1/Pranav/Research/research-reference:/home/rstudio/research-reference
    environment:
      - PASSWORD=$PASS
````