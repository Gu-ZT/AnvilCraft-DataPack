execute at @s anchored eyes run function #anc:blocks/playerset
execute unless score $ancSkylandMode ancConfig matches 0 at @s anchored eyes run function #anc_is:blocks/playerset
advancement revoke @s only anc:blocks/placement
