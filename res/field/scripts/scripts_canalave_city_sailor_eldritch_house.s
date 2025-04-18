#include "macros/scrcmd.inc"
#include "res/text/bank/canalave_city_sailor_eldritch_house.h"

    .data

    ScriptEntry _000E
    ScriptEntry _010B
    ScriptEntry _00A5
    ScriptEntryEnd

_000E:
    GoToIfEq 0x4106, 0, _0037
    CallIfEq 0x4106, 3, _0073
    CallIfGe 0x4106, 1, _007B
_0035:
    End

_0037:
    GoToIfSet FLAG_UNK_0x012C, _0035
    CheckGameCompleted 0x4000
    GoToIfEq 0x4000, 0, _0035
    ScrCmd_22D 2, 0x4000
    GoToIfEq 0x4000, 0, _0035
    SetVar 0x4106, 1
    Call _007B
    End

_0073:
    SetVar 0x4106, 0
    Return

_007B:
    SetObjectEventPos 0, 8, 6
    ScrCmd_189 0, 1
    ScrCmd_188 0, 0
    SetObjectEventPos 1, 9, 6
    ScrCmd_189 1, 2
    Return

    .byte 30
    .byte 0
    .byte 91
    .byte 2
    .byte 27
    .byte 0

_00A5:
    SetVar 0x8008, 0x4106
    GoToIfEq 0x8008, 1, _00E5
    GoToIfEq 0x8008, 2, _00E5
    GoToIfEq 0x8008, 3, _00F8
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00E5:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00F8:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_010B:
    GoToIfEq 0x4106, 1, _0158
    GoToIfEq 0x4106, 2, _0158
    GoToIfEq 0x4106, 3, _0145
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0145:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0158:
    GoToIfUnset FLAG_UNK_0x0133, _01EA
    GoToIfUnset FLAG_UNK_0x011F, _01D9
    CheckItem ITEM_LUNAR_WING, 1, 0x800C
    GoToIfEq 0x800C, 0, _01D9
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetFlag FLAG_UNK_0x012C
    SetVar 0x4106, 3
    RemoveItem ITEM_LUNAR_WING, 1, 0x800C
    BufferPlayerName 0
    Message 2
    Message 3
    PlaySound SEQ_ASA
    WaitSound
    CloseMessage
    WaitTime 15, 0x800C
    Call _01FC
    Message 5
    Call _0256
    Message 6
    Call _0262
    Message 7
    CloseMessage
    Call _026E
    ReleaseAll
    End

_01D9:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01EA:
    SetFlag FLAG_UNK_0x0133
    SetVar 0x4106, 2
    GoTo _01D9
    End

_01FC:
    PlayFanfare SEQ_SE_DP_KAIDAN2
    WaitFanfare SEQ_SE_DP_KAIDAN2
    ClearFlag FLAG_UNK_0x025B
    AddObject 2
    WaitTime 5, 0x800C
    ApplyMovement 1, _0294
    ApplyMovement 0, _0294
    ApplyMovement LOCALID_PLAYER, _0294
    WaitMovement
    ApplyMovement 2, _02B4
    WaitMovement
    ApplyMovement LOCALID_PLAYER, _02C0
    WaitMovement
    ApplyMovement 2, _02D4
    WaitMovement
    ApplyMovement LOCALID_PLAYER, _029C
    WaitMovement
    Return

_0256:
    ApplyMovement 2, _02A4
    WaitMovement
    Return

_0262:
    ApplyMovement 2, _02AC
    WaitMovement
    Return

_026E:
    ApplyMovement LOCALID_PLAYER, _0294
    ApplyMovement 2, _02DC
    WaitMovement
    SetFlag FLAG_UNK_0x025B
    RemoveObject 2
    PlayFanfare SEQ_SE_DP_KAIDAN2
    WaitFanfare SEQ_SE_DP_KAIDAN2
    Return

    .balign 4, 0
_0294:
    MoveAction_002
    EndMovement

    .balign 4, 0
_029C:
    MoveAction_000
    EndMovement

    .balign 4, 0
_02A4:
    MoveAction_001
    EndMovement

    .balign 4, 0
_02AC:
    MoveAction_003
    EndMovement

    .balign 4, 0
_02B4:
    MoveAction_012 2
    MoveAction_015 2
    EndMovement

    .balign 4, 0
_02C0:
    MoveAction_000
    MoveAction_071
    MoveAction_013
    MoveAction_072
    EndMovement

    .balign 4, 0
_02D4:
    MoveAction_015
    EndMovement

    .balign 4, 0
_02DC:
    MoveAction_014 3
    MoveAction_013 2
    EndMovement
