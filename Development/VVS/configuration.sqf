//Only display vehicles for that players side, if true Opfor can only spawn Opfor vehicles and so on.
VVS_SideOnly = false;

//Only set to true if you are making pre-made vehicle lists with VVS_x (i.e VVS_Car)
VVS_Premade_List = false;

//If you are going to use Pre-set VVS Vehicles it is recommended to set this to true as it will not run through the config saving CPU resources on initialization, otherwise leave as default.
VVS_Premade_List = true;

/*
									Pre-set VVS Vehicles
		This is similar to VAS's functionality, using these variables will only make those vehicles available.
		Leave them the way they are if you want to auto-fetch the entire vehicle config and list every vehicle.
		
		Example:
		VVS_Car = ["C_Offroad_01_F","C_Quadbike_01_F"];
		VVS_Air = ["B_Heli_Light_01_armed_F"];
*/
VVS_Car = ["rhsusf_m1025_d_Mk19", "rhsusf_m1025_d_m2", "rhsusf_m998_d_2dr_fulltop", "rhsusf_m998_d_2dr_halftop","rhsusf_m998_d_2dr", "rhsusf_m998_d_4dr_fulltop", "rhsusf_m113d_usarmy", "RHS_M2A3_BUSKIII", "RHS_M6", "rhsusf_M1078A1P2_d_fmtv_usarmy", "rhsusf_M1083A1P2_B_M2_d_fmtv_usarmy", "rhsusf_M1083A1P2_d_fmtv_usarmy", "hsusf_rg33_m2_d", "B_Quadbike_01_F"];
VVS_Air = ["B_Heli_Light_01_armed_F", "LDL_C130J", "LDL_C130U","USAF_A10", "usaf_b1b", "usaf_b2", "USAF_C130J", "USAF_C130J_Cargo", "USAF_C17", "usaf_c5", "USAF_CV22", "USAF_CV22IDWS", "SAF_E3", "USAF_F35A", "JS_JC_FA18E", "JS_JC_FA18F", "USAF_F16", "usaf_kc135", "usaf_f22", "RHS_AH1Z", "RHS_AH1Z_GS", "RHS_AH1Z_CS", "RHS_AH64D", "RHS_AH64D_GS", "RHS_AH64D_CS", "RHS_AH64DGrey", "RHS_CH_47F_10", "RHS_CH_47F_light", "RHS_UH1Y_d", "RHS_UH60M_d", "RHS_UH60M_MEV2_d"];
VVS_Ship = ["B_Boat_Transport_01_F", "B_Lifeboat", "B_Boat_Armed_01_minigun_F"];
VVS_Armored = ["rhsusf_m1a1fep_d", "rhsusf_m1a1fep_od", "rhsusf_m1a1aimd_usarmy", "rhsusf_m1a1aim_tuski_d", "rhsusf_m1a2sep1d_usarmy", "rhsusf_m1a2sep1tuskid_usarmy", "rhsusf_m1a2sep1tuskiid_usarmy"];
VVS_Submarine = [];
VVS_Autonomous = [];
VVS_Support = ["B_Truck_01_ammo_F", "B_Truck_01_ammo_F", "B_Truck_01_ammo_F", "B_Truck_01_Repair_F"];

/*
									Vehicle restriction
		Again, similar to VAS's functionality. If you want to restrict a specific vehicle you can do it or
		you can restrict an entire vehicle set by using its base class.
		
		Example:
		VVS_Car = ["Quadbike_01_base_F"]; //Completely removes all quadbikes for all sides
		VVS_Air = ["B_Heli_Light_01_armed_F"]; //Removes the Pawnee
*/
VVS_R_Car = [];
VVS_R_Air = [];
VVS_R_Ship = [];
VVS_R_Armored = [];
VVS_R_Submarine = [];
VVS_R_Autonomous = [];
VVS_R_Support = [];