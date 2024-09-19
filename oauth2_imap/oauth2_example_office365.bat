
REM $Id: oauth2_example_office365.bat,v 1.11 2024/06/18 11:55:49 gilles Exp gilles $

@REM I hope you can read
@REM A line beginning with @REM is a comment
@REM This batch script is for Windows users, but not for Linux users, nor MacOS users.

@SETLOCAL

@REM This stuff is there to be able to run this batch with a double-clic
@ECHO Currently running through %0 %*
@REM the following command change current directory to the dirname of the current batch pathname
@REM CD /D %~dp0
@PUSHD %~dp0

@ECHO 
@ECHO Getting OAUTH2 tokens 

@IF NOT EXIST tokens MKDIR tokens

@REM !!! The following CALL lines are the only part to edit !!!
@REM Replace the email by the email you want an access token to be used with imapsync

@REM For an Office365 account it will be:

CALL .\oauth2_imap.exe    gilles.lamiral@outlook.com


@REM END OF PART TO EDIT


@REM Some extra features:
@REM You can specify the token file with the option --token_file
@REM example:

@REM CALL .\oauth2_imap.exe --token_file my_token_file_the_name_I_want.txt   gilles.lamiral@outlook.com  



@POPD

@PAUSE


