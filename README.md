# Computercraft Chest Monitor

Dit project bevat een script voor de Minecraft mod ComputerCraft dat de inhoud van een kist op een monitor weergeeft.

## Installatie

1. Plaats in CraftOS een computer naast een kist en een monitor. OF voer de volgende commandos uit in de CraftOS terminal:
```bash
wget https://raw.githubusercontent.com/samanft/computercraft-chest-monitor/main/setup_virtual_environment.lua 
```
```
setup_virtual_environment
```

2. Voer het volgende commando in de CraftOS terminal:

```bash
wget https://raw.githubusercontent.com/samanft/computercraft-chest-monitor/main/install.lua
```

3. Voer het install.lua script uit met het volgende commando:
```
install
```

Het install.lua script downloadt het chest_monitor.lua script van deze GitHub repository, maakt een startup.lua script dat het chest_monitor.lua script uitvoert bij het opstarten van de computer, en herstart de computer.

## Gebruik
Na de installatie start de chest monitor automatisch bij het opstarten van de computer. De chest monitor geeft de inhoud van de kist naast de computer weer op de monitor.
