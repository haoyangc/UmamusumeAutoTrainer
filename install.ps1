
function Check {
    param (
        $ErrorInfo
    )
    if (!($?)) {
        Write-Output $ErrorInfo
        #InstallFail
        Write-Output "install failed"
        Read-Host | Out-Null ;
        Exit
    }
}

#.\venv\Scripts\activate
..\.venv\Scripts\activate
Check "activate venv failed"
pip install pyelftools==0.29 -i https://pypi.tuna.tsinghua.edu.cn/simple
pip install pdf2docx==0.5.6 -i https://pypi.tuna.tsinghua.edu.cn/simple
pip install --upgrade -r requirements.txt #-i https://mirror.baidu.com/pypi/simple

Write-Output "install complete"
Read-Host | Out-Null ;
