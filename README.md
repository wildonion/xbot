

a twitter bot to verify tasks

## Supported Tasks

- likes

- comments

- retweet

- tweet

## How 2?

step 0. fill the twitter keys inside the `bot.py`

step 1. deploy the docker container of `xbot` server by running `sudo chmod +x deploy.sh && ./deploy.sh`

step 2. setup DNS record in DNS panel to points where the xbot code is hosted

step 3. configure nginx reverse proxy for above subdomain to point to the docker container on the VPS

step 4. register new SSL for the above subdomain suing ```sudo certbot --nginx``` command