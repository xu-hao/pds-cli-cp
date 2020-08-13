# pdspi-cli-cp

## prerequisites
 python 3.8 or higher

## how to run the code

To use the cli tools, put your spec under `config`. Put your custom python functions under a sub dir in that dir. There is a `cli.py`. You can run it as

```
python cli.py <file containing your spec> <sub dir containing custom python functions> <number of threads> <level> <a yaml file containing resource types> <a yaml file contains pids> <timestamp> <fhir plugin port> <mapper plugin port>
```

For example

```
python cli.py spec.py modules 4 1 ../resourceTypes.yaml ../patientIds.yaml "2000-01-01T00:00:00Z" 8080 8081
```

In this example, you would put your spec in `config/spec.py`. Any python module under the `config/modules` directory can be imported in your spec. For example, if you have `config/modules/clivar.py`, you can reference functions in that module in various ways, for example `from clivar import *`. `../resourceTypes.yaml` contains a list of resource types. `../patientIds.yaml` contains a list of patient ids. Your spec should output the format that the api specifies. See `config/spec4.py`'s `return` statement for example. `<level>` specifies the number of nested for loops to parallelize.
