# docker-ooye

Docker setup for the [Out Of Your Element](https://gitdab.com/cadence/out-of-your-element)
Matrix-to-Discord bridge

## Setup (vastly oversimplified)

1. Create `ooye.db` and `registration.yaml`
2. `docker-compose run ooye npm run setup` and set up the bot.
3. `docker-compose up -d`
4. `docker-compose exec -it ooye addbot` and use the given invite link.
