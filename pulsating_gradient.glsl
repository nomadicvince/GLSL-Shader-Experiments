void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    vec2 xy = fragCoord.xy; //Coordinates for the current pixel
    xy.x = xy.x / iResolution.x; //We divide the coordinates by the screen size
    xy.y = xy.y / iResolution.y;
    // Now x is 0 for the leftmost pixel, and 1 for the rightmost pixel
    vec4 colorShad = vec4(0,0.0,0.0,1.0); //This is actually black right now
      colorShad.r =abs(sin(iGlobalTime) * cos(iGlobalTime));
      colorShad.b = xy.y; //Set  blue component to 1.0
      colorShad.g = xy.x;
    fragColor = colorShad;
}
