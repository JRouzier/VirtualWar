/**
 *
 * Copyright 1998-2012 Epic Games, Inc. All Rights Reserved.
 */


/** contains game-specific map data, attached to the WorldInfo */
class MapInfo extends Object
	native
	abstract
	editinlinenew;

cpptext
{
#if WITH_EDITOR
	virtual void CheckForErrors() {}
#endif
}

