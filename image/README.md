# Minecraft Docker Image

## Environment variables
|Name|Usage|
|----|-----|
|`DB_TOKEN`|Dropbox access token|

## Retrieving a Dropbox access token
First Run the container overriding the entrypoint with an interactive shell:
```shell
$ docker-compose run --entrypoint /bin/sh minecraft
```
Next, initiate the Dropbox auth flow by calling:
```shell
# dbxcli account
```
Follow the instructions from dbxcli to authenticate. Once the script is done, a file should have been created at `${HOME}/.config/dbxcli/auth.json`. Copy the contents of this file into the `DB_TOKEN` variable under the `.env.private` file.
