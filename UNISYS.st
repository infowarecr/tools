#*******************************************************************************
#* ST para "Clear Path" (STcp) - Archivo de configuraci�n                      *
#*******************************************************************************
#===============================================================================
# Encabezado
#===============================================================================
T�tulo=UNISYS;
Espera=5000;                    Tiempo l�mite de espera
Direcci�nIP=192.168.10.207;         Direcci�n IP del Serie A
Estaci�n=VT001;                  Nombre de la estaci�n virtual
#Logon=?SCCC111 INGENIERIA;	    Usuario y contrase�a del Serie A
#Ind_Conexi�n=Entry;      	    Datos para desconexi�n de la aplicaci�n
#Conexi�n=?SCCC111 INGENIERIA;	  Datos para conexi�n a la aplicaci�n
Desconexi�n=?CLOSE;             Datos para desconexi�n de la aplicaci�n
LincII=Si;			                Indica si es una interfaz tipo LINCII
#===============================================================================
#= Definici�n de mensajes
#===============================================================================
#
# Pago de recibos por BANCATEL (Servidor externo -> 0340)
#-------------------------------------------------------------------------------
T={1,*}#
[1,1000];#			                  Suprime la "@" del inicio y pasa el resto
