vec3 opRep( vec3 p, vec3 c )
{
    return mod(p,c) - 0.5 * c;
}

#pragma glslify: export(opRep)
