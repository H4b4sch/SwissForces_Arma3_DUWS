class Params {
	class Revive {
		title = "Revive";
		values[] = {0,1};
		texts[] = {"REVIVE OFF","REVIVE ON"};
		default = 1;
	};
	class DeatPenalty {
		title = "CP death penalty";
		values[] = {1,2,3,4,5,6,7,8,9,10,0};
		texts[] = {"1","2","3","4","5","6","7","8","9","10","No penalty"};
		default = 0;
	};
	class PlayerFatigue {
		title = "Player Fatigue";
		values[] = {0,1};
		texts[] = {"Disable Fatigue","Enable Fatigue"};
		default = 0;
	};
	class TimeOfDay {
        title = "Time of Day:";
        values[] = {5,14,19,23};
        texts[] = {"Dawn","Afternoon","Dusk","Evening"};
        default = 5;
    };

	class AttackHelis {
        title = "Attack Choppers:";
        values[] = {0,1};
        texts[] = {"Disabled","Enabled"};
        default = 1;
    };

	class TrkAllPlayers {
        title = "Show Player Markers on Map:";
        values[] = {0,1};
        texts[] = {"Disabled","Enabled"};
        default = 1;
    };	
    
  class enableZeus {
        title = "Enable Zeus";
        values[] = {0,1};
        texts[] = {"Disabled","Enabled"};
        default = 1;
    };	
}
