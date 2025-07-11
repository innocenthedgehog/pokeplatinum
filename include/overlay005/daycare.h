#ifndef POKEPLATINUM_DAYCARE_H
#define POKEPLATINUM_DAYCARE_H

#include "struct_defs/daycare.h"

#include "field/field_system_decl.h"

#include "party.h"
#include "pokemon.h"
#include "savedata.h"
#include "string_template.h"
#include "trainer_info.h"

u8 Daycare_CountMons(Daycare *daycare);
void Daycare_MoveToEmptySlotFromParty(Party *party, int partySlot, Daycare *daycare, SaveData *saveData);
u16 Daycare_MoveToPartyFromDaycareSlot(Party *party, StringTemplate *template, Daycare *daycare, u8 daycareSlot);
int BoxPokemon_GiveExperience(BoxPokemon *boxMon, u32 givenExp);
int DaycareMon_GiveExperience(DaycareMon *daycareMon);
int Daycare_BufferDaycarePriceBySlot(Daycare *daycare, u8 slot, StringTemplate *template);
u8 Daycare_BufferGainedLevelsInSlot(Daycare *daycare, int slot, StringTemplate *template);
void Daycare_ResetPersonalityAndStepCounter(Daycare *daycare);
void Egg_CreateEgg(Pokemon *mon, u16 species, u8 param2, TrainerInfo *trainerInfo, int param4, int metLocation);
void Daycare_GiveEggFromDaycare(Daycare *daycare, Party *party, TrainerInfo *trainerInfo);
BOOL Daycare_Update(Daycare *daycare, Party *param1, FieldSystem *fieldSystem);
Pokemon *Party_GetFirstEgg(Party *party);
void ov5_021E72BC(Daycare *daycare, StringTemplate *param1);
void Daycare_BufferNicknameLevelGender(Daycare *daycare, u32 idxNickname, u32 idxLevel, u32 idxGender, u8 slot, StringTemplate *template);
u16 Party_StringTemplateSetNicknameReturnSpecies(Party *party, int slot, StringTemplate *strTemplate);
u8 Daycare_GetState(Daycare *daycare);
u32 Daycare_GetCompatibilityLevel(Daycare *daycare);
void Egg_CreateHatchedMon(Pokemon *egg, int heapID);
u32 BoxMon_GetPairDaycareCompatibilityLevel(BoxPokemon **boxMonPair);

#endif // POKEPLATINUM_DAYCARE_H
