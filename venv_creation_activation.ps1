$venv_activate_script = "$((Get-Item .).FullName)\venv\Scripts\Activate.ps1"
if(Test-Path $venv_activate_script -PathType leaf)
{
	venv\Scripts\Activate.ps1
}
else
{
	python -m venv "$((Get-Item .).FullName)\venv"
	venv\Scripts\Activate.ps1
	pip install -r requirements.txt
}

python .\python_code_to_run.py
deactivate
