extends Node

const SQLite=preload("res://addons/godot-sqlite/bin/gdsqlite.gdns")
var db
var db_name="res://Database/brave"

func _ready():
	pass # Replace with function body.

func Add_Score(Score,Pseudo):
	db=SQLite.new()
	db.path=db_name
	db.open_db()
	var dict : Dictionary=Dictionary()
	var Name="Partie"
	dict ["Score"] = Score
	dict ["Pseudo"]= Pseudo
	dict ["Temps"]= 1
	db.insert_row(Name,dict)
	db.query("Select * from "+Name+";")
	for i in range(0, db.query_result.size()):
		print("Result", db.query_result[i]["Score"])
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
