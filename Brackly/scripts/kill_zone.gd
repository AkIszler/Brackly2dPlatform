extends Area2D

@onready var deathCounter = $Label

@onready var timer = $Timer;

func _on_body_entered(body:Node2D) -> void:
	timer.start();
	print("you done messed up A A RON")
	


func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
	
