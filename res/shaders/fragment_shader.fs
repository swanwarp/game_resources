#version 120

varying vec2 position;

uniform vec2 lights[1000];

float distance(vec2 first, vec2 second)
{
	return sqrt(pow(first.x - second.x, 2) + pow(first.y - second.y, 2));
}

void main(void)
{
	float result_intensity = 0.0;
	for(int i = 0; i < 1000; i++)
	{
		result_intensity += 0.1 / pow(distance(position, lights[i]), 2);
	}
	gl_FragColor = vec4(result_intensity, result_intensity, result_intensity, 1.0);
}