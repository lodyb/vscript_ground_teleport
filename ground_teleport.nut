const FL_ONGROUND = 1;

function ThinkTimer() {
    local player = null;
    while (player = Entities.FindByClassname(player, "player")) {
        if (player.GetName() != "" && player.GetName() != "safe" && player.GetFlags() & FL_ONGROUND) {
            local dest = Entities.FindByName(null, player.GetName());
            if (dest) {
                player.Teleport(true, dest.GetOrigin(), true, dest.GetAbsAngles(), false, Vector())
                player.KeyValueFromString("targetname", "");
            }
        }
    }
    
    EntFireByHandle(self, "CallScriptFunction", "ThinkTimer", 0.001, null, null);
}

ThinkTimer();
