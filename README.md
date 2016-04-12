
## Vini's Solutions for Aporeto Internship Quiz

### Solution1: Bash Shell Script sample:

Implement a script which has the following usage format:

```bash
./bash_example [--help|-h]
./bash_example --create-file=<filename> [--no-prompt] [--verbose]
```
  This script should create a file with the name provided in the args with <filename>. This file should contain all 50 states with one state per line. This should be done in following scenarios:
  * File <filename> does not exist or --no-prompt option is used
  * In case the file exists, this script should prompt the user:
  ```bash
    “File exists. Overwrite (y/n) ?”
  ```
    The script should process user input and either overwrite file or not.
    If the user input is not valid, i.e. neither ‘y’ nor ’n’, the script should just prompt the user again with the same prompt until a valid input is provided.

    If the --verbose option is set, the following messages should be printed in appropriate portions of code.

    ```bash
File removed
File created
File already exists
```
**Return Codes:**
 * In case of bad command line args, the help showing usage should be printed and returned with error (non zero code).
 * In all successful case return code should be 0

### Solution2: Python/Go sample:

Following is the command to run uniquify.py

```bash
python uniquify.py --file=input_data.txt --output=output_data.txt --verbose

```

You can also run the program using the command below by turning off the verbose. By turning off verbose, you will not get print statement.

```bash
python uniquify.py --file=input_data.txt --output=output_data.txt

```


### Solution3: Go sample:

Following are the commands used to execute the go program

```bash

C:\go_workspace\src\gosample>go install gosample

```

The above command produces gosample.exe executable file. It accepts urls as command line args and generates word frequency count using web scraping. The output is stored in url.txt files. 


```bash

C:\go_workspace\src\gosample>%GOPATH%\bin\gosample https://raw.githubusercontent.com/vinutnavintha/aporeto/master/problem3/gosample/text_1.txt https://raw.githubusercontent.com/vinutnavintha/aporeto/master/problem3/gosample/text_2.txt https://raw.githubusercontent.com/vinutnavintha/aporeto/master/problem3/gosample/text_3.txt https://raw.githubusercontent.com/vinutnavintha/aporeto/master/problem3/gosample/text_4.txt

```

The above command executes the go program and scrapes the following URLS

https://raw.githubusercontent.com/vinutnavintha/aporeto/master/problem3/gosample/text_1.txt 
https://raw.githubusercontent.com/vinutnavintha/aporeto/master/problem3/gosample/text_2.txt 
https://raw.githubusercontent.com/vinutnavintha/aporeto/master/problem3/gosample/text_3.txt 
https://raw.githubusercontent.com/vinutnavintha/aporeto/master/problem3/gosample/text_4.txt

Output is stored in files with names url1.txt, url2.txt … 