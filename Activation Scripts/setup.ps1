param(
    [Parameter(Mandatory = $true)]
    [string]$RepoUrl
)

# === Быстрая настройка Python + Jupyter в VSCode ===

# 0. Разрешить выполнение локальных PowerShell-скриптов (только для текущего пользователя)
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force

# 1. Установка основных инструментов
winget install -e --id Git.Git
winget install -e --id Python.Python.3.12
winget install -e --id Microsoft.VisualStudioCode

# 2. Установка расширений VSCode
$exts = @(
    "ms-python.python",
    "ms-toolsai.jupyter",
    "ms-python.vscode-pylance"
)
foreach ($e in $exts) { code --install-extension $e }

# 3. Клонирование репозитория (берём имя папки из URL)
$projectName = ($RepoUrl.Split('/')[-1] -replace '.git$', '')
git clone $RepoUrl $projectName
cd $projectName

# 4. Создание и активация виртуального окружения
python -m venv .venv
. .\.venv\Scripts\Activate.ps1

# 5. Установка базовых пакетов
pip install --upgrade pip jupyter notebook ipykernel

# 6. Установка зависимостей из requirements.txt (если есть)
if (Test-Path "requirements.txt") {
    Write-Host "requirements.txt найден → устанавливаю зависимости..."
    pip install -r requirements.txt
} else {
    Write-Host "requirements.txt не найден → пропускаю установку зависимостей."
}

# 7. Запуск VS Code
code .
