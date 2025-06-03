## shiv-Example

This Repo demonstrates how to build an executable from an uv project using shiv.

## Major Steps

### Pre-Conditions

Only uv needs to be installed on the computer. Shiv will be used via uvx. 

### Creating the project

This project is created as uv package using:

```
uv init --package
```

### The build.sh

The build.sh file is used to build the package and create the binary using shiv. To use it in your 
Repo just copy it and change the variables on to to match your binary name and main function.

It uses a not perfect "ls trick" to get the wheel name. I didn't find a better way to get the wheel name in a 
way that works across different versions.

### Building the executable

As you might have guessed:

```
./build.sh
```

## The cli Source

Inside the package is a small code snippet using click for parsing an argument. It is there to 
demonstrate the use of an external package (click). 