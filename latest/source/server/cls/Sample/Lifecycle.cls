Class Sample.Lifecycle Extends %ZHSLIB.PackageManager.Developer.Lifecycle.Module
{

Method %Activate(ByRef pParams) As %Status
{
	Set tSC = $$$OK
	Try {
		Set tSC = ##super(.pParams)
		If $$$ISERR(tSC) {
			Quit
		}
		
		Set tVerbose = $Get(pParams("Verbose"),0)
		Write:tVerbose !,"Doing Sample.Utils : generate data..."
		do ##class(Sample.Utils).Generate()
		Write:tVerbose !,"Done."
	} Catch e {
		Set tSC = e.AsStatus()
	}
	Quit tSC
}

}