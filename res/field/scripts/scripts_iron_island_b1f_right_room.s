#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _000E
    ScriptEntryEnd

_000A:
    InitPersistedMapFeaturesForPlatformLift
    End

_000E:
    TriggerPlatformLift
    End

    .byte 0
    .byte 0
