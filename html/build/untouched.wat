(module
 (type $i32_=>_f32 (func (param i32) (result f32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (global $~lib/memory/__data_end i32 (i32.const 8))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16392))
 (global $~lib/memory/__heap_base i32 (i32.const 16392))
 (memory $0 0)
 (table $0 1 funcref)
 (elem $0 (i32.const 1))
 (export "add" (func $assembly/index/add))
 (export "twice" (func $assembly/index/twice))
 (export "leibniz" (func $assembly/index/leibniz))
 (export "memory" (memory $0))
 (func $assembly/index/add (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $assembly/index/twice (param $0 i32) (result f32)
  (local $1 f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  f32.const 0
  local.set $1
  i32.const 0
  local.set $2
  loop $for-loop|0
   local.get $2
   local.get $0
   i32.lt_s
   local.set $3
   local.get $3
   if
    local.get $2
    f32.convert_i32_s
    local.set $4
    local.get $1
    f32.const 1
    local.get $4
    f32.const 4
    f32.mul
    f32.const 1
    f32.add
    f32.div
    f32.const 1
    local.get $4
    f32.const 4
    f32.mul
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
 (func $assembly/index/leibniz (param $0 i32) (result f32)
  (local $1 f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  f32.const 0
  local.set $1
  i32.const 0
  local.set $2
  loop $for-loop|0
   local.get $2
   local.get $0
   i32.lt_s
   local.set $3
   local.get $3
   if
    local.get $2
    f32.convert_i32_s
    local.set $4
    local.get $1
    f32.const 1
    local.get $4
    f32.const 4
    f32.mul
    f32.const 1
    f32.add
    f32.div
    f32.const 1
    local.get $4
    f32.const 4
    f32.mul
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
