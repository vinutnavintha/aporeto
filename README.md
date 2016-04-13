
## Vini's Solutions for Aporeto Internship Quiz

### Solution1: Bash Shell Script sample:


Passing without any argument is not valid

```bash
sh-4.3$ ./bash_example.sh 
```

No arguments supplied. Usage is ./bash_example --create-file=<filename> [--no-prompt] [--verbose]   


The file does not exist. Therefore,the file will be created for the first time

```bash
sh-4.3$ ./bash_example.sh --create-file=USstates.txt
sh-4.3$                                                                                                                                                
sh-4.3$   
sh-4.3$ ls -lrt                                                                                                                                        
total 8                                                                                                                                                
-rwxrwxrwx 1 61169 61169 2448 Apr 13 00:51 bash_example.sh                                                                                             
-rw-r--r-- 1 61169 61169  472 Apr 13 00:52 USstates.txt                                                                                                
sh-4.3$ vi USstates.txt                                                                                                                                
sh-4.3$ wc -l USstates.txt                                                                                                                             
50 USstates.txt 
```

The file USstates.txt exists now. Therefore, the user is asked if he wants to over write it or not. Depending on the user-input the old file will be removed and a new file will be created. Since verbose is not set the logging is not shown. Until a valid option is not entered the prompt is repeated

```bash
sh-4.3$ ./bash_example.sh --create-file=USstates.txt                                                                                                   
File exists. Overwrite (y/n) ? yu                                                                                                                      
Please answer y or n.                                                                                                                                  
File exists. Overwrite (y/n) ? yes                                                                                                                     
Please answer y or n.                                                                                                                                  
File exists. Overwrite (y/n) ? y                                                                                                                       
sh-4.3$                                                                                                                                                
sh-4.3$                                                                                                                                                
sh-4.3$ ls -lrt                                                                                                                                        
total 8                                                                                                                                                
-rwxrwxrwx 1 61169 61169 2448 Apr 13 00:51 bash_example.sh                                                                                             
-rw-r--r-- 1 61169 61169  472 Apr 13 00:56 USstates.txt       

sh-4.3$ ./bash_example.sh --create-file=USstates.txt                                                                                                   
File exists. Overwrite (y/n) ? np                                                                                                                      
Please answer y or n.                                                                                                                                  
File exists. Overwrite (y/n) ? sd                                                                                                                      
Please answer y or n.                                                                                                                                  
File exists. Overwrite (y/n) ? n         
```

The file is being created now with the --no-prompt option. The file is already present but since the no-prompt option is present. Therefore, the user will not receive the prompt and the file will be created

```bash
sh-4.3$ ./bash_example.sh --create-file=USstates.txt --no-prompt  

sh-4.3$                                                                                                                                                
sh-4.3$ ls -lrt                                                                                                                                        
total 8                                                                                                                                                
-rwxrwxrwx 1 61169 61169 2448 Apr 13 00:51 bash_example.sh                                                                                             
-rw-r--r-- 1 61169 61169  472 Apr 13 00:57 USstates.txt              
```

The file is being created now with the --no-prompt option and the verbose command is also set. Because of verbose being set we can see the logging

```bash
sh-4.3$ ./bash_example.sh --create-file=USstates.txt --no-prompt --verbose                                                                             
File created      


sh-4.3$ ./bash_example.sh --create-file=USstates.txt --verbose                                                                                         
File exists. Overwrite (y/n) ? y                                                                                                                       
File already exists                                                                                                                                    
File removed                                                                                                                                           
File created                                                                                                                                           
sh-4.3$                                                                                                                                                
sh-4.3$ ls -lrt                                                                                                                                        
total 8                                                                                                                                                
-rwxrwxrwx 1 61169 61169 2448 Apr 13 00:51 bash_example.sh                                                                                             
-rw-r--r-- 1 61169 61169  472 Apr 13 00:59 USstates.txt       


sh-4.3$ ./bash_example.sh --create-file=USstates.txt --verbose                                                                                         
File exists. Overwrite (y/n) ? y                                                                                                                       
File already exists                                                                                                                                    
File removed                                                                                                                                           
File created                                                                                                                                           
sh-4.3$                                                                                                                                                
sh-4.3$ ls -lrt                                                                                                                                        
total 8                                                                                                                                                
-rwxrwxrwx 1 61169 61169 2448 Apr 13 00:51 bash_example.sh                                                                                             
-rw-r--r-- 1 61169 61169  472 Apr 13 00:59 USstates.txt       
```

The below commands can show the usage

```bash
sh-4.3$ ./bash_example.sh --help                                                                                                                       
Usage is ./bash_example --create-file=<filename> [--no-prompt] [--verbose]   


sh-4.3$ ./bash_example.sh -h                                                                                                                           
Usage is ./bash_example --create-file=<filename> [--no-prompt] [--verbose]   
```


Entering bad arguments will show the error code and the correct usage 

```bash
sh-4.3$ ./bash_example.sh -sdg                                                                                                                         
parse-options: invalid option -- 's'                                                                                                                   
parse-options: invalid option -- 'd'                                                                                                                   
parse-options: invalid option -- 'g'                                                                                                                   
Return code is 1                                                                                                                                       
Failed parsing options. Usage is ./bash_example --create-file=<filename> [--no-prompt] [--verbose]
```

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