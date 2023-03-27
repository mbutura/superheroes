# superheroes code challenge

API for superhero abilities.

TEST URI: http://localhost:3000/<endpoint>

|Prefix     |  Verb |  endpoints   |   Controller#Action |
| -------   | ------| -------      |    -------          |
|powers     | GET   |  /powers     |  powers#index       |
|powers     | GET   |  /powers/:id |  powers#show        |
|powers     | PATCH |  /powers/:id |  powers#update      |
|heroes     | GET   |  /heroes     |  heroes#index       |
|hero       | GET   |  /heroes/:id |  heroes#show        |
|hero_powers| POST  |  /hero_powers|  hero_powers#create |

## Setup env and start server

```
bundler install && rails db:migrate && rails db:seed && rails s -b 0.0.0.0
