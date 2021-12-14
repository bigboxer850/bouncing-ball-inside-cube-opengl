
#version 410
in vec3 Position;
out vec3 Pos;

uniform mat4 gWorld;
uniform mat4 gmat;
out vec4 Color;

void main()
{
    Pos=Position;
   
    if(Position.x>-1.0 && Position.x<1.0)
   {
       gl_Position = gWorld*vec4(0.5 * Position, 1.0);
       Color=vec4(1.0,0.0,0.0,1.0);
        }
    else
    {
        gl_Position= gmat*vec4(0.5*Position,1.0);
        Color=vec4(0.0,1.0,0.0,1.0);
    }
    
   
}
