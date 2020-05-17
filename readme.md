### redbot

[matrix](https://matrix.org) bot for [redacted.ch](https://redacted.ch). the only thing is does at the moment is auto join channels and posts updates to the top ten in them


### docker example

```yaml
redbot:
  build: redbot
  environment:
  - RED_API_KEY=yourapikey
  - MATRIX_HOMESERVER=https://my.homeserver
  - MATRIX_USERNAME=@bot_username:my.homeserver
  - MATRIX_PASSWORD=bot_password
  - UPDATE_INTERVAL_SECS=300
  - DB_PATH=/data/db
  volumes:
  - ./redbot_data:/data
```
