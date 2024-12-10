fx_version 'cerulean'
game 'gta5'

description 'A simple script'
author 'The DevRems'
name 'pedcreation'

version '1.0.0'

lua54 'yes'


shared_script {
    '@ox_lib/init.lua',
    'shared/config.lua'
}


client_scripts {
    'client/*.lua',
}

server_scripts {
    'server/*.lua',
}

dependencies {
    'ox_lib'
}