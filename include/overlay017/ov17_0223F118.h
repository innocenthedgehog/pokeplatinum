#ifndef POKEPLATINUM_OV17_0223F118_H
#define POKEPLATINUM_OV17_0223F118_H

#include "struct_decls/struct_02012744_decl.h"
#include "struct_defs/struct_02095C48.h"

#include "overlay017/struct_ov17_0223F2E4.h"
#include "overlay017/struct_ov17_0223F6E8.h"
#include "overlay017/struct_ov17_0223F744.h"

#include "bg_window.h"
#include "g3d_pipeline.h"
#include "palette.h"
#include "sprite_system.h"
#include "strbuf.h"
#include "text.h"

G3DPipelineBuffers *ov17_0223F140(int heapID);
void ov17_0223F1E0(G3DPipelineBuffers *param0);
void ov17_0223F1E8(int heapID, BgConfig *param1, SpriteManager *param2, UnkStruct_02012744 *param3, UnkStruct_ov17_0223F2E4 *param4, const Strbuf *param5, enum Font param6, TextColor param7, int param8, int param9, int param10, int param11, int param12, int param13, int param14);
void ov17_0223F2E4(UnkStruct_ov17_0223F2E4 *param0);
void ov17_0223F2F8(UnkStruct_ov17_0223F2E4 *param0, int param1, int param2, int param3);
Strbuf *ov17_0223F310(u32 param0, u32 heapID);
void ov17_0223F334(UnkStruct_02095C48 *param0, int param1);
void ov17_0223F374(UnkStruct_02095C48 *param0);
void ov17_0223F560(SpriteSystem *param0, SpriteManager *param1, PaletteData *param2, int param3, int param4, int param5, int param6);
void ov17_0223F5E8(SpriteManager *param0, int param1, int param2, int param3, int param4);
void ov17_0223F630(UnkStruct_ov17_0223F6E8 *param0, SpriteSystem *param1, SpriteManager *param2, int param3, int param4, int param5, int param6, int param7, int param8, int param9, u32 param10);
void ov17_0223F6C4(UnkStruct_ov17_0223F6E8 *param0);
UnkStruct_ov17_0223F744 *ov17_0223F70C(int heapID, PaletteData *param1, const u16 *param2, int param3, int param4, u32 param5);
void ov17_0223F744(UnkStruct_ov17_0223F744 *param0);
BOOL ov17_0223F760(void);

#endif // POKEPLATINUM_OV17_0223F118_H
