@echo off
setlocal enabledelayedexpansion

set "file1=0"

IF "%2" NEQ "" goto Help1
if "%1" EQU "?" goto Help1
if /i "%1" EQU "help" goto Help1

IF "%1" EQU "" (
  Echo Pentru ajutor introduceti: help sau ?
  Echo Pentru a iesi introduceti: Exit
  set rem1=
  set "bot=Emi: "
               ) else (
                  set bot=
                  set rem1=REM
                  set tral=%1
                  if /i "!tral:~-4!" EQU ".txt" (
                    set "txt1=%1"
                    set txt1=!txt1:~0,-4!
                    set "file1=1"
                    goto DinFileTXT
                  )

                 )

:Itroduce
%rem1% set /p "tral=Gu: "
%rem1% if /i "!tral!" EQU "exit" goto Exit1
%rem1% if /i "!tral!" EQU "help" goto Help1
%rem1% if "!tral!" EQU "?" goto Help1


:Begin1
if /i "%tral:~0,4%"=="-ru-" set "tral=%tral:~4%" & goto tilsnarT

call :strlen4 tral dlina
call :Trnsl1
if %file1% NEQ 1 (echo %bot%%temp2:_= %
 ) else (
  echo %temp2% >> %txt1%_l.txt
 )
exit /b

:tilsnarT
set tral=%tral: =_%
set "tral=%tral%__"
call :strlen4 tral dlina
call :Trnsl3L

set "tral=%tral%_"
call :strlen4 tral dlina2
call :Trnsl2L

call :strlen4 tral dlina3
call :Trnsl1L

if %file1% NEQ 1 (echo %bot%%adunlitere:_= %
 ) else (
  echo %adunlitere:_= % >> %txt1%_c.txt
 )
%rem1% goto Itroduce
exit /b 

::---------------------Bloc cu subprograme-----

::---------------------calcul lungime text-----

:strlen4  StrVar  RtnVar  --  be sure to check if the returned errorlevel is 0
(   setlocal enabledelayedexpansion & set /a "}=0"
    if "%~1" neq "" if defined %~1 (
        for %%# in (4096 2048 1024 512 256 128 64 32 16) do (
            if "!%~1:~%%#,1!" neq "" set "%~1=!%~1:~%%#!" & set /a "}+=%%#"
        ) > NUL
        set "%~1=!%~1!0FEDCBA9876543211" & set /a "}+=0x!%~1:~32,1!!%~1:~16,1!"
    )
)
endlocal & set /a "%~2=%}%" & exit /b

::---------------------------------------------------
:DinFileTXT

if exist %1 (echo Prelucrarea fisierului: %1
echo.
for /f "UseBackQ tokens=1 Delims=" %%A IN ("%1") do (
< nul set /p str="∙"
     set tral=%%A
     call :Begin1
)
) else (
echo Nu exista fisier: %1
)

exit /b
::---------------------------------------------------

:Trnsl1
set temp2=
for /L %%H in (0,1,%dlina%) do (
set temp1=!tral:~%%H,1!
                        
if "!temp1!" == "А" set temp1=A
if "!temp1!" == "а" set temp1=a

if "!temp1!" == "Б" set temp1=B
if "!temp1!" == "б" set temp1=b
if "!temp1!" == "В" set temp1=V
if "!temp1!" == "в" set temp1=v
if "!temp1!" == "Г" set temp1=G
if "!temp1!" == "г" set temp1=g
if "!temp1!" == "Д" set temp1=D
if "!temp1!" == "д" set temp1=d
if "!temp1!" == "Е" set temp1=E
if "!temp1!" == "е" set temp1=e
if "!temp1!" == "Ё" set temp1=JO
if "!temp1!" == "ё" set temp1=jo
          
if "!temp1!" == "Ж" set temp1=ZH
if "!temp1!" == "ж" set temp1=zh
if "!temp1!" == "З" set temp1=Z
if "!temp1!" == "з" set temp1=z
if "!temp1!" == "И" set temp1=I
if "!temp1!" == "и" set temp1=i
if "!temp1!" == "Й" set temp1=J
if "!temp1!" == "й" set temp1=j
if "!temp1!" == "К" set temp1=K
if "!temp1!" == "к" set temp1=k
if "!temp1!" == "Л" set temp1=L
if "!temp1!" == "л" set temp1=l
if "!temp1!" == "М" set temp1=M
if "!temp1!" == "м" set temp1=m
            
if "!temp1!" == "Н" set temp1=N
if "!temp1!" == "н" set temp1=n
if "!temp1!" == "О" set temp1=O
if "!temp1!" == "о" set temp1=o
if "!temp1!" == "П" set temp1=P
if "!temp1!" == "п" set temp1=p
if "!temp1!" == "Р" set temp1=R
if "!temp1!" == "р" set temp1=r
if "!temp1!" == "С" set temp1=S
if "!temp1!" == "с" set temp1=s
if "!temp1!" == "Т" set temp1=T
if "!temp1!" == "т" set temp1=t
if "!temp1!" == "У" set temp1=U
if "!temp1!" == "у" set temp1=u
            
if "!temp1!" == "Ф" set temp1=F
if "!temp1!" == "ф" set temp1=f
if "!temp1!" == "Х" set temp1=H
if "!temp1!" == "х" set temp1=h
if "!temp1!" == "Ц" set temp1=C
if "!temp1!" == "ц" set temp1=c
if "!temp1!" == "Ч" set temp1=CH
if "!temp1!" == "ч" set temp1=ch
if "!temp1!" == "Ш" set temp1=SH
if "!temp1!" == "ш" set temp1=sh
if "!temp1!" == "Щ" set temp1=SHH
if "!temp1!" == "щ" set temp1=shh
if "!temp1!" == "Ъ" set temp1=##
if "!temp1!" == "ъ" set temp1=#
            
if "!temp1!" == "Ы" set temp1=Y
if "!temp1!" == "ы" set temp1=y
if "!temp1!" == "Ь" set temp1=''
if "!temp1!" == "ь" set temp1='
if "!temp1!" == "Э" set temp1=JE
if "!temp1!" == "э" set temp1=je
if "!temp1!" == "Ю" set temp1=JU
if "!temp1!" == "ю" set temp1=ju
if "!temp1!" == "Я" set temp1=JA
if "!temp1!" == "я" set temp1=ja

set temp2=!temp2!!temp1!
)
exit /b

::----------------------------------------
:Trnsl3L
set adunlitere=
set /a dlina=%dlina%-3

For /L %%H in (0,1,%dlina%) do (
set tempTR=!tral:~%%H,3!
set tempT%%H=!tral:~%%H,3!

if !tempTR! EQU SHH set "tempT%%H=Щ"
if !tempTR! EQU SHh set "tempT%%H=Щ"
if !tempTR! EQU Shh set "tempT%%H=Щ"
if !tempTR! EQU shh set "tempT%%H=щ"

)

for /L %%T in (0,1,%dlina%) do (
set cont=%%T

if !tempT%%T! EQU Щ call :CLS1
if !tempT%%T! EQU щ call :CLS1

if "!tempT%%T!" NEQ "" set adunlitere=!adunlitere!!tempT%%T:~0,1!
)
set "tral=%adunlitere%"
exit /b

::----------------------------------------

:Trnsl2L
set adunlitere=
set /a dlina2=%dlina2%-2
For /L %%H in (0,1,%dlina2%) do (

set tempTR=!tral:~%%H,2!
set tempT%%H=!tral:~%%H,2!

if !tempTR! EQU JO set "tempT%%H=Ё"
if !tempTR! EQU Jo set "tempT%%H=Ё"
if !tempTR! EQU jo set "tempT%%H=ё"

if !tempTR! EQU YO set "tempT%%H=Ё"
if !tempTR! EQU Yo set "tempT%%H=Ё"
if !tempTR! EQU yo set "tempT%%H=ё"

if !tempTR! EQU ZH set "tempT%%H=Ж"
if !tempTR! EQU Zh set "tempT%%H=Ж"
if !tempTR! EQU zh set "tempT%%H=ж"
if !tempTR! EQU CH set "tempT%%H=Ч"
if !tempTR! EQU Ch set "tempT%%H=Ч"
if !tempTR! EQU ch set "tempT%%H=ч"
if !tempTR! EQU SH set "tempT%%H=Ш"
if !tempTR! EQU Sh set "tempT%%H=Ш"
if !tempTR! EQU sh set "tempT%%H=ш"
if !tempTR! EQU ## set "tempT%%H=Ъ"
if !tempTR! EQU '' set "tempT%%H=Ь"
if !tempTR! EQU JE set "tempT%%H=Э"
if !tempTR! EQU Je set "tempT%%H=Э"
if !tempTR! EQU je set "tempT%%H=э"


if !tempTR! EQU JU set "tempT%%H=Ю"
if !tempTR! EQU Ju set "tempT%%H=Ю"
if !tempTR! EQU ju set "tempT%%H=ю"

if !tempTR! EQU YU set "tempT%%H=Ю"
if !tempTR! EQU Yu set "tempT%%H=Ю"
if !tempTR! EQU yu set "tempT%%H=ю"


if !tempTR! EQU JA set "tempT%%H=Я"
if !tempTR! EQU Ja set "tempT%%H=Я"
if !tempTR! EQU ja set "tempT%%H=я"

if !tempTR! EQU YA set "tempT%%H=Я"
if !tempTR! EQU Ya set "tempT%%H=Я"
if !tempTR! EQU ya set "tempT%%H=я"


)
For /L %%T in (0,1,%dlina2%) do (
set cont=%%T

if !tempT%%T! EQU Ё call :CLS2
if !tempT%%T! EQU ё call :CLS2
if !tempT%%T! EQU Ж call :CLS2
if !tempT%%T! EQU ж call :CLS2
if !tempT%%T! EQU Ч call :CLS2
if !tempT%%T! EQU ч call :CLS2
if !tempT%%T! EQU Ш call :CLS2
if !tempT%%T! EQU ш call :CLS2
if !tempT%%T! EQU Ъ call :CLS2
if !tempT%%T! EQU Э call :CLS2
if !tempT%%T! EQU э call :CLS2
if !tempT%%T! EQU Ю call :CLS2
if !tempT%%T! EQU ю call :CLS2
if !tempT%%T! EQU Я call :CLS2
if !tempT%%T! EQU я call :CLS2
if !tempT%%T! EQU Ь call :CLS2

if "!tempT%%T!" NEQ "" set adunlitere=!adunlitere!!tempT%%T:~0,1!
)
set "tral=%adunlitere%"
exit /b

::--------------------------------------------

:Trnsl1L
set adunlitere=

For /L %%H in (0,1,%dlina3%) do (
set tempTR=!tral:~%%H,1!
set tempT%%H=!tral:~%%H,1!
                        
if "!tempTR!" == "B" set tempT%%H=Б
if "!tempTR!" == "b" set tempT%%H=б
if "!tempTR!" == "V" set tempT%%H=В
if "!tempTR!" == "v" set tempT%%H=в
if "!tempTR!" == "G" set tempT%%H=Г
if "!tempTR!" == "g" set tempT%%H=г
if "!tempTR!" == "D" set tempT%%H=Д
if "!tempTR!" == "d" set tempT%%H=д
if "!tempTR!" == "Z" set tempT%%H=З
if "!tempTR!" == "z" set tempT%%H=з
if "!tempTR!" == "I" set tempT%%H=И
if "!tempTR!" == "i" set tempT%%H=и
if "!tempTR!" == "K" set tempT%%H=К
if "!tempTR!" == "k" set tempT%%H=к
if "!tempTR!" == "L" set tempT%%H=Л
if "!tempTR!" == "l" set tempT%%H=л
if "!tempTR!" == "M" set tempT%%H=М
if "!tempTR!" == "m" set tempT%%H=м
if "!tempTR!" == "N" set tempT%%H=Н
if "!tempTR!" == "n" set tempT%%H=н
if "!tempTR!" == "P" set tempT%%H=П
if "!tempTR!" == "p" set tempT%%H=п
if "!tempTR!" == "R" set tempT%%H=Р
if "!tempTR!" == "r" set tempT%%H=р
if "!tempTR!" == "S" set tempT%%H=С
if "!tempTR!" == "s" set tempT%%H=с
if "!tempTR!" == "T" set tempT%%H=Т
if "!tempTR!" == "t" set tempT%%H=т
if "!tempTR!" == "F" set tempT%%H=Ф
if "!tempTR!" == "f" set tempT%%H=ф
if "!tempTR!" == "#" set tempT%%H=ъ
if "!tempTR!" == "Y" set tempT%%H=Ы
if "!tempTR!" == "y" set tempT%%H=ы
if "!tempTR!" == "'" set tempT%%H=ь
if "!tempTR!" == "A" set tempT%%H=А
if "!tempTR!" == "a" set tempT%%H=а
if "!tempTR!" == "J" set tempT%%H=Й
if "!tempTR!" == "j" set tempT%%H=й
if "!tempTR!" == "E" set tempT%%H=Е
if "!tempTR!" == "e" set tempT%%H=е
if "!tempTR!" == "U" set tempT%%H=У
if "!tempTR!" == "u" set tempT%%H=у
if "!tempTR!" == "O" set tempT%%H=О
if "!tempTR!" == "o" set tempT%%H=о
if "!tempTR!" == "C" set tempT%%H=Ц
if "!tempTR!" == "c" set tempT%%H=ц

if "!tempTR!" == "H" set tempT%%H=Х
if "!tempTR!" == "h" set tempT%%H=х

if "!tempTR!" == "X" set tempT%%H=Х
if "!tempTR!" == "x" set tempT%%H=х

if "!tempTR!" == "w" set tempT%%H=щ
if "!tempTR!" == "W" set tempT%%H=Щ

if "!tempTR!" == "q" set tempT%%H=я
if "!tempTR!" == "Q" set tempT%%H=Я



if "!tempT%%H!" NEQ "" set adunlitere=!adunlitere!!tempT%%H!
)

::-------------------------------------------------------------

:CLS1
set /a cont2=cont+1
set /a cont3=cont+2
set tempT%cont2%=
set tempT%cont3%=
exit /b

:CLS2
set /a cont2=cont+1
set tempT%cont2%=
exit /b

:Help1
echo :: Help ^/ Ajutor ::
echo Parametri introdusi nu pot avea spatii.
echo Ex: %0 мама_папа
echo Asa nu va lucra: %0 мама папа
echo Pentru a transforma din Latina in Cyrillic
echo Textu tre sa inceapa cu: -ru-
echo Ex: %0 -ru-mama_papa
echo Parametrul introdus poate fi si un fisier *.TXT
echo Ex: %0 file.txt
echo Ca rezultat o sa avem fisier nou creat cu translit
echo Daca transformam in Cyrillic, rezultat: file_c.txt
echo Daca transformam in Latina, rezultat: file_l.txt
:Exit1
exit /b
