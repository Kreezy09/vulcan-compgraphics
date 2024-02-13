#version 450

layout(location = 0) out vec3 fragColor;

layout(binding = 0) uniform UniformBufferObject {
    mat4 MVP;
} ubo;

vec2 positions[12] = vec2[](
    vec2(-1.0, 0.0), // X-axis start
    vec2(1.0, 0.0),  // X-axis end
    vec2(0.0, -1.0), // Y-axis start
    vec2(0.0, 1.0),  // Y-axis end
    vec2(-0.2, -0.3),
    vec2(-0.1, -0.3),
    vec2(0.0, -0.2),
    vec2(0.1, -0.1),
    vec2(0.2, -0.0),
    vec2(0.3, 0.1),
    vec2(0.4, 0.1),
    vec2(0.5, 0.2)
);

void main() {
    gl_Position = ubo.MVP * vec4(positions[gl_VertexIndex], 0.0, 1.0);
    //fragColor = vec3(0.0, 0.0, 1.0); // Blue color
    fragColor = (gl_VertexIndex < 4) ? vec3(0.0, 0.0, 0.0) : vec3(0.0, 0.0, 1.0);

}

