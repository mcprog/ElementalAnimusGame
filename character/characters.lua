PLAYER_GO = hash("/player")
SLIME_GO = hash("/slime")
HEALTH_BAR_GO_PATH = "health_bar"

COLLISION_MESSAGE = hash("collision_response")
TRIGGER_MESSAGE = hash("trigger_response")
UPDATE_HEALTH = hash("update_health")

SLIME_MAX_LIFETIME = 30
SLIME_MIN_LIFETIME = 10

function update_health(scaled_health_px_width, health_pos, new_health, max_health)

	local scale_factor = new_health / max_health
	local pixel_width = scaled_health_px_width * scale_factor --should be correct
	-- -half health_px_width + pixel_width
	local px_offset = -scaled_health_px_width / 2 + pixel_width / 2
	local health_pos = go.get_position(HEALTH_BAR_GO_PATH)
	health_pos.x = px_offset

	go.set(HEALTH_BAR_GO_PATH, "scale.x", pixel_width / scaled_health_px_width)
	go.set_position(health_pos, HEALTH_BAR_GO_PATH)
end