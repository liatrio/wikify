---
layout: default
---

Click [here](tools) to view the list of currently supported tools.

Easily get the gist of DevOps tools.    
  
| Section | Description |
| :---:     |     :---      |
| About     | A short description about the tool with a link to the homepage |
| Docs      | A link to the official documentation for the tool |
| Tutorials | Link(s) to popular beginner tutorials |

#### Examples  
```
$ /witdot jenkins

{{jenkins}}

------About------
From <https://jenkins.io/>: "The leading open source automation server,
Jenkins provides hundreds of plugins to support building, deploying and
automating any project."

------Docs-------
Find the documentation for Jenkins at <https://jenkins.io/doc/>.

------Tutorials--
Jenkins Tutorial <https://www.tutorialspoint.com/jenkins/>
Continuous integration with Jenkins
<http://www.vogella.com/tutorials/Jenkins/article.html>


```  
  
#### -l, --list
![/witdot list](https://shanemacbride.github.io/misc/list.gif)  

#### Contributing Walkthrough  
![Meta Example](https://shanemacbride.github.io/misc/witdotWalkthrough.gif)  
  
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
  
#### Contributing
Contributing to witdot is easy! All that is required for a tool to be added to witdot's arsenal is for a text file to be created and placed in the `tools` directory. witdot uses these text files to display information about tools. See [witdot.tool](https://github.com/liatrio/witdot/blob/master/tools/witdot.tool) for an example.
  
| Tool File Guidelines |
| :---     |
| filename should be `toolname.tool` |
| categories indexed with `about`, `docs`, and `tutorials` |
| <= 3 lines per category |
| 80 char per line |
| URLs surrounded with < > |

