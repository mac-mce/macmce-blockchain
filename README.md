# Basic Implementation of a Blockchain

## Depends on

Python 3.12

## Run app as a Standalone application

### Start command

```commandline
python blockchain.py
```

After successful startup, you should see this message:

```text
 * Serving Flask app 'blockchain'
 * Debug mode: off
WARNING: This is a development server. Do not use it in a production deployment. Use a production WSGI server instead.
 * Running on all addresses (0.0.0.0)
 * Running on http://127.0.0.1:6000
 * Running on http://10.2.0.2:6000
Press CTRL+C to quit
```


## Run app as a Containerized application


### Build Docker Image

```commandline
docker build --tag blockchain-docker .
```

### Run the Docker Image

This command exposes port 5200 when the app starts, so point your browser at port 5200.

```commandline
docker run -d -p 5200:5000 blockchain-docker
```

## Using the Blockchain application

### Supported Actions

Three actions are supported:

#### GET /mine_block

Example:
{{protocol}}://{{server}}:{{port}}/mine_block

Response:
```json
{
    "index": 2,
    "message": "Congratulations, you just mined a block",
    "previous_hash": "a4a91d53161240867f943e75499405630f1209bad7f7ed992565b2c9eb9b8019",
    "proof": 533,
    "timestamp": "2024-10-30 20:51:37.855979"
}
```
#### GET /get_chain

Example:
{{protocol}}://{{server}}:{{port}}/get_chain

```json
{
    "chain": [
        {
            "index": 1,
            "previous_hash": "0",
            "proof": 1,
            "timestamp": "2024-10-30 20:49:05.215864"
        },
        {
            "index": 2,
            "previous_hash": "a4a91d53161240867f943e75499405630f1209bad7f7ed992565b2c9eb9b8019",
            "proof": 533,
            "timestamp": "2024-10-30 20:51:37.855979"
        }
    ],
    "length": 2
}
```
#### GET /is_valid

Example:
{{protocol}}://{{server}}:{{port}}/is_valid

```json
{
    "is_chain_valid": true,
    "length": 2
}
```