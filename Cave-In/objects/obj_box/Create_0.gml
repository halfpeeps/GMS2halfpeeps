phys_mass = 10
phys_inertia = 1
phys_density = 1
phys_restitution = 1
phys_collision_group = 1
phys_linear_damping = 0
phys_angular_damping = 0
phys_friction = .7

var fix, inst;
fix = physics_fixture_create();
physics_fixture_set_box_shape(fix, sprite_width / 2, sprite_height / 2);

physics_fixture_set_density(fix, phys_density)
physics_fixture_set_restitution(fix, phys_restitution)
physics_fixture_set_collision_group(fix, phys_collision_group)
physics_fixture_set_linear_damping(fix, phys_linear_damping)
physics_fixture_set_angular_damping(fix, phys_angular_damping)
physics_fixture_set_friction(fix, phys_friction)

inst = instance_create_layer(x, y, "Instances", obj_box_phys);
fix_set = physics_fixture_bind_ext(fix, inst, sprite_width / 2, sprite_height / 2);
physics_fixture_delete(fix);


image_alpha = 0

instance_destroy(self)