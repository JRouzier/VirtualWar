/**
 *
 * Copyright 1998-2012 Epic Games, Inc. All Rights Reserved.
 */


class SeqEvent_PlayerSpawned extends SequenceEvent;

var Object SpawnPoint;

defaultproperties
{
	ObjName="Player Spawned"
	ObjCategory="Player"

	VariableLinks(1)=(ExpectedType=class'SeqVar_Object',LinkDesc="Spawn Point",bWriteable=TRUE,PropertyName=SpawnPoint)
}
