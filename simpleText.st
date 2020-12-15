#*******************************************************************************
#* Simple Texto - Archivo de configuración                                    *
#*******************************************************************************
#
#===============================================================================
# Encabezado
#===============================================================================
Título=Simple Texto;
Espera=5000;                    Tiempo límite de espera
DirecciónIP=192.168.10.87;     Dirección IP del Sistema Remoto
Puerto=50002;                    Puerto o socket del Sistema Remoto
EBCDIC=No;			Si maneja codigo EBCDIC debe ser "Si"
Reenviar=Si;                    Reenvia mensaje en caso de problema  
#Conexión=0800001;		Mensaje de conexión (Logon)
#Desconexión=0800002;		Mensaje de desconexión (Logoff);
#
#===============================================================================
# Definición de mensajes
#===============================================================================
#
# Consulta desde convenios
#-------------------------------------------------------------------------------
T={1,*}#
[1,400];#				        
###===> Respuesta correcta en la consulta 
#R={1,*}#				
#[1,400];#     					Fin de las repeticiones
