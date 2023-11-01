# if Makefile is not present, create it

$makefile = "Makefile"
if (!(Test-Path $makefile)) {
    New-Item $makefile -type file
}

# append to Makefile new lines
$lines = @(
    "",
    "# make react component: make comp N=""componentName""",
    "",
    "N = $(COMPONENT_NAME)",
    "",
    "comp:",
    "    @echo ""Creating component ""$(N)"""..."",
    "    npx generate-react-cli component $(N)",

)