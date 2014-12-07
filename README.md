Overview
========

Link Files
----------

Link files, with an extension of `.ln`, will be symlinked into places where
your programs expect them to be. If the first line of a link file contains a
link expression of the form `link:<expr>`, then `expr` will be evaluated as
Bash code which is expected to yield a filename relative to the current target
directory.  As a special case, an `expr` of `dot` will yield the name of the
current file without the `.ln` extension prefixed with a dot. If no link
expression is present, then the target file is simply the name of the file
without the `.ln` extension. The variable `$name` is available to link
expressions, which evaluates to the default target, i.e., the name of the file
without the `.ln` extension. Because the first line will not be stripped out,
it is usually necessary to ensure that it is not interpreted by anything, e.g.,
in a comment. In cases where the first line must be something other than a
link expression, e.g., with executable files, a file of the form `$name.target`
may appear in the same directory as a link file whose contents are treated as
the `expr` portion of a link expression.

The target directory is defined by a `.target` file in the directory in which
a `.ln` file resides. The contents of this file are `eval`ed and set equal to
the variable `PTD`, which is available to the file itself. Thus in order to set
a path relative to the parent directory, something like `$PTD/...` can be used,
where `...` is a target relative to the parent target directory. If no `.target`
file exists, then the target is the same as that of the parent directory. Thus,
a `.target` file must exist at the dotfile root. (Usually, this will be an
absolute path to the home directory.)

Input Files
-----------

Input files allow automatically generated dotfile differences based on system
configuration or hardware availability. The `resolve` utility will resolve all
directives in each input file, which end in `.in`, to produce an output file of
the same name with the `.in` removed. Most input files actually take the form
of `.ln.in`, such that they will result in link files when resolved. The
available directives are variable injection and conditional expressions. A
conditional expression takes the form `[[<cond>:<vf>?<vt>]]`, where `cond` is a
condition (see below), and `vf` and `vt` are the values the entire expression
takes on if `cond` is false or true, respectively. A variable injection takes
the form `{{variable}}`, which is replaced with the value of `variable`.

Conditions and variables are specified by two files, `conds.sh` and `vars.sh`,
respectively. These are plain bash files which are sourced by `link`. They are
intended to provide routines to determine system properties, rather than
specify such properties explicitly. If necessary, local files (such as ~/.vars)
can be used to accomplish this.
