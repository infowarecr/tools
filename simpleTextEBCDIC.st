#*******************************************************************************
#* Simple Texto EBCDIC - Archivo de configuraci�n                                    *
#*******************************************************************************
#
#===============================================================================
# Encabezado
#===============================================================================
T�tulo=Simple Tetxo EBCDIC;
Espera=5000;                    Tiempo l�mite de espera
Direcci�nIP=192.168.10.87;     Direcci�n IP del Sistema Remoto
Puerto=50002;                    Puerto o socket del Sistema Remoto
EBCDIC=Si;			Si maneja codigo EBCDIC debe ser "Si"
Reenviar=Si;                    Reenvia mensaje en caso de problema  
#Conexi�n=0800001;		Mensaje de conexi�n (Logon)
#Desconexi�n=0800002;		Mensaje de desconexi�n (Logoff);
#
#===============================================================================
# Definici�n de mensajes
#===============================================================================
#
# Consulta desde convenios
#-------------------------------------------------------------------------------
T={1,*}#
[1,400];#				        
###===> Respuesta correcta en la consulta 
#R={1,*}#				
#[1,400];#     					Fin de las repeticiones
