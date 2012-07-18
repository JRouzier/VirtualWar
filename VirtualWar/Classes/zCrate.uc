class zCrate extends Actor
        placeable;

defaultproperties
{
	Begin Object class=DynamicLightEnvironmentComponent Name=MyLightEnvironment
		bEnabled=true
		bDynamic=true
	End Object
	Components.Add(MyLightEnvironment)

	Begin Object class=StaticMeshComponent Name=MyStaticMeshComponent
		StaticMesh=StaticMesh'zGameTest.Mesh.SM_Cube'
		LightEnvironment=MyLightEnvironment
	End Object
 	Components.Add(MyStaticMeshComponent)
}