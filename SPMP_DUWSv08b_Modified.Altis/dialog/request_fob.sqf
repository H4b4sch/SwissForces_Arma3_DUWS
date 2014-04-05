                                                             // case #

  _handle = createDialog "ressourceheader2";  
  waitUntil {dialog};
  ctrlSetText [1000, format["%1",commandpointsblu1]];
  ctrlSetText [1001, format["%1",zoneundercontrolblu]];
  ctrlSetText [1002, format["%1",WARCOM_blufor_ap]];
    
// UNITS  
  _index = lbAdd [2120, "Rifleman(2CP)"];                 // 0
  _index = lbAdd [2120, "Medic(4CP)"];                    // 1
	_index = lbAdd [2120, "Repair Specialist(4CP)"];        // 2
    	
	
  lbSetCurSel [2120, 0];

// VEHICLES  
  _index1 = lbAdd [2122, "Hunter Unarmed(5CP)"];            // 0
  _index1 = lbAdd [2122, "Hunter HMG(18CP)"];               // 1
  _index1 = lbAdd [2122, "Hunter GMG(25CP)"];               // 2
	_index1 = lbAdd [2122, "HEMTT(2CP)"];                     // 3
  _index1 = lbAdd [2122, "MH-9 Hummingbird(15CP)"];         // 4
  _index1 = lbAdd [2122, "ATV(Free)"];                       // 5
  _index1 = lbAdd [2122, "SF SUV(2CP)"];      		      // 6
	_index1 = lbAdd [2122, "Fuel Truck(10CP)"];      		      // 7
	
  lbSetCurSel [2122, 0];
    
        
     
// Supports  !!! CHECK TO ADD AT INIT
        index_support_supply = lbAdd [2103, "Supply drop(5CP)"];                // 0
        index_support_arty = lbAdd [2103, "Artillery strike(20CP)"];            // 1
        index_support_mortar = lbAdd [2103, "Mortar strike(10CP)"];             // 2
        index_support_paradrop = lbAdd [2103, "Airborne troops(20CP)"];         // 3
        index_support_jdam = lbAdd [2103, "JDAM strike(15CP)"];                 // 4
        index_support_armory = lbAdd [2103, "Armory(3CP)"];                     // 5
        index_support_pFLIR = lbAdd [2103, "Personal FLIR display(20CP)"];      // 6
        index_support_uavrecon = lbAdd [2103, "UAV Recon(10CP)"];               // 7
        index_support_refit = lbAdd [2103, "Vehicle Refit(3CP)"];               // 8
        index_support_helotaxi = lbAdd [2103, "Helicopter Taxi(3CP)"];          // 9
        index_support_cluster = lbAdd [2103, "Mk.20 II CBU(25CP)"];             // 10
			  index_support_training = lbAdd [2103, "Specialized Infantry training(20CP)"];//11
			  index_support_boattaxi = lbAdd [2103, "Boat Taxi(2CP)"];				  //12
			  index_support_halo = lbAdd [2103, "Halo(10CP)"];                     // 13
			
//  lbSetCurSel [2103, 0];


         if (support_supplydrop_available) then 
             {
              lbSetColor [2103, 0, [0, 1, 0, 1]];
             }; 
         if (support_arty_available) then 
             {
              lbSetColor [2103, 1, [0, 1, 0, 1]];
             };                
         if (support_mortar_available) then 
             {
              lbSetColor [2103, 2, [0, 1, 0, 1]];
             };          
         if (support_paradrop_available) then 
             {
              lbSetColor [2103, 3, [0, 1, 0, 1]];
             };              
         if (support_jdam_available) then 
             {
              lbSetColor [2103, 4, [0, 1, 0, 1]];
             }; 
         if (support_armory_available) then 
             {
              lbSetColor [2103, 5, [0, 1, 0, 1]];
             }; 
         if (support_pflir_available) then 
             {
              lbSetColor [2103, 6, [0, 1, 0, 1]];
             }; 
         if (support_uav_recon_available) then 
             {
              lbSetColor [2103, 7, [0, 1, 0, 1]];
             }; 
         if (support_veh_refit_available) then 
             {
              lbSetColor [2103, 8, [0, 1, 0, 1]];
             };              
         if (support_helotaxi_available) then 
             {
              lbSetColor [2103, 9, [0, 1, 0, 1]];
             }; 
         if (support_cluster_available) then 
             {
              lbSetColor [2103, 10, [0, 1, 0, 1]];
             }; 
         if (support_specialized_training_available) then 
             {
              lbSetColor [2103, 11, [0, 1, 0, 1]];
             };              
          if (support_boattaxi_available) then 
             {
              lbSetColor [2103, 12, [0, 1, 0, 1]];
             };
		  if (support_halo_available) then 
             {
              lbSetColor [2103, 13, [0, 1, 0, 1]];
             };
                       
    
    
     
       