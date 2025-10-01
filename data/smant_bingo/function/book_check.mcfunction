$execute store result score @s book run clear @s written_book[written_book_content~{author:"$(name)"}] 0
execute if score @s book matches 0 run advancement revoke @s only smant_bingo:trigger_book
execute if score @s book matches 1.. run advancement grant @s only smant_bingo:do_write_book