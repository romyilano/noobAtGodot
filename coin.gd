extends Area2D

var screensize = Vector2.ZERO

func pickup():
		# waits until the end of the current frame to disablet he collision
	$CollisionShape2D.set_deferred("disabled", true)
	var tw = create_tween().set_parallel().set_trans(Tween.TRANS_QUAD)
	tw.tween_property(self, "scale", scale * 3, 0.3)
	tw.tween_property(self, "modulate:a", 0.0, 0.3)
	await tw.finished
	# remove the node
	queue_free()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
