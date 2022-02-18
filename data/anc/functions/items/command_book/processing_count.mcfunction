tellraw @s {"translate":"anc.item.command_book.processing_count","bold":false,"with":[{"score":{"name":"$ancProcessingCount","objective":"ancConfig"},"color":"green","bold":true,"clickEvent":{"action":"suggest_command","value":"/scoreboard players set $ancProcessingCount ancConfig 4"}}]}
function anc:items/command_book/reload
