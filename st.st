#*******************************************************************************
#* ST Servidor (ST) - Archivo de configuración                                 *
#*******************************************************************************
Título=BCR - Servidor de Transacciones;
Bitácora=bcr0106ctv01,bcrpruebas.nsf;
Tamaño=10;
Espera=15;
#...............................................................................
#
#===============================================================================
# Canales abiertos por el ST
#===============================================================================
Canales=
#  "Finesse ,ASCII,23",#    Finesse se recibe en ASCII por el puerto Telnet (23)
  "NAP,EBCDIC,1114",#       BancaTel se recibe en EBCDIC por el puerto 1114
  "BancoBCR,ASCII,1115",#   BancaBCR se recibe en EBCDIC por el puerto 1115
  "Convenios,ASCII,1110"#   Convenios
#  "Edson,ASCII,1114" #     BancaTel se recibe en EBCDIC por el puerto 1114
  "NXICE,EBCDIC,50004"#     Libreria del NX para conectarse al ICE
  "NXCNFL,EBCDIC,50006"#     Libreria del NX para conectarse a la CNFL
  "NXMSJ,EBCDIC,50008"#     Libreria del NX para conectarse a la MSJ
  "NXAYA,EBCDIC,50010"#     Libreria del NX para conectarse al AYA
  ;
#
# Canales que requieren fin de registro
#-------------------------------------------------------------------------------
NAP_fin_registro=No;
BancoBCR_fin_registro=No;
NXICE_fin_registro=Si;
NXCNFL_fin_registro=Si;
NXMSJ_fin_registro=Si;
NXAYA_fin_registro=Si;
#
#===============================================================================
# Servidores que administra
#===============================================================================
Servidores=
# "<Nombre del servidor>,<Nombre de la clase OLE>,<Archivo OLE .exe >,<Archivo de configuración>"
  "NX-0340,STcp.Interfaz,d:\ST\cfg\0340.st",
  "NX-1538,STcp.Interfaz,d:\ST\cfg\1538.st",
  "AyA,STsr.Interfaz,d:\ST\cfg\AyA.st",
  "CNFL,STsr.Interfaz,d:\ST\cfg\CNFL.st"
  "ICETEL,STsr.Interfaz,d:\ST\cfg\ICETEL.st",
  "ICEELE,STsr.Interfaz,d:\ST\cfg\ICEELE.st",
  "Coopelesca,STdm.Interfaz,d:\ST\cfg\Coopelesca.st",
#  "SICC,STcp.Interfaz,d:\ST\cfg\SICC.st",
#  "BancoBCR,STsr.Interfaz,d:\ST\cfg\BancoBCR.st",
#  "MSJ,STsr.Interfaz,d:\ST\cfg\MSJ.st",
  "Impresión,STim.Interfaz,d:\ST\cfg\Impresion.st",
  "CCSS,STsr.Interfaz,d:\ST\cfg\CCSS.st",
   ;
#
#===============================================================================
# Rutas de transacciones
#===============================================================================
@={2,STim}Impresión;
@={NXICE}ICETEL;	|
@={NXCNFL}CNFL;
@={NXMSJ}MSJ;
@={NXAYA}AyA;
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# Consulta de recibos desde BANCATEL
#-------------------------------------------------------------------------------
###===> Teléfonos ICE
@={31,0077}{97,011}ICETEL;
###===> Localización CNFL
@={31,0077}{97,012}CNFL;
###===> Agua de AyA
@={31,0077}{97,013}AyA;
###===> COOPELESCA
@={31,0077}{97,014}Coopelesca;
#
# Pagos de recibos BANCATEL
#-------------------------------------------------------------------------------
###===> Teléfonos ICE
@={31,0078}{97,011}ICETEL;
@={1,@}{32,0078}{98,011}NX-0340;
@={1,@$$}{138,011}ICETEL;
###===> Localización CNFL
@={31,0078}{97,012}CNFL;
@={1,@}{32,0078}{98,012}NX-0340;
@={1,@$$}{138,012}CNFL;
###===> Agua de AyA
@={31,0078}{97,013}AyA;
@={1,@}{32,0078}{98,013}NX-0340;
@={1,@$$}{138,013}AyA;
###===> COOPELESCA
@={31,0078}{97,014}Coopelesca;
@={1,@}{32,0078}{98,014}NX-0340;
@={1,@$$}{138,014}Coopelesca;
#
# Elimina clave de BANCATEL en la bitácora
#-------------------------------------------------------------------------------
B={32,0000}{NAP}[1,18]XXXX[23,101];
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#
# Pagos en el 1538 y en la empresa respectiva
#-------------------------------------------------------------------------------
@={1,AC716}NX-1538;#   ICE teléfonos
@={1,@AC716}ICETEL;#	
@={1,AF816}NX-1538;#   Fuerza y Luz
@={1,@AF816}CNFL;
@={1,AYA01}NX-1538;#   Acueductos y alcantarillados
@={1,@AYA01}AyA;
@={1,CPL01}NX-1538;#   Coopelesca
@={1,@CPL01}Coopelesca;
@={1,ELE01}NX-1538;#   ICE electricidad
@={1,@ELE01}ICEELE;
@={1,CCS01}NX-1538;#   Caja Costarricense de Seguro Social
@={1,@CCS01}CCSS;
@={1,NCRDB}NX-1538;#   Consulta de nota de crédito y débito
#
# Consultas en cada empresa
#-------------------------------------------------------------------------------
@={1,AC}ICETEL;
@={1,AF}CNFL;
@={1,AYA}AyA;
@={1,REGIS}NX-1538;
@={1,CPL}Coopelesca;
@={1,ELE}ICEELE;
@={1,CCS}CCSS;
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#
# Cualquier otra transacción va directo a BANCATEL (Debe ser la última)
#-------------------------------------------------------------------------------
@={1,*}NX-0340;
