<div>
    <h1>
		Docker Json Server Alpine Version
    </h1>
    <p>a Dockerize <a href="https://github.com/typicode/json-server">json-server</a> with much of flexibility. Works like json-server as CLI</p>
</div>


## Example Usage

```
$ docker run --name json-server -v $PWD/db.json:/db.json --rm -p 3000:80 isdzulqor/json-server:latest json-server db.json
```