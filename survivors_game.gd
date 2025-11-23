extends Node2D

var selected_slot = 0

func spawnMob():
	var newMob = preload("res://mob.tscn").instantiate()
	%PathFollow2D.progress_ratio = randf()
	newMob.global_position = %PathFollow2D.global_position
	add_child(newMob)


func _on_timer_timeout() -> void:
	spawnMob()


func _on_player_health_depleted() -> void:
	%GameOver.visible = true
	get_tree().paused = true

#func updateUI():
	#if(Input.is_action_just_pressed("hotbar_left")):
			#if(selected_slot == 0):
				#selected_slot = 2
				#$Hotbar.select(selected_slot)
			#else:
				#selected_slot = selected_slot - 1
				#$Hotbar.select(selected_slot)
		#if(Input.is_action_just_pressed("hotbar_right")):
			#if(selected_slot == 2):
				#selected_slot = 0
				#$Hotbar.select(selected_slot)
			#else:
				#selected_slot = selected_slot + 1
				#$Hotbar.select(selected_slot)
