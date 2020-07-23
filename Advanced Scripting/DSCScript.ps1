Configuration Create-Files {
	#Creates a new configuration function
    Import-DscResource -ModuleName 'PSDesiredStateConfiguration'
<#Importing this just disables a warning that otherwise would show up every time you run this script#>
    Node "localhost" {
	<#This is the name of the computer or “Node” you will be sending the command to. In our    case it is the local computer so we have localhost here#>
        File MyRandomDir {
	<#File is the DSC Module we will be using to  create the directory MyRandomDir is the name of the task will be completing#>
            DestinationPath = "C:\temp\Demo"
            Type = "Directory"
            Recurse = $false
	<# These are the options for the configuration. In this case we specify where we want the file to be in the path, the type tells DSC to create a directory, Recurse is false because we are not creating child directories with the same command#> 
        }
    }
}
