# Ground teleport system VSCRIPT CS:S

Teleports players automatically when they fail a stage by checking if they are touching the ground

## Setup

- Create logic_script entity
- Paste code into script field
- Create info_teleport_destination for each teleport location
- Name them uniquely (e.g. fail1_dest, fail2_dest)

## Triggers (examples)

trigger_multiple when exiting the start platform:
- ```OnStartTouch > !activator > AddOutput > targetname fail1_dest```

End platform:
- ```OnStartTouch > !activator > AddOutput > targetname safe```

Bhops, slides, walkable platforms:
- ```OnStartTouch > !activator > AddOutput > targetname safe```
