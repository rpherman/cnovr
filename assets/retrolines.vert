#version AUTOVER
#include "cnovr.glsl"

in vec4 position; //#MAPATTRIB position 0
in vec4 normal;   //#MAPATTRIB normal 2

out vec3 localpos;

void main()
{
	gl_Position = umPerspective * umView * umModel * vec4(position.xyz,1.0);
	localpos = normal.xyz;
}
