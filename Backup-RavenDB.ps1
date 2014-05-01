<#
 # This function will back up my local instance of a database called Employees
#>

function Backup-RavenDB() {
 
 # Location of the Raven.Smuggler.exe on my pc
 $ravenSmugglerEXE = "C:\RavenDB-Build-2375\Smuggler\Raven.Smuggler.exe"

 # The Url where my local instance of RavenDB is currently running
 $ravenURL = "http://gsuttiepc:8080/databases/employees"

 # Folder where I want my backup to end up
 $BackupFilename = "c:\RavenDBBackups\employees.dump.raven" 
    	       
 # Run Smuggler.exe
 & $ravenSmugglerEXE out $ravenUrl $BackupFilename
}

# Now call the simple function
Backup-RavenDB