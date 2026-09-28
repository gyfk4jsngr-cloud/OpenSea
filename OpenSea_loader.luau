-- OpenSea bootstrap loader
-- Loads the intact upstream OpenSeaHub source instead of the PDF-reconstructed copy.
local SOURCE = "https://raw.githubusercontent.com/hxrendontcry/2kscripts/main/OpenSeaHub.luau"
local body = game:HttpGet(SOURCE)
assert(type(body) == "string" and #body > 1000, "OpenSea: failed to download source")
local chunk, err = loadstring(body)
assert(chunk, "OpenSea compile error: " .. tostring(err))
return chunk()
