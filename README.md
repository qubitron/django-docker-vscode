This sample contains the completed program from the tutorial, [Using Django in Visual Studio Code](https://code.visualstudio.com/docs/python/tutorial-django). Intermediate steps are not included.

The sample also includes a Dockerfile to build a production-ready container image that uses uwsgi and nginx; the uwsgi.ini file provides uwsgi configuration.

To run the sample:

1. Create a virtual environment as described in the tutorial.
1. Install packages with `pip install -r requirements.txt`.
1. Activate the virtual environment by running `source env/bin/activate` (Linux/MacOS) or `env\scripts\activate` (Windows).
1. Create and initialize the database by running `python manage.py migrate`.
1. Create a superuser as described at the end of the tutorial.

Contributions to the sample are welcome. When submitting changes, also consider submitting matching changes to the tutorial, the source file for which is [tutorial-django.md](https://github.com/Microsoft/vscode-docs/blob/master/docs/python/tutorial-django.md).

# Debugging in Docker
In this repo there's a debug configuration for running the code in docker, after following the steps above you can debug the sample in a docker container by setting the `Python: Run in Docker` configuration as active.

The following files contain the configuration needed to enable this:
- `debug.Dockerfile` installs the remote debugger and listens on port 5678
- `docker-compose.debug.yml` provides uses the `debug.Dockerfile` and maps port 5678
- `tasks.json` defines a task that will run docker compose up using the debug 
- `launch.json` defines the `Run in Docker` debug configuration, which runs the compose up task and attaches the remote debugger to port 5678 when it successfully completes

# Contributing

This project welcomes contributions and suggestions.  Most contributions require you to agree to a Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us the rights to use your contribution. For details, visit https://cla.microsoft.com.

When you submit a pull request, a CLA-bot will automatically determine whether you need to provide a CLA and decorate the PR appropriately (e.g., label, comment). Simply follow the instructions provided by the bot. You will only need to do this once across all repos using our CLA.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/). For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.
