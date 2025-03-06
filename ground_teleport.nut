const FL_ONGROUND = 1;

function ThinkTimer() {
    local player = Entities.FindByClassname(null, "player");
    
    if (player && player.GetName() != "" && player.GetName() != "safe" && player.GetFlags() & FL_ONGROUND) {
        local dest = Entities.FindByName(null, player.GetName());
        if (dest) {
            player.Teleport(true, dest.GetOrigin(), true, dest.GetAbsAngles(), false, Vector())
            player.KeyValueFromString("targetname", "");

            // Remove this if you don't want a sound to play when the player teleports
            player.EmitSound("buttons/button15.wav");
        }
    }
    
    EntFireByHandle(self, "CallScriptFunction", "ThinkTimer", 0.001, null, null);
}

ThinkTimer();