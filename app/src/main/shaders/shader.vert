//#version 450

// Colour passed to the fragment shader
//layout(location = 0) out vec3 fragColor;

// Uniform buffer containing an MVP matrix.
// Currently the vulkan backend only sets the rotation matix
// required to handle device rotation.
//layout(binding = 0) uniform UniformBufferObject {
  //  mat4 MVP;
//} ubo;

//vec2 positions[12] = vec2[](
  //  vec2(0.2, 0.4), // Bottom left
    //vec2(0.8, 0.4),  // Bottom right
   // vec2(1.0, 0.8),   // Top right kati
 //   vec2(1.0, 0.8),   // Top right kati
   // vec2(0.3, 1.2), // Bottom left y juu
   // vec2(0.7, 1.2),   // Top right y juu
    //vec2(0.7, 1.2),   // Top right y juu
    //vec2(0.0, 0.8),   // Top left katikati
    //vec2(0.2, 0.4), // Bottom left chini
    //vec2(0.2, 0.4), // Bottom left chini
    //vec2(1.0, 0.8),
    //vec2(0.7, 1.2)
//);


//vec3 colors[12] = vec3[](
//    vec3(0.67, 0.1, 0.2), // Color for bottom left
  //  vec3(0.67, 0.1, 0.2), // Color for bottom right
   // vec3(0.67, 0.1, 0.2), // Color for top right
   // vec3(0.67, 0.1, 0.2), // Color for bottom left
   // vec3(0.67, 0.1, 0.2), // Color for top right
   // vec3(0.67, 0.1, 0.2),  // Color for top left
   // vec3(0.67, 0.1, 0.2), // Color for bottom left
    //vec3(0.67, 0.1, 0.2), // Color for bottom right
    //vec3(0.67, 0.1, 0.2), // Color for top right
    //vec3(0.67, 0.1, 0.2), // Color for bottom left
    //vec3(0.67, 0.1, 0.2), // Color for top right
    //vec3(0.67, 0.1, 0.2)  // Color for top left
//);

//void main() {
  //  gl_Position = ubo.MVP * vec4(positions[gl_VertexIndex], 0.0, 1.0);
    //fragColor = colors[gl_VertexIndex];
//}
#version 450

layout(location = 0) out vec3 fragColor;

layout(binding = 0) uniform UniformBufferObject {
    mat4 MVP;
} ubo;

vec2 positions[8] = vec2[](
    vec2(-0.2, 0.3),
    vec2(-0.1, 0.3),
    vec2(0.0, 0.2),
    vec2(0.1, 0.1),
    vec2(0.2, 0.0),
    vec2(0.3, -0.1),
    vec2(0.4, -0.1),
    vec2(0.5, -0.2)
);

void main() {
    gl_Position = ubo.MVP * vec4(positions[gl_VertexIndex], 0.0, 1.0);
    fragColor = vec3(0.0, 0.0, 1.0); // Blue color
}

