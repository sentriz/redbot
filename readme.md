### redbot

[matrix](https://matrix.org) bot for [redacted.ch](https://redacted.ch). the only thing is does at the moment is auto join channels and posts updates to the top ten in them


### docker example

```yaml
redbot:
  build: redbot
  environment:
  - REDBOT_RED_API_KEY=yourapikey
  - REDBOT_MATRIX_HOMESERVER=https://my.homeserver
  - REDBOT_MATRIX_USERNAME=@bot_username:my.homeserver
  - REDBOT_MATRIX_PASSWORD=bot_password
  - REDBOT_UPDATE_INTERVAL_SECS=300
  - REDBOT_DB_PATH=/data/db
  volumes:
  - ./redbot_data:/data
```
