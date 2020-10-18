#include <sourcemod>
#include <sdktools>

#pragma newdecls required

public Plugin myinfo = 
{
    name = "gris rtv4 music",
    author = "1x",
    description = "null",
    version = "null",
    url = "null"
};

public void OnMapStart()
{
    char MapName[64];
    GetCurrentMap(MapName, sizeof(MapName));	
    if (StrEqual(MapName,"ze_gris_v1_13",false))
    {
        PrecacheSound("music/1x/gris/ouroVoros.mp3", true);
        AddFileToDownloadsTable("sound/music/1x/gris/ouroVoros.mp3");
        PrintToServer("null null music");
	}
}