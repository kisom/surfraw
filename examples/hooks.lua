-- Using surfraw from elinks. To search using an elvi from
-- the Go to URL dialog box, use the syntax "!elvis your
-- search terms". E.g., to search for 
-- Wargames torrents in piratebay, type "!piratebay
-- wargames" in the Go to URL dialog box.
--
-- You need to have surfraw installed, obviously, and your
-- lua install should have io.popen.

function match (prefix, url)
    return string.sub (url, 1, string.len (prefix)) == prefix
end

function tosurfraw (str)
    return "surfraw -p " .. str .. " 2>/dev/null"
end

function goto_url_hook (url, current_url)
    if match ("!", url) then
        sr = tosurfraw (string.sub (url, 2))
        urlfile = io.popen (sr)
        finalurl = urlfile:read('*all')
        urlfile:close()
        return finalurl

    else
        return url
    end
end
