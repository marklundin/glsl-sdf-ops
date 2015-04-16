# Distance field operations #
A collection of useful operators and modifiers for distance field equations from iQ's excellent [distance functions](http://iquilezles.org/www/articles/distfunctions/distfunctions.htm) page. They can be used with [glsl-sdf-primitives](https://github.com/stackgl/glslify) for combining and transforming basic primitive shapes. 

Operators include `union`, `subtract`, `intersect` and modifier include `repeat`, `rotate` and `twist`.

The library is compatible with [glslify](https://github.com/stackgl/glslify).

## Usage ##
```
vec2 doModel(vec3 p);
#pragma glslify: raytrace = require('glsl-raytrace', map = doModel, steps = 90)

// import some operators
#pragma glslify: opU 	= require('glsl-sdf-ops/union')
#pragma glslify: opTwist 	= require('glsl-sdf-ops/twist')

// import a couple of primitives
#pragma glslify: sdTorus 	= require('glsl-sdf-primitives/sdTorus')
#pragma glslify: sdSphere 	= require('glsl-sdf-primitives/sdSphere')

vec2 doModel(vec3 p) {
  return opU( vec2( sdTorus( opTwist( p ), vec2( 0.20, 0.05 )), 0.0 )),
              vec2( sdSphere( p, 0.2, 0.0 ), 1.0 ));
}
```

## Operators ##
`intersection`, `union`, `subtract`

## Modifiers ##
`twist`, `bend`, `repeat`, `rotate-translate`

## Ray Marching ##
`ao`, `soft-shadow`

