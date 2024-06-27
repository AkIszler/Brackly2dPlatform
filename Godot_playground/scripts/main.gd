extends Node

var health := 100;
# Called when the node enters the scene tree for the first time.
func _ready() -> void:

	$Label.text = "Health: %s" % health;
	$Label.modulate = Color.GREEN;


func _input(event: InputEvent):
	if event.is_action_pressed("my_action"):
		$Label.modulate = Color.RED;
		health -= 10;

		if health < 100 and health > 50:
			$Label.modulate = Color.GREEN;
			$Label.text = "Health: %s" % health + "\nYou are healthy";
		elif health <= 50 and health > 0:
			$Label.modulate = Color.YELLOW;
			$Label.text = "Health: %s" % health + "\nYou are sick";
		elif health == 0:
			$Label.modulate = Color.RED;
			$Label.text = "Health: %s" % health + "\nYou are dead";	
		else:
			$Label.modulate = Color.WHITE;
			$Label.text = "Health is full";	