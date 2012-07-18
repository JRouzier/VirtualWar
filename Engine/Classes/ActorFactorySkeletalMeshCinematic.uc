/**
 * Copyright 1998-2012 Epic Games, Inc. All Rights Reserved.
 */
class ActorFactorySkeletalMeshCinematic extends ActorFactorySkeletalMesh
	config(Editor)
	hidecategories(Object);

defaultproperties
{
	MenuName="Add SkeletalMeshCinematic"
	NewActorClass=class'Engine.SkeletalMeshCinematicActor'
}