---
layout: default
---

Easily get the gist of DevOps tools.    
  
| Section | Description |
| :---:     |     :---      |
| About     | A short description about the tool with a link to the homepage |
| Docs      | A link to the official documentation for the tool |
| Tutorials | Link(s) to popular beginner tutorials |
  
Click [here](tools) to view the list of currently supported tools.
  
#### Usage
```
Usage: witdot ([-a] | [-d] | [-t]) [-l] [-h] [<tool>]

Get DevOps tool information quickly.

Arguments:
   tool                  Tool to obtain information about

Options:
   -l, --list            List all Tools
   -a, --about           Limit to About only
   -d, --docs            Limit to Docs only
   -t, --tutorials       Limit to Tutorials only
   -h, --help            Show this help message and exit.
```

#### Examples
![Examples](https://shanemacbride.github.io/misc/examples.gif)  
    
#### -l, \-\-list  
```
/witdot -l
(1) docker
(2) jenkins
(3) vagrant
(4) witdot
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

#### Contributing Walkthrough  
![Meta Example](https://shanemacbride.github.io/misc/witdotWalkthrough.gif)  
