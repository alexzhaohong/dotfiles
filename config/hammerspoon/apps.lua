local hyper = {"⌘", "⌥", "⌃"}
local mash = {"⌥", "⌃"}

local function toggleApplication(name)
  local app = hs.application.find(name)
  if not app or app:isHidden() then
    hs.application.launchOrFocus(name)
  elseif hs.application.frontmostApplication() ~= app then
    app:activate()
  else
    app:hide()
  end
end

-- browser
hs.hotkey.bind(hyper, "g", function() toggleApplication("Google Chrome") end)
hs.hotkey.bind(hyper, "s", function() toggleApplication("Safari") end)
hs.hotkey.bind(hyper, "a", function() toggleApplication("Arc") end)

-- other
hs.hotkey.bind(hyper, "c", function() toggleApplication("Visual Studio Code") end)
hs.hotkey.bind(hyper, "f", function() toggleApplication("Finder") end)
hs.hotkey.bind(hyper, "m", function() toggleApplication("Mail") end)
hs.hotkey.bind(hyper, "p", function() toggleApplication("System Settings") end)

-- dev work
hs.hotkey.bind(hyper, "`", function() toggleApplication("Terminal") end)
hs.hotkey.bind(hyper, "w", function() toggleApplication("Warp") end)
hs.hotkey.bind(hyper, "t", function() toggleApplication("Sublime Text") end)
hs.hotkey.bind(hyper, "m", function() toggleApplication("Sublime Merge") end)
