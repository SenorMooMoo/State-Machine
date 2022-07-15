extends "res://state_machine/state.gd"
"""
Goal: Stop all movements for a given amount of time

Todo:
	1. Recieve input from transition
	2. Pause movement
	3. Add vizual effect
	4. Write unit test
"""
func enter():
	owner.get_node("AnimationPlayer").play("stagger")


func _on_animation_finished(anim_name):
	assert(anim_name == "stagger")
	emit_signal("finished", "previous")
