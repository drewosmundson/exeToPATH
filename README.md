This bash script is a general installer (and uninstaller) for executables.

This will be useful for anyone who is designing a CLI or other application that needs
to execute their program or script in any other directory.

My original use case for this is to allow me to create a Git clone. I needed to add my
program to my PATH so it can be accessible anywhere and can execute $gitClone -options in 
any directory requires version control.

$./exeToPATH (Options) (/path/to/file) 

./exeToPATH
  The name of this script. Ensure that it has the correct permissions so that it is able to execute.
  If $./exeToPath fails to execute, then use the chmod command.
  $chmod +x ./exeToPath 

Options:
  help //lists the set of commands and their uses.

  -c, -check //checks if the executable is already in the PATH. This is also the default option if no arg is given.

  -i, -install //adds the path to the specified executable to the PATH variable. If none specified, prompt the user

  -u, -uninstall //unistalls the script if no executable specified, prompts the user
  
/path/to/file:
  The executable file to be added to the PATH


