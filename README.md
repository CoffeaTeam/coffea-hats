# Coffea tutorial resources
This is a collection of jupyter notebooks and associated files for use in coffea tutorials.
These tutorials are designed to run at coffea casa. Anyone with CERN credentials that is a member of the CMS VO
can login and use this service. That said, coffea can be installed in many different environments, including
the CMS LPC, CERN lxplus, [CERN SWAN service](http://swan.cern.ch), or personal machines. More installation
details are documented at https://coffeateam.github.io/coffea/installation.html

## Setup instructions
Follow [these instructions](https://coffea-casa.readthedocs.io/en/latest/cc_user.html#access) to login to coffea-casa.
In the docker image selection dialog, select the *Coffea Base image*.
Once loaded, you can clone this repository (`https://github.com/CoffeaTeam/coffea-hats.git`)
following the [git instructions](https://coffea-casa.readthedocs.io/en/latest/cc_user.html#using-git) further down in the same page.
Click on the `01-nanoevents.ipynb` notebook in the left pane to open it, and you should end up with something like this:

![JupyterLab screen](/img/notebook.png)

If you choose not to use coffea-casa, be aware that any xrootd file URLs in the notebooks will need to have their prefix changed from
`root://xcache/` to `root://cmsxrootd.fnal.gov/` or your favorite redirector.
