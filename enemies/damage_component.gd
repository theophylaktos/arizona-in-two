extends Node

class_name DamageComponent

@export var health: float = 100.0
@onready var parent = get_parent()

func accept_bullet_(bullet: Bullet):
	var damage = bullet.damage #exported damage
	var effects = bullet.effects #exported effects (string array)
	#do certain actions based on the effects here
	take_damage(damage)

func take_damage(damage: float):
	health -= damage #take damage
	if(health <= 0):
		parent.suicide()
	parent.damaged_sequence()
