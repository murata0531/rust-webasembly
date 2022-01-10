// The entry file of your WebAssembly module.

export function add(a: i32, b: i32): i32 {
  return a + b;
}

export function twice(x: i32) : f64 {
  let y:f64 = 0;
  for(let cnt = 0;cnt < 10;cnt++){
    let pi4:f64 = 0;
    for(let i:i32 = 0;i < x;i++){
        pi4 += (1 / (i * 4 + 1) - 1 / (i * 4 + 3));
    }
    y = pi4 * 4;
  }
  return y;
}

export function leibniz(x: i32) : f64 {
  let y:f64 = 0;
  for(let cnt = 0;cnt < 20;cnt++){
    let pi4:f64 = 0;
    for(let i:i32 = 0;i < x;i++){
      pi4 += (1 / (i * 4 + 1) - 1 / (i * 4 + 3));
    }
    y = pi4 * 4;
  }
  return y;
}
