set ink=.lnk
set link=C:\Users\matthieu.bacheley\AppData\Roaming\Microsoft\Windows\SendTo
set linkD=C:\Users\matthieu.bacheley\Desktop
set linkR=%link%%ink%
xxmklink "%link%" "%link%" "%link%" %link%

move "%linkR%" "%linkD%\Sendto%ink%"
pause

cd AppData\Roaming\Microsoft\Windows\SendTo
echo echo on >Send_To_GIT.bat
echo set all=%%~f1 >>Send_To_GIT.bat
echo set letter=%%~d1 >>Send_To_GIT.bat
echo set pat=%%~p1 >>Send_To_GIT.bat
echo set patha=%%~1 >>Send_To_GIT.bat
echo set name=%%~n1 >>Send_To_GIT.bat
echo set ext=%%~x1 >>Send_To_GIT.bat
echo set ink=.lnk >>Send_To_GIT.bat
echo mkdir "%%letter%%%%pat%%%%name%%" >>Send_To_GIT.bat 
echo copy "%%letter%% %%pat%% %%name%% %%~x1" "%%letter%% %%pat%% %%name%%" >>Send_To_GIT.bat 
echo %%letter%%:>>Send_To_GIT.bat
echo cd %%letter%%%%pat%%%%name%% >>Send_To_GIT.bat
echo git init>>Send_To_GIT.bat
echo git add *%%~x1>>Send_To_GIT.bat
echo echo /*modif to have some commit*/ ^>^> %%letter%%%%pat%%%%name%%%%~x1>>Send_To_GIT.bat
echo git commit -am "ajout du nouveau fichier %%letter%%%%pat%%%%name%%%%~x1 et creation du repertoire %%letter%%%%pat%%%%name%%">>Send_To_GIT.bat 
echo pause>>Send_To_GIT.bat
pause

echo on > Send_To_Ajout.bat 
echo set all=%%~f1>> Send_To_Ajout.bat 
echo set letter=%%~d1>> Send_To_Ajout.bat 
echo set pat=%%~p1>> Send_To_Ajout.bat 
echo set patha=%%~1>> Send_To_Ajout.bat 
echo set name=%%~n1>> Send_To_Ajout.bat 
echo set ext=%%~x1>> Send_To_Ajout.bat 
echo set ink=.lnk>> Send_To_Ajout.bat 
echo set link=C:\Users\matthieu.bacheley\AppData\Roaming\Microsoft\Windows\SendTo\>> Send_To_Ajout.bat 
echo xxmklink "%%all%%" "%%all%%" "%%all%%" %%link%%>> Send_To_Ajout.bat 

echo move "%%letter%%%%pat%%%%name%%%%ink%%" "%%link%%%%name%%%%ink%%">> Send_To_Ajout.bat 
echo pause
pause

echo on > Send_To_Supr.bat
echo set all=%%~f1 >> Send_To_Supr.bat
echo set letter=%%~d1 >> Send_To_Supr.bat
echo set pat=%%~p1 >> Send_To_Supr.bat
echo set patha=%%~1 >> Send_To_Supr.bat
echo set name=%%~n1 >> Send_To_Supr.bat
echo set ext=%%~x1 >> Send_To_Supr.bat
echo set ink=.lnk >> Send_To_Supr.bat
echo set link=C:\Users\matthieu.bacheley\AppData\Roaming\Microsoft\Windows\SendTo\ >> Send_To_Supr.bat
echo del "%%link%%%%name%%%%ink%%" >> Send_To_Supr.bat
echo pause
pause