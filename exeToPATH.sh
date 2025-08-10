#!/bin/bash



help() { 
    echo "Usage: $./exeToPATH (Options) (/path/to/file)"

    echo "./exeToPATH"
    echo "  The name of this script. Ensure that it has the correct permissions so that it is able to execute. "
    echo "  If $./exeToPath fails to execute then use the chmod command. "
    echo "  $chmod +x ./exeToPath "

    echo "Options:"
    echo "  help //lists the set of commands and their uses."

    echo "  -c, -check //checks if the executable is already in the PATH. This is also the default option if no arg is given."

    echo "  -i, -install //adds the path to the specified executable to the PATH variable. If none specified promt user"

    echo "  -u, -uninstall //unistalls the script if no executable specified prompt the user"
            
    echo "/path/to/file:"
    echo "  The executable file to be added to the PATH"
}
check(FILE) { 
  if [ t ]

}

install() {

}

uninstall() {

}





main(){
  #check for parameters if none then promt for file path and list the help command
  if [ $# -lt 2] then 
    echo "Enter the path to the executable you would like to install in your PATH"
  else
    echo "No executable argument usage: $./exeToPATH -options path/to/your/exe"
    echo "Use ./exeToPATH help for a list of commands"
    exit 1
  fi
  
  if [ $1 -eq "help" ] || [ $2 -eq "help" ] then
    help
  fi

  if [ -x $1 ] then
    FILE=$1
  else 
    echo "Specified file is not an executable."
    echo "Make sure your file has the right permissions and has no complation errors"
    exit 1
  fi

  #check if the file is already installed in the system
  if [ $2 -eq "-c"] || [ $2 -eq "-check"] then
    check(FILE)
  
  elif [ $2 -eq "-i"] || [ $2 -eq "-u"] then
    uninstall

  elif [ $2 -eq "-u"] || [ $2 -eq "-u"] then
    install

  else 
    
}



echo "Script running"
main
echo "Script exiting normally"
exit 0