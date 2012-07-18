/**
 * Copyright 1998-2012 Epic Games, Inc. All Rights Reserved.
 */
class SeqAct_SetRigidBodyIgnoreVehicles extends SequenceAction
	native(Sequence);

defaultproperties
{
	ObjName="Set RigidBodyIgnoreVehicles"
	ObjCategory="Physics"

	InputLinks(0)=(LinkDesc="Turn On")
	InputLinks(1)=(LinkDesc="Turn Off")
}
