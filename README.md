# bash-unique - v2.0.0
Bash library for generating unique varible names.

## Functions
```
# Outputs unique variable name, takes two arguments (output variable, declare options (-i, -a, -A, ...))
unique_new

# Deletes the variable, takes one argument (variable name)
unique_del

# Tests if variable exist, takes one argument (variable name)
unique_test

# Echo variable type, takes one argument (variable name)
unique_type
```

## Global variables
```
# Prefix for unique name, read only!
_unique_prefix="_"

# Current unique variable name, dont change!
_unique_current=0
```
