------------------------------------------------------------
--                                                        --
--                      LI RESOURCES                      --
--     Providing high-quality resources just for you.     --
--        ----------------------------------------        --
--                Website: li-resources.com               --
--          Documentation: docs.li-resources.com          --
--             Discord: discord.gg/Q59YY8WV4J             --
--                                                        --
------------------------------------------------------------

fx_version "cerulean"
game "gta5"
lua54 "yes"

author "LI Resources"
description "Simple and good-looking notification system."
version "1.0.0"

ui_page 'dist/index.html'
files {
    'dist/index.html',

    'dist/assets/**'
}

client_script {
    "source/client/main.lua"
}

shared_script {
    "shared/config.lua"
} 