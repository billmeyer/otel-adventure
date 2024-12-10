# Conquer the Observability Frontier: An OTel Adventure

During this workshop, the adventurer will become self-sufficient in their quest to become familiar with the OpenTelemetry ecosystem. We'll accomplish the following:

* Stand up an OpenTelemetry Collector,
* Use Python and the OTel SDK to send metrics, traces and logs to the collector,
* Export the telemetry from the Collector and send to their own Datadog account to explorer and visualize,
* Setup and test Probabilistic and Tail-based Trace Sampling using OTel.

The toolset provided in this workshop can be reused any number of times to facilitate demos, customer conversations and debugging/troubleshooting OTel-related topics. This is the swiss army knife you've been looking for.

Your adventure awaits...

## Requirements

* [Python 3](https://docs.python-guide.org/starting/install3/osx/#doing-it-right)
  * Python 3 can be downloaded either from [python.org](https://www.python.org/downloads/) or on macOS installed via [brew](https://brew.sh/): `brew install python3`
  * verify: `python3 -V`
* [git](https://git-scm.com/downloads/mac)
    * For MacOS it can be installed by installing [XCode](https://developer.apple.com/xcode/) or via [brew](https://brew.sh/): `brew install git`
        * For other OS distributions refer to [git-scm.com](https://git-scm.com/downloads)
    * verify: `git -v`

## Startup

### Clone the workshop from GitHub

From your $HOME directory:

```bash
git clone https://github.com/billmeyer/otel-adventure
cd otel-adventure
```

### Set Environment Variables

The following environment variables will be used through this workshop. Retrieve these from your Datadog Organization:

* `DD_API_KEY` - Select an API Key from your Org
* `DD_SITE` - Select the appropriate Datadog Site for your Org

Create a file named `.env` in the local directory and **replace the values in the angle brackets with the values from above**:

```bash
export DD_API_KEY=<my api key>
export DD_SITE=<my datadog site>
```

Example `.env` file:

```bash
export DD_API_KEY=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
export DD_SITE=datadoghq.com
```

### Confirm Values in .env

`cat .env`

### Start Jupyter Lab

In a terminal window, run: `./start.sh`

This will open a browser window at `http://localhost:8880/lab` with the project files.

From here you can follow the `section##-<title>.ipynb` files for instructions. For the sake of not repeating ourselves these instructions are not copied here. `section01-requirements.ipynb` and `section02-startup.ipynb` are covered above for the sake of accessibility and getting started with jupyter.
