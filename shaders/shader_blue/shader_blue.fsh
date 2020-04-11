// Referenced https://www.youtube.com/watch?v=zGIx8SBrz5o
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord; //variable with 2 values - x and y value - poistion of the pixil
varying vec4 v_vColour; // have 4 values - colors red,green,blue,aplha

// the function that will actually run on each pixel
void main() 
{
	//gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	// Get the original color of the pixel
	vec4 OriginalColor = texture2D( gm_BaseTexture, v_vTexcoord );
	// Gets the orginal green colors
	float Green = 0.0;
	float Blue = OriginalColor.b;
	float Red = 0.0;
	float Alpha = .5;
	// Create the new color
	vec4 Color = vec4 (Red, Green, Blue, Alpha);
	// Output the new color
    gl_FragColor = Color;
}
