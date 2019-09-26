#include "include/common.glsl"
#include "include/uniforms.glsl"

qf_varying vec3 v_Normal;

#ifdef VERTEX_SHADER

in vec4 a_Position;
in vec3 a_Normal;

void main() {
	gl_Position = u_P * u_V * u_M * a_Position;
	v_Normal = mat3( u_M ) * a_Normal;
}

#else

out vec3 f_Normal;

void main() {
	f_Normal = normalize( v_Normal );
}

#endif
