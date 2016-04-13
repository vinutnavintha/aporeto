#!/bin/bash
givePrompt () {
    while true; do
        read -p "$1 " opt
        case $opt in
            [Yy] ) return 0;;
            [Nn] ) return 1;;
            * ) echo "Please answer y or n.";;
        esac
    done
}

createFile()
{
    
    US_STATES=("Alabama" "Alaska" "Arizona" "Arkansas" "California" "Colorado" "Connecticut" "Delaware" "Florida" "Georgia" "Hawaii" "Idaho" "Illinois" "Indiana" "Iowa" "Kansas" "Kentucky" "Louisiana" "Maine" "Maryland" "Massachusetts" "Michigan" "Minnesota" "Mississippi" "Missouri" "Montana" "Nebraska" "Nevada" "New Hampshire" "New Jersey" "New Mexico" "New York" "North Carolina" "North Dakota" "Ohio" "Oklahoma" "Oregon" "Pennsylvania" "Rhode Island" "South Carolina" "South Dakota" "Tennessee" "Texas" "Utah" "Vermont" "Virginia" "Washington" "West Virginia" "Wisconsin" "Wyoming")
    for i in "${!US_STATES[@]}"; do 
        if [ $i == 0 ] ; then
            echo ${US_STATES[$i]}>$FILE
        else
            echo ${US_STATES[$i]}>>$FILE
        fi
    done
  
    
}



OPTS=`getopt -o c:v:n:h --long create-file:,no-prompt,verbose,help -n 'parse-options' -- "$@"`

ret=$?

if [ $ret != 0 ] ; then
echo "Return code is" $ret
echo "Failed parsing options. Usage is ./bash_example --create-file=<filename> [--no-prompt] [--verbose]"  >&2 ; exit 5 ; fi


VERBOSE=0
NO_PROMPT=0


if [ $# -eq 0 ]
  then
    echo "No arguments supplied. Usage is ./bash_example --create-file=<filename> [--no-prompt] [--verbose]"
    exit 1
fi

for var in $@
do

    if [ "$var" == "--verbose" ]; then
       VERBOSE=1
     fi 
    if [ "$var" == "--no-prompt" ]; then
       NO_PROMPT=1
     fi  
    if [[ "$var" == *"--create-file"* ]]; then
        FILE=`echo $var | cut -d= -f2` 
   
    fi
   if [[ "$var" == "--help" ]] || [[ "$var" == "-h" ]]; then
     echo "Usage is ./bash_example --create-file=<filename> [--no-prompt] [--verbose]"  >&2 ; exit 1 ;
   
  fi 

done



if [ $NO_PROMPT -eq "1" ]; then
    if [ $VERBOSE -eq "1" ]; then
         echo "File created"
    fi

    createFile
    exit 0
fi



if [ !  -f $FILE ];
then
 if [ $VERBOSE -eq "1" ]; then
  echo "File created"
 fi 
createFile

else

if givePrompt "File exists. Overwrite (y/n) ?"; then
    createFile
     if [ $VERBOSE -eq "1" ]; then
        echo "File already exists"
        echo "File removed"
        echo "File created"
     fi 
    
else
    if [ $VERBOSE -eq "1" ]; then
        echo "File already exists"
     fi 
fi

fi