-- hyper = {"⌘", "⌥", "⌃"}
hyper = {"⌥"}
mash = {"⌥", "⌃", "shift"}

hs.application.enableSpotlightForNameSearches(true)

require "apps"
require "grid"

hs.hotkey.bind(mash, "r", function() hs.reload(); end) -- reload config
hs.hotkey.bind(mash, "a", function() hs.caffeinate.lockScreen(); end)
hs.alert("Hammerspoon config loaded")
