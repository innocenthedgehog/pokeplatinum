#include "macros/scrcmd.inc"
#include "res/text/bank/pastoria_city_northeast_house.h"

    .data

    ScriptEntry _000E
    ScriptEntry _030C
    ScriptEntry _031F
    ScriptEntryEnd

_000E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetFirstNonEggInParty 0x8000
    GoToIfUnset FLAG_UNK_0x0140, _005C
    GoToIfUnset FLAG_UNK_0x0141, _005C
    GoToIfUnset FLAG_UNK_0x0142, _005C
    GoToIfUnset FLAG_UNK_0x0143, _005C
    GoToIfUnset FLAG_UNK_0x0144, _005C
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_005C:
    Message 0
    Message 1
    Call _021C
    GoToIfEq 0x800C, 1, _00D7
    Call _024C
    GoToIfEq 0x800C, 1, _0118
    Call _027C
    GoToIfEq 0x800C, 1, _0159
    Call _02AC
    GoToIfEq 0x800C, 1, _019A
    Call _02DC
    GoToIfEq 0x800C, 1, _01DB
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00CC:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00D7:
    SetVar 0x8004, ITEM_RED_SCARF
    SetVar 0x8005, 1
    GoToIfCannotFitItem 0x8004, 0x8005, 0x800C, _00CC
    BufferPartyMonSpecies 0, 0x8000
    BufferItemName 1, ITEM_RED_SCARF
    Message 4
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x0140
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0118:
    SetVar 0x8004, ITEM_BLUE_SCARF
    SetVar 0x8005, 1
    GoToIfCannotFitItem 0x8004, 0x8005, 0x800C, _00CC
    BufferPartyMonSpecies 0, 0x8000
    BufferItemName 1, ITEM_BLUE_SCARF
    Message 4
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x0141
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0159:
    SetVar 0x8004, ITEM_PINK_SCARF
    SetVar 0x8005, 1
    GoToIfCannotFitItem 0x8004, 0x8005, 0x800C, _00CC
    BufferPartyMonSpecies 0, 0x8000
    BufferItemName 1, ITEM_PINK_SCARF
    Message 4
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x0142
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_019A:
    SetVar 0x8004, ITEM_GREEN_SCARF
    SetVar 0x8005, 1
    GoToIfCannotFitItem 0x8004, 0x8005, 0x800C, _00CC
    BufferPartyMonSpecies 0, 0x8000
    BufferItemName 1, ITEM_GREEN_SCARF
    Message 4
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x0143
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01DB:
    SetVar 0x8004, ITEM_YELLOW_SCARF
    SetVar 0x8005, 1
    GoToIfCannotFitItem 0x8004, 0x8005, 0x800C, _00CC
    BufferPartyMonSpecies 0, 0x8000
    BufferItemName 1, ITEM_YELLOW_SCARF
    Message 4
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x0144
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_021C:
    GoToIfSet FLAG_UNK_0x0140, _0244
    ScrCmd_281 0x8000, 0, 0x800C
    GoToIfLt 0x800C, 200, _0244
    SetVar 0x800C, 1
    Return

_0244:
    SetVar 0x800C, 0
    Return

_024C:
    GoToIfSet FLAG_UNK_0x0141, _0274
    ScrCmd_281 0x8000, 1, 0x800C
    GoToIfLt 0x800C, 200, _0274
    SetVar 0x800C, 1
    Return

_0274:
    SetVar 0x800C, 0
    Return

_027C:
    GoToIfSet FLAG_UNK_0x0142, _02A4
    ScrCmd_281 0x8000, 2, 0x800C
    GoToIfLt 0x800C, 200, _02A4
    SetVar 0x800C, 1
    Return

_02A4:
    SetVar 0x800C, 0
    Return

_02AC:
    GoToIfSet FLAG_UNK_0x0143, _02D4
    ScrCmd_281 0x8000, 3, 0x800C
    GoToIfLt 0x800C, 200, _02D4
    SetVar 0x800C, 1
    Return

_02D4:
    SetVar 0x800C, 0
    Return

_02DC:
    GoToIfSet FLAG_UNK_0x0144, _0304
    ScrCmd_281 0x8000, 4, 0x800C
    GoToIfLt 0x800C, 200, _0304
    SetVar 0x800C, 1
    Return

_0304:
    SetVar 0x800C, 0
    Return

_030C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 11
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_031F:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_PACHIRISU
    Message 12
    ScrCmd_04D
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
