// RUN: llvm-mc -arch=amdgcn -show-encoding %s | FileCheck %s
// RUN: llvm-mc -arch=amdgcn -mcpu=SI -show-encoding %s | FileCheck %s

//===----------------------------------------------------------------------===//
// Instructions
//===----------------------------------------------------------------------===//

s_movk_i32 s2, 0x6
// CHECK: s_movk_i32 s2, 0x6 ; encoding: [0x06,0x00,0x02,0xb0]

s_cmovk_i32 s2, 0x6
// CHECK: s_cmovk_i32 s2, 0x6 ; encoding: [0x06,0x00,0x02,0xb1]

s_cmpk_eq_i32 s2, 0x6
// CHECK: s_cmpk_eq_i32 s2, 0x6 ; encoding: [0x06,0x00,0x82,0xb1]

s_cmpk_lg_i32 s2, 0x6
// CHECK: s_cmpk_lg_i32 s2, 0x6 ; encoding: [0x06,0x00,0x02,0xb2]

s_cmpk_gt_i32 s2, 0x6
// CHECK: s_cmpk_gt_i32 s2, 0x6 ; encoding: [0x06,0x00,0x82,0xb2]

s_cmpk_ge_i32 s2, 0x6
// CHECK: s_cmpk_ge_i32 s2, 0x6 ; encoding: [0x06,0x00,0x02,0xb3]

s_cmpk_lt_i32 s2, 0x6
// CHECK: s_cmpk_lt_i32 s2, 0x6 ; encoding: [0x06,0x00,0x82,0xb3]

s_cmpk_le_i32 s2, 0x6
// CHECK: s_cmpk_le_i32 s2, 0x6 ; encoding: [0x06,0x00,0x02,0xb4]

s_cmpk_eq_u32 s2, 0x6
// CHECK: s_cmpk_eq_u32 s2, 0x6 ; encoding: [0x06,0x00,0x82,0xb4]

s_cmpk_lg_u32 s2, 0x6
// CHECK: s_cmpk_lg_u32 s2, 0x6 ; encoding: [0x06,0x00,0x02,0xb5]

s_cmpk_gt_u32 s2, 0x6
// CHECK: s_cmpk_gt_u32 s2, 0x6 ; encoding: [0x06,0x00,0x82,0xb5]

s_cmpk_ge_u32 s2, 0x6
// CHECK: s_cmpk_ge_u32 s2, 0x6 ; encoding: [0x06,0x00,0x02,0xb6]

s_cmpk_lt_u32 s2, 0x6
// CHECK: s_cmpk_lt_u32 s2, 0x6 ; encoding: [0x06,0x00,0x82,0xb6]

s_cmpk_le_u32 s2, 0x6
// CHECK: s_cmpk_le_u32 s2, 0x6 ; encoding: [0x06,0x00,0x02,0xb7]

s_addk_i32 s2, 0x6
// CHECK: s_addk_i32 s2, 0x6 ; encoding: [0x06,0x00,0x82,0xb7]

s_mulk_i32 s2, 0x6
// CHECK: s_mulk_i32 s2, 0x6 ; encoding: [0x06,0x00,0x02,0xb8]

s_cbranch_i_fork s[2:3], 0x6
// CHECK: s_cbranch_i_fork s[2:3], 0x6 ; encoding: [0x06,0x00,0x82,0xb8]

s_getreg_b32 s2, 0x6
// CHECK: s_getreg_b32 s2, 0x6 ; encoding: [0x06,0x00,0x02,0xb9]

s_setreg_b32 s2, 0x6
// CHECK: s_setreg_b32 s2, 0x6 ; encoding: [0x06,0x00,0x82,0xb9]

s_setreg_imm32_b32 0xff, 0x6
// CHECK: s_setreg_imm32_b32 0xff, 0x6 ; encoding: [0x06,0x00,0x80,0xba,0xff,0x00,0x00,0x00]
