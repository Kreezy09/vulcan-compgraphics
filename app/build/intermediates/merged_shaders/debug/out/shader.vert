#version 450

layout(location = 0) out vec3 fragColor;

layout(binding = 0) uniform UniformBufferObject {
    mat4 MVP;
} ubo;

vec2 positions[13] = vec2[](
    //x axis coordinates
    vec2(-1.0, 0.0), // start of x axis
    vec2(1.0, 0.0),  // end of x axis
    //y axis coordinates
    vec2(0.0, -1.0), // start of y
    vec2(0.0, 1.0),  // end of y
    //DDA line generated point coordinates
    vec2(-0.3, -0.4), //starting point
    vec2(-0.2, -0.3),
    vec2(-0.1, -0.3),
    vec2(0.0, -0.2),
    vec2(0.1, -0.1),
    vec2(0.2, -0.0),
    vec2(0.3, 0.1),
    vec2(0.4, 0.1),
    vec2(0.5, 0.2) //ending point
);

void main() {
    gl_Position = ubo.MVP * vec4(positions[gl_VertexIndex], 0.0, 1.0);
    //the ternary operator assigns fragcolor a value based on the vertex index
    //if gl_VertexIndex is less than 4 meaning the first 4 (0 to 3) coordinates will be assigned color black
    //if the index is 4 or greater the color assigned is blue
    fragColor = (gl_VertexIndex < 4) ? vec3(0.0, 0.0, 0.0) : vec3(0.0, 0.0, 1.0);
    //this is to ensure the x and y axis lines are black and the line is blue

}

