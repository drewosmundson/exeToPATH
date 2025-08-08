This bash script is a general installer (and unintsaller) for executables.

This will be useful for anyone who is designing a CLI or other application that needs
to be able to execute their program or script in any other directory.

My original use case for this is to allow me to create a Git clone. I needed to add my
program to my PATH so it can be accessable anywhere and can execute $gitClone -options in 
any directory requires version control.

$./exeToPATH (/path/to/file) (Options)

./exeToPATH
  The name of this script. Ensure that it has the correct permissions so that it is able to execute.
  If $./exeToPath fails to execute then use the chmod command.
  $chmod +x ./exeToPath 

/path/to/file:
  The executable file to be added to the PATH

Options:
  -i, -intstall //adds the path to the specified executable to the PATH variable

  -u, -uninstall //unistalls the script

  -c, -check //checks if the executable is already in the PATH. This is also the default option if no arg is given.

  -h, -help //lists the set of commands and their uses.