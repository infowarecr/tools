#*******************************************************************************
#* ST para "Clear Path" (STcp) - Archivo de configuración                      *
#*******************************************************************************
#===============================================================================
# Encabezado
#===============================================================================
Título=UNISYS;
Espera=5000;                    Tiempo límite de espera
DirecciónIP=192.168.10.207;         Dirección IP del Serie A
Estación=VT001;                  Nombre de la estación virtual
#Logon=?SCCC111 INGENIERIA;	    Usuario y contraseña del Serie A
#Ind_Conexión=Entry;      	    Datos para desconexión de la aplicación
#Conexión=?SCCC111 INGENIERIA;	  Datos para conexión a la aplicación
Desconexión=?CLOSE;             Datos para desconexión de la aplicación
LincII=Si;			                Indica si es una interfaz tipo LINCII
#===============================================================================
#= Definición de mensajes
#===============================================================================
#
# Pago de recibos por BANCATEL (Servidor externo -> 0340)
#-------------------------------------------------------------------------------
T={1,*}#
[1,1000];#			                  Suprime la "@" del inicio y pasa el resto
