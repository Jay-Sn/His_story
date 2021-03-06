/// @description wrap(value, min, max)
/// @function wrap
/// @param value The value to wrap into the bounds
/// @param min Minimum bound, inclusive
/// @param max Maximum bound, inclusive
// Returns the value wrapped to the range [min, max] (min and max can be swapped).
// Calls floor() on reals, but GML's modulo is doing something weird and original_wrap just hangs indefinitely on some values anyways so oh well.
//
// Credit: https://www.reddit.com/r/gamemaker/comments/6s2wni/arithmetic_wrap/

var value = floor(argument0);
var _min = floor(min(argument1, argument2));
var _max = floor(max(argument1, argument2));
var range = _max - _min;

while(value < _min) value += range;
while(value > _max) value -= range;

return value;