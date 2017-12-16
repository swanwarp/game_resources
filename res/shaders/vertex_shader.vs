#version 120

uniform vec2 offset;

uniform vec2 lights[1000];

varying vec2 position;

void main(void)
{
	// transform the vertex position
    gl_Position = gl_ModelViewProjectionMatrix * gl_Vertex;
	gl_Position.z = gl_Position.x;
	
	position = gl_Vertex.xy;
	
    // transform the texture coordinates
    gl_TexCoord[0] = gl_TextureMatrix[0] * gl_MultiTexCoord0;

    // forward the vertex color
    gl_FrontColor = gl_Color;
}