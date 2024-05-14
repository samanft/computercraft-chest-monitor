-- chest_monitor.lua
function print_inventory_on_monitor(chest, monitor)
    monitor.clear()
    local width, height = monitor.getSize()
    local heightPosition = 0
    for slot, item in pairs(chest.list()) do
        local itemName = string.gsub(item.name, "minecraft:", "")
        local text = (string.format("%s", itemName))
        monitor.setCursorPos(width / 2 - #text / 2 + 1, heightPosition + height / 2 - table.getn(chest.list()) + 1)
        monitor.write(text)
        heightPosition = heightPosition + 1
        local text2 = (string.format("%dx", item.count))
        monitor.setCursorPos(width / 2 - #text2 / 2 + 1, heightPosition + height / 2 - table.getn(chest.list()) + 1)
        monitor.write(text2)
        heightPosition = heightPosition + 2
    end
end

---  De while loop om elke 10 seconden de monitor te updaten
while true do
    local monitor = peripheral.find("monitor")
    local chest = peripheral.find("chest")    
    print_inventory_on_monitor(chest, monitor)

   sleep(10)
end
