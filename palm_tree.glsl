void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    vec2 xy = fragCoord.xy; //We obtain our coordinates for the current pixel
    xy.x = xy.x / iResolution.x; //We divide the coordinates by the screen size
    xy.y = xy.y / iResolution.y;
    vec2 q = xy - vec2(0.5, 0.5);

    vec4 color = vec4(0.0, 0.0, 0.7 ,1.0);

    float r = 0.2 + 0.1*cos(atan(q.y, q.x)*10.0);

    color *= smoothstep(r, r+0.01, length(q));
    fragColor = color;
}
