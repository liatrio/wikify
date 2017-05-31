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
Contributing to witdot is easy! All that is required for a tool to be added to witdot's arsenal is for a text file to be created and placed in the `tools` directory. witdot uses these text files to display information about tools. See [witdot.tool](https://github.com/liatrio/witdot/blob/master/tools/witdot.tool) for an example.
  
| Tool File Guidelines |
| :---     |
| filename should be `toolname.tool` |
| categories indexed with `about`, `docs`, and `tutorials` |
| <= 3 lines per category |
| 80 char per line |
| URLs surrounded with < > |
