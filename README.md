# bash-unique - 1.0.0
Bash library for generating unique varible names, it is useful for complex data structures.

## Functions
```
# Outputs unique variable name, takes one argument (output variable)
unique_new

# Deletes the variable, takes one argument (variable name)
unique_del

# Tests if variable exist, takes one argument (variable name)
unique_tst
```

## Global variables
```
# Prefix for unique name, read only!
_unique_prefix="_"

# Current unique variable name, dont change!
_unique_current=0
```
