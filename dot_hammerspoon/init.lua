require("hyper")
require("console")
-- require("mouse")

-- https://www.hammerspoon.org/docs/hs.window.switcher.html
--
switcher = hs.window.switcher.new(hs.window.filter.new():setCurrentSpace(true):setDefaultFilter{}) -- include minimized/hidden windows, current Space only
switcher.ui.showThumbnails = false

-- bind to hotkeys; WARNING: at least one modifier key is required!
hs.hotkey.bind('alt','escape','Next window',function()switcher:next()end)
hs.hotkey.bind('alt-shift','escape','Prev window',function()switcher:previous()end)

-- function reload_config(files)
--    hs.reload()
-- end
-- hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reload_config):start()
hs.alert.show("Config loaded")
