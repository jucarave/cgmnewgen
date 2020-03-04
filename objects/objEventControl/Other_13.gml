/// @description RESET STATS

page = 0;
displayText = "";
dialogLines = noone;
textCooldown = 0;
prevActor = noone;
lastActorSprite = noone;
displayName = noone;
displaySprite = noone;
offsetWidth = sprite_get_width(sprMessageName);
nameOffset = offsetWidth;
spriteOffset = offsetWidth;
actorState = 0; // 0: show, 1: hide
endAfterHide = false;
questionCursor = 0;