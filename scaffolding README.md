# react-project-boilerplate
some templating solutions

## How to use
1. run task `templates bootstrap`
2. Exclude templates folder from typescript checking in tsconfig.json:
```
{

  "exclude": [".scaffolding-templates/*"]
}

```


its a robust setup but for now its enough tools to work with

this approach allows seamlessly use makefile as well through command launcher, but it requires some additional setup.
easy templating done!



## Setup on new Machine / New VSCode
1. add user tasks to vscode :
```
{
    "version": "2.0.0",
    "tasks": [
        {
            "label": "templates bootstrap",
            "type": "shell",
            "command": "echo done",
            "group": {
                "kind": "build",
                "isDefault": true
            },
            "presentation": {
                "echo": true,
                "reveal": "always",
                "focus": false,
                "panel": "shared"
            },
            "dependsOn": [
                "download templates",
                "remove git folder",
                "move templates to root",
                "remove empty folder",
                "integrate templates",
                "remove integration script"
            ],
            "dependsOrder": "sequence"

        },{
            "label": "download templates",
            "type": "shell",
            "command": "git clone https://github.com/Galionix/react-project-boilerplate.git .templates"
        },{
            "label": "remove git folder",
            "type": "shell",
            "command": "Remove-Item -Path .templates/.git -Force -Recurse"
        },{
            "label": "move templates to root",
            "type": "shell",
            "command": "cp -r .templates/* ."
        },{
            "label": "remove empty folder",
            "type": "shell",
            "command": "Remove-Item -Path .templates -Force -Recurse"
        },{
            "label": "integrate templates",
            "type": "shell",
            "command": "./integrate.ps1"
        },{
            "label":"remove integration script",
            "type": "shell",
            "command": "Remove-Item -Path integrate.ps1 -Force"
        }
    ]
}
```
2. install vscode extension `Command Launcher` https://marketplace.visualstudio.com/items?itemName=Agui.command-launcher-tree
3. You can now add such commands in settings.json :
```
"commandLauncher.actions": [{
	"command": "make",
	"group": "react",
	"label": "create component",
	"arguments": [
		"comp N=\"",
		{
			"inputContext": "Please, enter a name."
		},
		"\""
	]
},
]
```
