# moto-unittests

Prepackaged image with a small footprint for running nosetests and ![moto](https://github.com/DataDog/moto).

## Usage

```
docker run -v $(pwd):/data codingric/moto nottests tests/
```

Using docker-compose:

```
  unittests:
    image: codingric/moto-unittester
    volumes:
      - .:/data
    working_dir: /data
    command: "bash -c 'nosetests tests/'"
    environment:
      AWS_DEFAULT_REGION: ap-southeast-2
      BOTO_CONFIG: /dev/null
      AWS_ACCESS_KEY_ID: mock
      AWS_SECRET_ACCESS_KEY: mock
```      
