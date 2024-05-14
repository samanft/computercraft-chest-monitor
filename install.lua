
-- Maak een HTTP-verzoek om het chest_monitor.lua script van je GitHub repository te downloaden. Sla het gedownloade script op als een bestand genaamd chest_monitor.lua op de computer.
shell.run("wget https://raw.githubusercontent.com/samanft/computercraft-chest-monitor/main/chest_monitor.lua")

-- Maak een startup.lua bestand aan dat het chest_monitor.lua script uitvoert. Dit zorgt ervoor dat de chest monitor automatisch start bij het opstarten van de computer.
local file = fs.open("startup.lua", "w")
file.writeLine("shell.run('chest_monitor.lua')")
file.close()

-- Herstart de computer om de chest monitor automatisch te starten.
shell.run("reboot")