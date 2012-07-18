/**
 * Copyright 1998-2012 Epic Games, Inc. All Rights Reserved.
 */
class InterpTrackInstMorphWeight extends InterpTrackInst
	native(Interpolation);

cpptext
{
	virtual void RestoreActorState(UInterpTrack* Track);
}