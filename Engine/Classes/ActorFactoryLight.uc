/**
 * Copyright 1998-2012 Epic Games, Inc. All Rights Reserved.
 */
class ActorFactoryLight extends ActorFactory
	config(Editor)
	collapsecategories
	hidecategories(Object)
	native;

defaultproperties
{
	MenuName="Add Light (Point)"
	NewActorClass=class'Engine.PointLight'
	bShowInEditorQuickMenu=true
}
