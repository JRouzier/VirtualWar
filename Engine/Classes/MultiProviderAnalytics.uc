/**
 * Copyright 1998-2011 Epic Games, Inc. All Rights Reserved.
 *
 * Wrapper for multiple analytics providers
 */
 
class MultiProviderAnalytics extends AnalyticEventsBase
	native(PlatformInterface)
	config(Engine);

/** List of analytics providers classes to instantiate */
var config array<string> AnalyticsProviderClassNames;
/** List of analytics providers to route all calls to */
var transient array<AnalyticEventsBase> AnalyticsProviders;

/**
 * Perform any initialization. Called once after singleton instantiation
 */
function Init()
{
	local string AnalyticsClassStr;
	local class<AnalyticEventsBase> AnalyticsClass;
	local AnalyticEventsBase Analytics;

	// Create an instance of each analytics provider class
	foreach AnalyticsProviderClassNames(AnalyticsClassStr)
	{
		AnalyticsClass = class<AnalyticEventsBase>(DynamicLoadObject(AnalyticsClassStr,class'class'));
		if (AnalyticsClass != None)
		{
			// Create instance and initialize it
			Analytics = new AnalyticsClass;
			if (Analytics != None)
			{
				Analytics.Init();
				AnalyticsProviders.AddItem(Analytics);
			}
		}		
	}
}

/**
 * Start capturing stats for upload 
 */
native event StartSession();

/**
 * End capturing stats and queue the upload 
 */
native event EndSession();

/**
 * Adds a named event to the session
 *
 * @param EventName unique string for named event
 * @param bTimed if true then event is logged with timing
 */
native event LogStringEvent(string EventName, bool bTimed);

/**
 * Ends a timed string event
 *
 * @param EventName unique string for named event
 */
native event EndStringEvent(string EventName);

/**
 * Adds a named event to the session with a single parameter/value
 *
 * @param EventName unique string for named 
 * @param ParamName parameter name for the event
 * @param ParamValue parameter value for the event
 * @param bTimed if true then event is logged with timing
 */
native event LogStringEventParam(string EventName, string ParamName, string ParamValue, bool bTimed);

/**
 * Ends a timed event with a single parameter/value.  Param values are updated for ended event.
 *
 * @param EventName unique string for named 
 * @param ParamName parameter name for the event
 * @param ParamValue parameter value for the event
 */
native event EndStringEventParam(string EventName, string ParamName, string ParamValue);

/**
 * Adds a named event to the session with an array of parameter/values
 *
 * @param EventName unique string for named 
 * @param ParamArray array of parameter name/value pairs
 * @param bTimed if true then event is logged with timing
 */
native event LogStringEventParamArray(string EventName, array<EventStringParam> ParamArray, bool bTimed);

/**
 * Ends a timed event with an array of parameter/values. Param values are updated for ended event unless array is empty
 *
 * @param EventName unique string for named 
 * @param ParamArray array of parameter name/value pairs. If array is empty ending the event wont update values
 */
native event EndStringEventParamArray(string EventName, array<EventStringParam> ParamArray);

/**
 * Adds a named error event with corresponding error message
 *
 * @param ErrorName unique string for error event 
 * @param ErrorMessage message detailing the error encountered
 */
native event LogErrorMessage(string ErrorName, string ErrorMessage);