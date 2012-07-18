/**
 * Copyright 1998-2012 Epic Games, Inc. All Rights Reserved.
 *
 * This is the base class for Facebook integration (each platform has a subclass
 */
class FacebookWindows extends FacebookIntegration 
	native
	config(Engine)
	inherits(FTickableObject)
	;

`include(Engine\Classes\HttpStatusCodes.uci)

var const native private{private} transient pointer ChildProcHandle{void};

native function bool Init();
native function bool Authorize();
native function bool IsAuthorized();
native function Disconnect();

function FacebookRequest(string GraphRequest)
{
	class'HttpFactory'.static.CreateRequest()
		.SetURL("https://graph.facebook.com/"@GraphRequest@"?access_token="@AccessToken)
		.SetVerb("GET")
		.SetHeader("Test", "Value")
		.SetProcessRequestCompleteDelegate(FacebookRequestCallback)
		.ProcessRequest();
}

native function ProcessFacebookRequest(string Payload, INT ResponseCode);

/** Delegate to use for Facebook requests. */
function FacebookRequestCallback(HttpRequestInterface OriginalRequest, HttpResponseInterface Response, bool bDidSucceed)
{
	local string Payload;
	if (bDidSucceed)
	{
		Payload = Response.GetContentAsString();
	}
	ProcessFacebookRequest(Payload, bDidSucceed ? Response.GetResponseCode() : `HTTP_STATUS_BAD_REQUEST);
}
