# antp

Containerized app for processing Jinja template files with json data and environment variables.

## Usage

Sample template:
```
Our message to you is: {{ env["Message"] }}
```

Sample run:
```shell
docker run --rm -it -v /local/path/template:/antp/template -v /local/path/output_directory:/antp/output -e MESSAGE="Hello world" antp:latest
```

Sample output:
```
Our message to you is: Hello world
```

See [antp github page](https://github.com/anttin/antp) for further usage documentation.

You can use `ANTP_TEMPLATE`, `ANTP_OUTPUT` and `ANTP_DATA` environment variables to override the default paths. Datafiles are not used by default, so this env variable is needed if you want to use data files.


## Use cases

This container can be useful as a k8s init-container. Input files can be configMaps. Values can be fed through configMaps or env variables. Output can be set to an emptyDir volume that is shared between the containers.


