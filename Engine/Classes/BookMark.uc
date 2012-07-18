/* epic ===============================================
* class BookMark
*
* A camera position the current level.
 * Copyright 1998-2012 Epic Games, Inc. All Rights Reserved.
 */
class BookMark extends Object
	hidecategories(Object)
	native;

/** Camera position/rotation */
var() vector	Location;
var() rotator	Rotation;

/** Array of levels that are hidden */
var() array<string> HiddenLevels;

cpptext
{
}

defaultproperties
{
}
