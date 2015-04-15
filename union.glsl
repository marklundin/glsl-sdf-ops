float opU( float d1, float d2 )
{
    return min(d1,d2);
}

vec2 opU( vec2 d1, vec2 d2 ){
	return ( d1.x < d2.x ) ? d1 : d2;
}

#pragma glslify: export(opU)