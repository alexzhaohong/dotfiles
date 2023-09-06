local function toggleApplication(bundleID)
    local app = hs.application.find(bundleID)
    
    if not app or app:isHidden() then
        hs.application.launchOrFocusByBundleID(bundleID)
    elseif hs.application.frontmostApplication() ~= app then
        app:activate()
    else
        app:hide()
    end
end

-- find bundleID in Hammerspoon console by hs.application'hint':bundleID()
-- browser
hs.hotkey.bind(hyper, "g", function() toggleApplication("com.google.Chrome") end)
hs.hotkey.bind(hyper, "s", function() toggleApplication("com.apple.Safari") end)
hs.hotkey.bind(hyper, "a", function() toggleApplication("company.thebrowser.Browser") end)

-- other
hs.hotkey.bind(hyper, "f", function() toggleApplication("com.apple.finder") end)
hs.hotkey.bind(hyper, "m", function() toggleApplication("com.apple.mail") end)
hs.hotkey.bind(hyper, "p", function() toggleApplication("com.apple.systempreferences") end)

-- dev work
hs.hotkey.bind(hyper, "v", function() toggleApplication("com.microsoft.VSCode") end)
hs.hotkey.bind(hyper, "t", function() toggleApplication("com.apple.Terminal") end)
hs.hotkey.bind(hyper, "w", function() toggleApplication("dev.warp.Warp-Stable") end)
hs.hotkey.bind(hyper, "u", function() toggleApplication("com.sublimetext.4") end)
hs.hotkey.bind(hyper, "e", function() toggleApplication("com.sublimemerge") end)

-- social
hs.hotkey.bind(hyper, "d", function() toggleApplication("com.hnc.Discord") end)
hs.hotkey.bind(hyper, "m", function() toggleApplication("com.apple.MobileSMS") end)
hs.hotkey.bind(hyper, "help", function() toggleApplication("com.spotify.client") end) -- help is insert key
