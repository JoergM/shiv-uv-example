## shiv-Example

This Repo demonstrates how to build an executable from an uv project using shiv. Use it as a template to create 
your own projects that should generate a single binary based on a python project.

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
Repo just copy it and change the variable on to to match your binary name which is defined in your 
pyproject.toml under [project.scripts].

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

Replace it with whatever code you would like. 

### Package structure

It also imports a second internal module to demonstrate, how to structure this package. 

Some notes on that:

- local modules are imported using the relative syntax `import .modname` (as demonstrated using mod.py in cli.py)
- The console script entry point needs to be defined in pyproject.toml:
 
```aiignore
[project.scripts]
shiv-example = "shiv_example:main"
```

- don't forget to set the variable BINARY_NAME in build.sh to the script name (shiv-example in this case)
- !important the module that the main function is in should not be called main. This will lead to an error in shiv.

### Running in Dev-Mode

To start the command in dev mode without building it with build.sh use:

```aiignore
uv run shiv-example
```

uv knows how to deal with the dependencies for the defined console entry point.