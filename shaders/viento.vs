#version 330 core
// Igual que lighting.vs, pero mueve las tiras del papel picado con el viento (animacion por codigo).
// Entre mas abajo del cordel y mas lejos de los postes esta un vertice, mas se mueve.
layout (location = 0) in vec3 position;
layout (location = 1) in vec3 normal;
layout (location = 2) in vec2 texCoords;

out vec3 Normal;
out vec3 FragPos;
out vec2 TexCoords;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;
uniform float viento;   // fuerza del viento: 0 = quieto, 1 = viento completo
uniform float tiempo;   // segundos desde que empezo el programa
uniform float fase;     // desfase de cada tira para que no se muevan todas igual

void main()
{
    vec3 p = position;
    float bajo = clamp(3.1 - p.y, 0.0, 0.8);
    float centro = clamp(1.0 - (p.x / 2.45) * (p.x / 2.45), 0.0, 1.0);
    float ola = sin(tiempo * 3.2 + p.x * 1.8 + fase) + 0.4 * sin(tiempo * 7.1 + p.x * 4.0 + fase);
    p.z += viento * ola * (0.5 * bajo + 0.06) * centro;
    p.y += viento * 0.04 * abs(ola) * bajo * centro;

    gl_Position = projection * view * model * vec4(p, 1.0f);
    FragPos = vec3(model * vec4(p, 1.0f));
    Normal = mat3(transpose(inverse(model))) * normal;
    TexCoords = texCoords;
}
