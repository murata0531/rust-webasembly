(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_f32 (func (param i32) (result f32)))
 (memory $0 0)
 (export "add" (func $assembly/index/add))
 (export "twice" (func $assembly/index/twice))
 (export "leibniz" (func $assembly/index/twice))
 (export "memory" (memory $0))
 (func $assembly/index/add (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $assembly/index/twice (param $0 i32) (result f32)
  (local $1 f32)
  (local $2 i32)
  loop $for-loop|0
   local.get $0
   local.get $2
   i32.gt_s
   if
    local.get $1
    f32.const 1
    local.get $2
    f32.convert_i32_s
    f32.const 4
    f32.mul
    local.tee $1
    f32.const 1
    f32.add
    f32.div
    f32.const 1
    local.get $1
    f32.const 3
    f32.add
    f32.div
    f32.sub
    f32.add
    local.set $1
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $1
  f32.const 4
  f32.mul
 )
)
