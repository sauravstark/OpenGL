//Simple Shader

//VertexShader
#version 330 core
layout(location = 0) in vec3 aPos;
void main()
{
	gl_Position = vec4(aPos.x, aPos.y, aPos.z, 1.0);
}
//Fragment Shader
#version 330 core
out vec4 FragColor;
void main()
{
	FragColor = vec4(1.0f, 0.5f, 0.2f, 1.0f);
}


//Pipelined Inputs

//VertexShader
#version 330 core
layout(location = 0) in vec3 aPos;
out vec4 vertexColor;
void main()
{
	gl_Position = vec4(aPos.x, aPos.y, aPos.z, 1.0);
	vertexColor = vec4(0.5, 0.0, 0.0, 1.0);
}
//Fragment Shader
#version 330 core
out vec4 FragColor;
in vec4 vertexColor;
void main()
{
	FragColor = vec4(1.0f, 0.5f, 0.2f, 1.0f);
}


//Uniforms

//VertexShader
#version 330 core
layout(location = 0) in vec3 aPos;
void main()
{
	gl_Position = vec4(aPos.x, aPos.y, aPos.z, 1.0);
}
//Fragment Shader
#version 330 core
out vec4 FragColor;
uniform vec4 ourColor;
void main()
{
	FragColor = ourColor;
}


//More Attributes

//VertexShader
#version 330 core
layout(location = 0) in vec3 aPos;
layout(location = 1) in vec3 aColor;
out vec3 ourColor;
void main()
{
	gl_Position = vec4(aPos, 1.0);
	ourColor = aColor;
}
//Fragment Shader
#version 330 core
out vec4 FragColor;
in vec3 ourColor;
void main()
{
	FragColor = vec4(ourColor, 1.0f);
}