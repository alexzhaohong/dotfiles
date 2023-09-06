-- hyper = {"⌘", "⌥", "⌃"}
hyper = {"⌥"}
mash = {"⌥", "⌃", "shift"}
ctrl = {"⌃"}

hs.application.enableSpotlightForNameSearches(true)

require "apps"
require "grid"

hs.hotkey.bind(mash, "r", function() hs.reload(); end) -- reload config
hs.hotkey.bind(mash, "c", function() hs.openConsole(); end) -- open console
hs.hotkey.bind(mash, "a", function() hs.caffeinate.lockScreen(); end)
hs.hotkey.bind(ctrl, "a", function() hs.eventtap.keyStroke({}, "left"); end)
hs.hotkey.bind(ctrl, "d", function() hs.eventtap.keyStroke({}, "right"); end)
hs.hotkey.bind(ctrl, "s", function() hs.eventtap.keyStroke({}, "down"); end)
hs.hotkey.bind(ctrl, "w", function() hs.eventtap.keyStroke({}, "up"); end)
hs.hotkey.bind(ctrl, "q", function() hs.eventtap.keyStroke({}, "pageup"); end)
hs.hotkey.bind(ctrl, "e", function() hs.eventtap.keyStroke({}, "pagedown"); end)
hs.alert("Hammerspoon config loaded")
