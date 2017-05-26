### dogist
Easily get the gist of DevOps tools, including:  
  - About
    - A short description about the tool with a link to the homepage
  - Docs
    - A link to the official documentation for the tool
  - Tutorials
    - Link(s) to popular beginner tutorials

#### Example
Input:
```
lua dogist.lua dogist
```

Output:
```

{{dogist}}

------About------
dogist allows easy access to the gists of DevOps tools. A gist consists of
information about the tool, a link to official documentation, and a link to a
tutorial for beginners.

------Docs-------
The documentation for dogist can be found at
<https://github.com/liatrio/dogist/wiki>.

------Tutorials--
A tutorial for how to use and contribute to dogist can be found at
<https://github.com/liatrio/dogist/blob/master/README.md>.

```

#### Usage
```
Usage: dogist [-a <about>] [-d <docs>] [-t <tutorials>] [-h] [<tool>]

Easily get the gist of DevOps tools.

Arguments:
   tool                  Tool to get the gist of.
                         Tools:  (default: dogist)

Options:
   -a <about>, --about <about>
                         Limit gist to About only.
   -d <docs>, --docs <docs>
                         Limit gist to Docs only.
   -t <tutorials>, --tutorials <tutorials>
                         Limit gist to Tutorials only.
   -h, --help            Show this help message and exit.
```

#### Contributing
Contributing to dogist is easy! All that is required for a tool to be added to dogist's arsenal is for a text file to be created and placed in the `txt` directory. dogist uses these text files to display information about tools.  
  
This is an example of a properly formatted text file:
```
about
dogist allows easy access to the gists of DevOps tools. A gist consists of
information about the tool, a link to official documentation, and a link to a
tutorial for beginners.
docs
The documentation for dogist can be found at
<https://github.com/liatrio/dogist/wiki>.
tutorials
A tutorial for how to use and contribute to dogist can be found at
<https://github.com/liatrio/dogist/blob/master/README.md>.
```

Guidelines for `.txt` files:
  - filename should be `toolname.txt`
  - categories indexed with `about`, `docs`, and `tutorials`
  - <= 3 lines per category
  - 80 char per line
  - URLs surrounded with < >
