/**
 * Copyright 1998-2012 Epic Games, Inc. All Rights Reserved.
 */
class ActorFactoryMover extends ActorFactoryDynamicSM
	config(Editor)
	collapsecategories
	hidecategories(Object)
	native;

defaultproperties
{
	MenuName="Add InterpActor"
	NewActorClass=class'Engine.InterpActor'
}
