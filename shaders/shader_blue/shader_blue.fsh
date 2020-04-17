// Referenced https://www.youtube.com/watch?v=zGIx8SBrz5o
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord; //variable with 2 values - x and y value - poistion of the pixil
varying vec4 v_vColour; // have 4 values - colors red,green,blue,aplha

// the function that will actually run on each pixel
void main() 
{
	gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	gl_FragColor.r = 0.0;
	gl_FragColor.g = 0.0;
}
