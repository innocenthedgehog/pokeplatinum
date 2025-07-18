#include "macros/btlcmd.inc"


_000:
    UpdateVar OPCODE_SET, BTLVAR_CALC_TEMP, 0x10000000
    UpdateVarFromVar OPCODE_LEFT_SHIFT, BTLVAR_CALC_TEMP, BTLVAR_ATTACKER
    UpdateVarFromVar OPCODE_FLAG_ON, BTLVAR_BATTLE_CTX_STATUS, BTLVAR_CALC_TEMP
    UpdateMonData OPCODE_SET, BTLSCR_ATTACKER, BATTLEMON_CUR_HP, 0
    UpdateVar OPCODE_SET, BTLVAR_HP_CALC_TEMP, 32767
    UpdateHealthBar BTLSCR_ATTACKER
    UpdateVar OPCODE_FLAG_ON, BTLVAR_BATTLE_CTX_STATUS, SYSCTL_HIT_DURING_FLY|SYSCTL_HIT_DURING_DIG|SYSCTL_HIT_DURING_DIVE|SYSCTL_HIT_DURING_SHADOW_FORCE
    UpdateVar OPCODE_SET, BTLVAR_SIDE_EFFECT_FLAGS_DIRECT, MOVE_SIDE_EFFECT_ON_HIT|MOVE_SIDE_EFFECT_TO_DEFENDER|MOVE_SUBSCRIPT_PTR_MEMENTO
    End 
