<div>
    <h1>
		Docker Json Server
    </h1>
    <p>a Dockerized <a href="https://github.com/typicode/json-server">json-server</a> with much of flexibility. Works like json-server as CLI. </p>
    <p>
    Check the Docker Hub <a href="https://hub.docker.com/r/isdzulqor/json-server"> here</a></p>
</div>

## Example Usage

```
$ docker run --name json-server -v $PWD/db.json:/db.json --rm -p 3000:80 isdzulqor/json-server:latest json-server db.json
```