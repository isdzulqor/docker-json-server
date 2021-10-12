<div>
    <h1>
		Docker Json Server
    </h1>
    <p>a Dockerized <a href="https://github.com/typicode/json-server">json-server</a> with much of flexibility. Works like json-server as CLI. </p>
    <p>
    Check the Docker Hub <a href="https://hub.docker.com/r/isdzulqor/json-server"> here</a></p>
</div>

## Example Usage

### Direct Run Easily
```
$ docker run --name json-server \
  -v $PWD/db.json:/db.json --rm \
  -p 3000:80 isdzulqor/json-server:latest \
  json-server db.json
```

### Use Docker Compose
```docker
version: "3.7"

services:
  mock_server:
    image: isdzulqor/json-server:latest
    command: json-server db.json --middlewares handle-refund.js
    ports: 
      - 8181:80
    volumes:
      - ./deploy/local/mock-server.json:/db.json
      - ./deploy/local/handle-refund.js:/handle-refund.js
```

## Just Set Docker Command like json-server CLI
```
json-server [options] <source>

Options:
  --config, -c       Path to config file           [default: "json-server.json"]
  --port, -p         Set port                                    [default: 3000]
  --host, -H         Set host                             [default: "localhost"]
  --watch, -w        Watch file(s)                                     [boolean]
  --routes, -r       Path to routes file
  --middlewares, -m  Paths to middleware files                           [array]
  --static, -s       Set static files directory
  --read-only, --ro  Allow only GET requests                           [boolean]
  --no-cors, --nc    Disable Cross-Origin Resource Sharing             [boolean]
  --no-gzip, --ng    Disable GZIP Content-Encoding                     [boolean]
  --snapshots, -S    Set snapshots directory                      [default: "."]
  --delay, -d        Add delay to responses (ms)
  --id, -i           Set database id property (e.g. _id)         [default: "id"]
  --foreignKeySuffix, --fks  Set foreign key suffix, (e.g. _id as in post_id)
                                                                 [default: "Id"]
  --quiet, -q        Suppress log messages from output                 [boolean]
  --help, -h         Show help                                         [boolean]
  --version, -v      Show version number                               [boolean]

Examples:
  json-server db.json
  json-server file.js
  json-server http://example.com/db.json

https://github.com/typicode/json-server

```

