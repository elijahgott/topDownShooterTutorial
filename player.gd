extends CharacterBody2D

signal healthDepleted

var health = 100.0

func _physics_process(delta: float) -> void:
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction * 600
	move_and_slide()
	
	var aim_rotation = Input.get_vector("aim_left", "aim_right", "aim_up", "aim_down").angle()
	if(aim_rotation != 0):
		%MachineGun.rotation = aim_rotation
	
	if (velocity.length() > 0.0):
		%HappyBoo.play_walk_animation()
	else:
		%HappyBoo.play_idle_animation()
	
	const DAMAGE_RATE = 10.0
	
	var overlappingMobs = %HurtBox.get_overlapping_bodies()
	if(overlappingMobs.size() > 0):
		health -= DAMAGE_RATE * overlappingMobs.size() * delta
		%HealthBar.value = health
		if(health <= 0):
			healthDepleted.emit()
