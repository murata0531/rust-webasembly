// The entry file of your WebAssembly module.

export function add(a: i32, b: i32): i32 {
  return a + b;
}

export function twice(x: i32) : f32 {
  let pi4:f32 = 0;
  for(let i:i32 = 0;i < x;i++){
    let float_i:f32 = i as f32;
    pi4 += (1 / (float_i * 4 + 1) - 1 / (float_i * 4 + 3));
  }
  return pi4 * 4;
}

export function leibniz(x: i32) : f32 {
  let pi4:f32 = 0;
  for(let i:i32 = 0;i < x;i++){
    let float_i:f32 = i as f32;
    pi4 += (1 / (float_i * 4 + 1) - 1 / (float_i * 4 + 3));
  }
  return pi4 * 4;
}