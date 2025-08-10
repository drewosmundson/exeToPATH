#!/bin/bash



help() { 
    echo "Usage: $./exeToPATH (Options) (/path/to/exe)"

    echo "./exeToPATH"
    echo "  The name of this script. Ensure that it has the correct permissions so that it is able to execute. "
    echo "  If $./exeToPath fails to execute then use the chmod command. "
    echo "  $chmod +x ./exeToPath "

    echo "Options:"
    echo "  help //lists the set of commands and their uses."

    echo "  -c, -check //checks if the executable is already in the PATH. This is also the default option if no arg is given."

    echo "  -i, -install //adds the path to the specified executable to the PATH variable. If none specified promt user"

    echo "  -u, -uninstall //unistalls the script if no executable specified prompt the user"

    echo "/path/to/exe:"
    echo "  The executable exe to be added to the PATH"
}
check() { 
  if [ type -P $exe ]; then 
    return true
  else
    return false
  fi
}

install() {
  if [ check $exe -eq true ]; then
    uninstall $exe
  fi
}

uninstall() {
  if [ check $exe -eq false ]; then
    return true;
  fi
}


main(){
  #check for parameters if none then promt for exe path and list the help command
  if [ "$#" -lt 1 ]; then 
    echo "Enter the path to the executable you would like to install in your PATH"
    echo "Usage: $./exeToPATH path/to/your/exe -options"
    echo "For a list of commands type $./exeToPATH help"
    exit 0
  fi
  
  if [ $1 -eq "help" ] || [ $2 -eq "help" ]; then
    help
  fi

  if [ -x $1 ]; then
    exe=$1
  else 
    echo "Specified exe is not an executable."F
    echo "Make sure your exe has the right permissions and has no complation errors"
    exit 1
  fi


  if [ $2 -eq "-c"] || [ $2 -eq "-check"]; then
    if [ check $exe -eq true ]; then
      echo "This executable is in  PATH"
    else
      echo "this executable is not in PATH"
    fi

  elif [ $2 -eq "-i"] || [ $2 -eq "-install"]; then
    install $exe

  elif [ $2 -eq "-u"] || [ $2 -eq "-uninstall"]; then
    uninstall $exe

  fi
    
}


main
echo "Script exiting normally"
exit 0