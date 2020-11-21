# Node.js Development Environment

A Docker setup that brings a node development environment into a project,
with no need to set it up on the host machine.

Start a new project:

```
$ touch .env
$ docker-compose run --service-ports --rm dev
# npm init
```

Things you may need/want to change:

- the exposed PORT (3000 by default, on both host and container)
- the user ID used by compose (1000 by default, which typically matches your normal user in linux)
- config vars used by your project (stored in .env)

