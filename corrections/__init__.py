import importlib.resources
from coffea.lumi_tools import LumiMask

with importlib.resources.path("corrections", "Cert_314472-325175_13TeV_17SeptEarlyReReco2018ABC_PromptEraD_Collisions18_JSON.txt") as path:
    lumimask = LumiMask(path)

