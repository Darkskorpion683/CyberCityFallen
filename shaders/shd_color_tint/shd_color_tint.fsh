varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec3 filter_color; // RGB tint color

void main() {
    vec4 base_color = texture2D(gm_BaseTexture, v_vTexcoord);

    // Preserve sprite's original alpha value
    if (base_color.a < 0.1) discard;  // Ensures transparent pixels are ignored

    // Apply color tint with correct alpha handling
    gl_FragColor = mix(base_color, vec4(filter_color, 1.0), 0.2); 
}

