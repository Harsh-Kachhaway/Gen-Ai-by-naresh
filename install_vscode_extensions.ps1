# PowerShell Script to Install VS Code Extensions Safely

$extensions = @(
    "almenon.arepl",
    "njpwerner.autodocstring",
    "saoudrizwan.claude-dev",
    "formulahendry.code-runner",
     "adpyke.codesnap", # optional
    "GitHub.copilot",
    "visualstudioexptteam.vscodeintellicode",
    "ms-toolsai.jupyter",
    "ms-toolsai.vscode-jupyter-cell-tags",
     "yzane.markdown-pdf", # optional
    "cweijan.vscode-office",
    "frinkr.pdf",
    "ms-python.vscode-pylance",
    "donjayamanne.python-environment-manager",
    "donjayamanne.python-extension-pack",
    "076923.python-image-preview"
)

$installed = code --list-extensions

foreach ($ext in $extensions) {
    if ($installed -contains $ext) {
        Write-Host "✅ Already installed: $ext"
    } else {
        Write-Host "⬇ Installing: $ext"
        code --install-extension $ext
    }
}

Write-Host "🎉 All extensions processed successfully!"