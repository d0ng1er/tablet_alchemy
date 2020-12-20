dofile_once('mods/tablet_alchemy/files/tblt.lua')
dofile_once('mods/tablet_alchemy/files/alch.lua')


function OnModPostInit()
    recipies = get_alchemy()
    print(recipies)
    for k,v in pairs(TABLET_FILE_NAMES) do
        tablet_append(k, 'One of the ingredients for the universal elixir is pee.')
    end
end
