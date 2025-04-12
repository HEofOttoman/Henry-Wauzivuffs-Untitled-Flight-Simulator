shader_type canvas_item;
// Pause Menu Blur Shader
// Courtesy of *Kobedev*
// From tutorial at: https://www.youtube.com/watch?v=e9-WQg1yMCY

uniform sampler2D SCREEN_TEXTURE: hint_screen_texture, filter_linear_mipmap;

uniform float lod: hint_range(0.0, 5) = 0.0;

void fragment() {
	// Called for every pixel the material is visible on.
	vec4 color = texture(SCREEN_TEXTURE, SCREEN_UV, lod);
	COLOR = color;
}
