vec3 opTx( vec3 p, mat4 m )
{
    return q = invert( m ) * p;
}

#pragma glslify: export(opTx)