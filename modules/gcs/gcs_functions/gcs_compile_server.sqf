/*
 Compiling the server funtions.
 This file has been generated automatically.
*/

if (GCS_VAR_GRIDSYSTEM_ENABLE_DATABASE isEqualTo true) then {
	GCS_fnc_database_addToBuffer = compile preprocessFileLineNumbers "modules\gcs\gcs_functions\database\fnc_addToBuffer.sqf";
	GCS_fnc_database_connect = compile preprocessFileLineNumbers "modules\gcs\gcs_functions\database\fnc_connect.sqf";
	GCS_fnc_database_executeQuery = compile preprocessFileLineNumbers "modules\gcs\gcs_functions\database\fnc_executeQuery.sqf";
	GCS_fnc_database_mainLoop = compile preprocessFileLineNumbers "modules\gcs\gcs_functions\database\fnc_mainLoop.sqf";
};
GCS_fnc_grid_activateSector = compile preprocessFileLineNumbers "modules\gcs\gcs_functions\grid\fnc_activateSector.sqf";
GCS_fnc_grid_addOrUpdateSectorObject = compile preprocessFileLineNumbers "modules\gcs\gcs_functions\grid\fnc_addOrUpdateSectorObject.sqf";
GCS_fnc_grid_cacheAll = compile preprocessFileLineNumbers "modules\gcs\gcs_functions\grid\fnc_cacheAll.sqf";
GCS_fnc_grid_createGridMarker = compile preprocessFileLineNumbers "modules\gcs\gcs_functions\grid\fnc_createGridMarker.sqf";
GCS_fnc_grid_deactivateSector = compile preprocessFileLineNumbers "modules\gcs\gcs_functions\grid\fnc_deactivateSector.sqf";
GCS_fnc_grid_deleteSectorsBackups = compile preprocessFileLineNumbers "modules\gcs\gcs_functions\grid\fnc_deleteSectorsBackups.sqf";
GCS_fnc_grid_getActivatedSquares = compile preprocessFileLineNumbers "modules\gcs\gcs_functions\grid\fnc_getActivatedSquares.sqf";
GCS_fnc_grid_getSectorObject = compile preprocessFileLineNumbers "modules\gcs\gcs_functions\grid\fnc_getSectorObject.sqf";
GCS_fnc_grid_gridToPos = compile preprocessFileLineNumbers "modules\gcs\gcs_functions\grid\fnc_gridToPos.sqf";
GCS_fnc_grid_hasSectors = compile preprocessFileLineNumbers "modules\gcs\gcs_functions\grid\fnc_hasSectors.sqf";
GCS_fnc_grid_monitorGrid = compile preprocessFileLineNumbers "modules\gcs\gcs_functions\grid\fnc_monitorGrid.sqf";
GCS_fnc_grid_posToGrid = compile preprocessFileLineNumbers "modules\gcs\gcs_functions\grid\fnc_posToGrid.sqf";
GCS_fnc_grid_resetSectors = compile preprocessFileLineNumbers "modules\gcs\gcs_functions\grid\fnc_resetSectors.sqf";
GCS_fnc_grid_loadUnits_createInfanteryGroups = compile preprocessFileLineNumbers "modules\gcs\gcs_functions\grid\loadUnits\fnc_createInfanteryGroups.sqf";
GCS_fnc_grid_loadUnits_createUnit = compile preprocessFileLineNumbers "modules\gcs\gcs_functions\grid\loadUnits\fnc_createUnit.sqf";
GCS_fnc_grid_loadUnits_createVehicles = compile preprocessFileLineNumbers "modules\gcs\gcs_functions\grid\loadUnits\fnc_createVehicles.sqf";
GCS_fnc_grid_loadUnits_modifiedInitVehicleCrew = compile preprocessFileLineNumbers "modules\gcs\gcs_functions\grid\loadUnits\fnc_modifiedInitVehicleCrew.sqf";
GCS_fnc_grid_loadUnits_modifiedLoadVehicle = compile preprocessFileLineNumbers "modules\gcs\gcs_functions\grid\loadUnits\fnc_modifiedLoadVehicle.sqf";
GCS_fnc_grid_loadUnits_setVehicleContent = compile preprocessFileLineNumbers "modules\gcs\gcs_functions\grid\loadUnits\fnc_setVehicleContent.sqf";
GCS_fnc_grid_loadUnits_setWaypoints = compile preprocessFileLineNumbers "modules\gcs\gcs_functions\grid\loadUnits\fnc_setWaypoints.sqf";
GCS_fnc_grid_saveUnits_getUnitInfo = compile preprocessFileLineNumbers "modules\gcs\gcs_functions\grid\saveUnits\fnc_getUnitInfo.sqf";
GCS_fnc_grid_saveUnits_getVehicleContent = compile preprocessFileLineNumbers "modules\gcs\gcs_functions\grid\saveUnits\fnc_getVehicleContent.sqf";
GCS_fnc_grid_saveUnits_getVehicleInfo = compile preprocessFileLineNumbers "modules\gcs\gcs_functions\grid\saveUnits\fnc_getVehicleInfo.sqf";
GCS_fnc_grid_saveUnits_modifiedSaveVehicle = compile preprocessFileLineNumbers "modules\gcs\gcs_functions\grid\saveUnits\fnc_modifiedSaveVehicle.sqf";
GCS_fnc_grid_saveUnits_saveWaypoints = compile preprocessFileLineNumbers "modules\gcs\gcs_functions\grid\saveUnits\fnc_saveWaypoints.sqf";
GCS_fnc_tools_arrayMerge = compile preprocessFileLineNumbers "modules\gcs\gcs_functions\tools\fnc_arrayMerge.sqf";
GCS_fnc_tools_getAllVehicles = compile preprocessFileLineNumbers "modules\gcs\gcs_functions\tools\fnc_getAllVehicles.sqf";
GCS_fnc_tools_getPlayerList = compile preprocessFileLineNumbers "modules\gcs\gcs_functions\tools\fnc_getPlayerList.sqf";
GCS_fnc_tools_getRandomString = compile preprocessFileLineNumbers "modules\gcs\gcs_functions\tools\fnc_getRandomString.sqf";
GCS_fnc_tools_getSideFromString = compile preprocessFileLineNumbers "modules\gcs\gcs_functions\tools\fnc_getSideFromString.sqf";
