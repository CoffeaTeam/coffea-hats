# Coffea tutorial resources
This is a collection of jupyter notebooks and associated files for use in coffea tutorials.

## Setup instructions
These tutorials are designed to run at Vanderbilt's jupyterhub instance. Anyone with CERN credentials
can login and use this service. That said, coffea can be installed in many different environments, including
the CMS LPC, CERN lxplus, [CERN SWAN service](http://swan.cern.ch), or personal machines. More installation
details are documented at https://coffeateam.github.io/coffea/installation.html

Follow [these instructions](https://twiki.cern.ch/twiki/bin/viewauth/CMS/HATSatLPCSetup2019) to set up
your Vanderbilt jupyter instance. After the initial grid certificate setup (which you may have done already),
open a terminal from dropdown menu on the right, and execute:
```
git clone https://github.com/CoffeaTeam/coffea-hats.git
cd coffea-hats
python3.6 -m venv coffea-hats
source coffea-hats/bin/activate
python -m pip install setuptools pip wheel --upgrade
python -m pip install xxhash coffea #[spark]
MAKEFLAGS='-j8' python -m pip install xrootd==$(xrdcp --version 2>&1 | sed 's/v//')
ipython kernel install --user --name=coffea-hats
```
There will be some small amount of installation warnings.

Now, all notebooks should be runnable with the `coffea-hats` kernel.
