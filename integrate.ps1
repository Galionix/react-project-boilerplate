# if Makefile is not present, create it

$makefile = "Makefile"
if (!(Test-Path $makefile)) {
    New-Item $makefile -type file
}

# append to Makefile new lines
$lines = @(
    "",
    "# make react component: make comp N=`"componentName`"",
    "",
    "N = `$(COMPONENT_NAME)",
    "",
    "comp:",
    "    @echo `"Creating component `"`$(N)`"...",
    "    npx generate-react-cli component `$(N)"

)
Add-Content $makefile $lines

# if .gitignore is not present, create it
$gitignore = ".gitignore"
if (!(Test-Path $gitignore)) {
    New-Item $gitignore -type file
}

# append to .gitignore new lines

$gitignoreLines = @(
    "# hide workspace templates",
    "",
    ".scaffolding-templates"
)
Add-Content $gitignore $gitignoreLines