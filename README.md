### witdot  
_What is this DevOps tool?_ Easily get the gist of DevOps tools.    
  
| Section | Description |
| :---:     |     :---      |
| About     | A short description about the tool with a link to the homepage |
| Docs      | A link to the official documentation for the tool |
| Tutorials | Link(s) to popular beginner tutorials |

#### Walkthrough  
![Meta Example](https://shanemacbride.github.io/misc/witdotWalkthrough.gif)  
  
#### Usage
```
Usage: witdot [-a <about>] [-d <docs>] [-t <tutorials>] [-h] [<tool>]

Easily get the gist of DevOps tools.

Arguments:
   tool                  Tool to get the gist of.
                         Tools:  (default: witdot)

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
Contributing to witdot is easy! All that is required for a tool to be added to witdot's arsenal is for a text file to be created and placed in the `txt` directory. witdot uses these text files to display information about tools. Below is an example of a properly formatted text file.  
  
```
about
witdot allows easy access to the gists of DevOps tools. A gist consists of
information about the tool, a link to official documentation, and a link to a
tutorial for beginners.
docs
The documentation for witdot can be found at
<https://github.com/liatrio/witdot/wiki>.
tutorials
A tutorial for how to use and contribute to witdot can be found at
<https://github.com/liatrio/witdot/blob/master/README.md>.
```
  
| Text File Guidelines |
| :---     |
| filename should be `toolname.txt` |
| categories indexed with `about`, `docs`, and `tutorials` |
| <= 3 lines per category |
| 80 char per line |
| URLs surrounded with < > |
