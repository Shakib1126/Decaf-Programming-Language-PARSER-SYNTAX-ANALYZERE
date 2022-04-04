# Decaf-Programming-Language-Parser-Syntax-Analyzer

This project is a `Parser / Syntax Analyzer` for the Decaf Programming language.Decaf 20 is a strongly-typed language. By design, it has many similarities with `C/C++/Java`, so you should find it fairly easy to pick up. Keep in mind it is not an exact match to any of those languages. The feature
set has been trimmed down and simplified to keep the programming projects manageable.


# Operating System Supported

* Windows
* Linux


# Dependencies required
* Flex
* Make
* MinGW / Codeblocks or any other C / C++ Compiler
* Bison


# How to Install the Dependencies
First you need to install the above mentioned dependencies. Follow the links and steps below to install them on your `Windows` machine. 
However on `Linux` all the dependencies are already pre-installed.


## Install MinGW
* Click on this link to download the setup. ( https://sourceforge.net/projects/mingw/ )
* Follow the steps in installation wizard.
* Create an environmental variable for `MinGW`

## Install Flex
* Click on this link to download the setup. ( http://gnuwin32.sourceforge.net/packages/flex.htm )
* Follow the steps in installation wizard.
* Create an environmental variable for `flex`

## Install make
* Click on this link to download the setup. ( http://gnuwin32.sourceforge.net/packages/make.htm?bcsi-ac-750bd2ac617628e1=26C3494200000004h7WERYgNw1/xUeCJtUvD47DAMFYHAQAABAAAAIEhPgAwKgAAAAAAAM9AAAA=)
* Follow the steps in installation wizard.
* Create an environmental variable for `make`

## Install Bison
* Click on this link to download the setup. ( http://gnuwin32.sourceforge.net/packages/bison.htm)
* Follow the steps in installation wizard.
* Create an environmental variable for `bison`


# Build and Run

As this project was built on windows, I have used `build.bat` and `exec.bat` files to build and run our project respectively.
(As per the instructions, we were told to build `build.sh` and `exec.sh` file. But as per my research the `.sh` files cannot be executed 
directly on windows without some modifications. In order to overcome this problem, I have used windows own `.bat` file which works exactly the same as the `.sh `files.


I have also created `build.sh` and `exec.sh` files which makes it easier to run the code on `linux` platforms. However, if you encounter any error using shell scripts,
kindly use a `windows` machine.


## To build the project
* Open command prompt
* Go to the workdir folder
* Type this command. `build.bat` ( `Windows` )
* Type this command. `bash build.sh` ( `Linux` )

## To Run the project
* Open command Prompt
* Go to workdir folder
* Type this command. `<filepath_to_exec.bat>exec.bat <filepath_to_your_inputfile> <output_file>` ( `Windows` )
* Type this command. `bash exec.sh <filepath_to_your_inputfile> <output_file>` ( `Linux` )

 ##### Note 
 **`filepath_to_exec.bat`** = This is the exact path to where your `exec.bat` file is located.
 
 **`filepath_to_your_inputfile`** = This is the exact path to where your input file / Program is located.
 
 **`output_file`** = This is the name of the file in which you want to store the output.

 

 
 **A sample command would be like** - `C:/Users/shaki/Desktop/SCANNER/decaf_parser/syntax_analyzer/workdir/exec.bat ./samples/bad1.decaf output.txt`
 
 where **`filepath_to_exec.bat`** = C:/Users/shaki/Desktop/SCANNER/decaf_parser/syntax_analyzer/workdir/
 
 **`filepath_to_your_inputfile`** = ./samples/bad1.decaf
 
 **`output_file`** = output.txt`
 
 
 
 ## THANK YOU
 
