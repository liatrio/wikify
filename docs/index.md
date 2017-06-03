---
layout: default
---

#### Given a file structure similar to this example...
```
content
├── Bios
│   ├── bob_smith.pdf
│   └── john_smith.pdf
└── Toolbelt
    ├── github.pdf
    └── slack.pdf

2 directories, 4 files
```

#### ...output [this](example)!

#### Usage
Simply edit the settings within `wikify` and execute it.

#### Settings
```bash
# GitHub Username
G=liatrio

# Repository Name
R=wikify

# Website Directory -> Where should the generated content be placed?
W=docs

# Title of Content
T=example

# Subsections Name -> sections, chapters, modules, groups, teams, squads, etc.
S=Sections

# Extension of Pages
E=pdf

# Header Attached to the Top of Each Generated Page
H=header.txt

# Files to be Converted Location
F=content
```
