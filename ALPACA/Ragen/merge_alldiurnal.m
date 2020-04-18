merge_Jan9;
nitrate1=nitrate;
sulfate1=sulfate;


ammonium1=ammonium_IC;
pm251=pm25_new;
doy1=doy;
NOy1=NOy_new;
t1=t3m_new;
CO1=CO_new;
SO21=SO2_new;
O31=O3_new;

chloride1=chloride;
Na_IC1=Na_IC;
K_IC1=K_IC;
Ca_IC1=Ca_IC;
Mg_IC1=Mg_IC;

Na_ICPMS1=Na_ICPMS;
K_ICPMS1=K_ICPMS;
Mg_ICPMS1=Mg_ICPMS;
Ca_ICPMS1=Ca_ICPMS;
Mn_ICPMS1=Mn_ICPMS;
Fe_ICPMS1=Fe_ICPMS;
Cu_ICPMS1=Cu_ICPMS;
Zn_ICPMS1=Zn_ICPMS;

keep pm251 sulfate1 nitrate1 ammonium1 doy1 NOy1 t1 CO1 SO21 O31 chloride1 Na_IC1 K_IC1 Ca_IC1 Mg_IC1...
    Na_ICPMS1 K_ICPMS1 Mg_ICPMS1 Ca_ICPMS1 Mn_ICPMS1 Fe_ICPMS1 Cu_ICPMS1 Zn_ICPMS1;

merge_Jan11;
nitrate2=nitrate;
sulfate2=sulfate;
pm252=pm25_new;
ammonium2=ammonium;
doy2=doy;
NOy2=NOy_new;
t2=t3m_new;
CO2=CO_new;
SO22=SO2_new;
O32=O3_new;

chloride2=chloride;
Na_IC2=Na_IC;
K_IC2=K_IC;
Ca_IC2=Ca_IC;
Mg_IC2=Mg_IC;

Na_ICPMS2=Na_ICPMS;
K_ICPMS2=K_ICPMS;
Mg_ICPMS2=Mg_ICPMS;
Ca_ICPMS2=Ca_ICPMS;
Mn_ICPMS2=Mn_ICPMS;
Fe_ICPMS2=Fe_ICPMS;
Cu_ICPMS2=Cu_ICPMS;
Zn_ICPMS2=Zn_ICPMS;

sulfate_merge=[sulfate1; sulfate2];
nitrate_merge=[nitrate1; nitrate2];
pm25_merge=[pm251 pm252];
doy_merge=[doy1 doy2];
ammonium_merge=[ammonium1; ammonium2];
t_merge=[t1 t2];
NOy_merge=[NOy1 NOy2];
CO_merge=[CO1 CO2];
SO2_merge=[SO21 SO22];
O3_merge=[O31 O32];
chloride_merge=[chloride1; chloride2];
Na_IC_merge=[Na_IC1; Na_IC2];
K_IC_merge=[K_IC1; K_IC2];
Ca_IC_merge=[Ca_IC1; Ca_IC2];
Mg_IC_merge=[Mg_IC1; Mg_IC2];

Na_ICPMS_merge=[Na_ICPMS1; Na_ICPMS2];
K_ICPMS_merge=[K_ICPMS1; K_ICPMS2];
Ca_ICPMS_merge=[Ca_ICPMS1; Ca_ICPMS2];
Mg_ICPMS_merge=[Mg_ICPMS1; Mg_ICPMS2];
Mn_ICPMS_merge=[Mn_ICPMS1; Mn_ICPMS2];
Fe_ICPMS_merge=[Fe_ICPMS1; Fe_ICPMS2];
Cu_ICPMS_merge=[Cu_ICPMS1; Cu_ICPMS2];
Zn_ICPMS_merge=[Zn_ICPMS1; Zn_ICPMS2];

keep pm25_merge sulfate_merge nitrate_merge ammonium_merge doy_merge t_merge NOy_merge CO_merge SO2_merge O3_merge ...
    chloride_merge Na_IC_merge K_IC_merge Ca_IC_merge Mg_IC_merge...
    Na_ICPMS_merge K_ICPMS_merge Ca_ICPMS_merge Mg_ICPMS_merge Mn_ICPMS_merge Fe_ICPMS_merge Cu_ICPMS_merge Zn_ICPMS_merge;

merge_Jan12;
nitrate3=nitrate;
sulfate3=sulfate;
pm253=pm25_new;
ammonium3=ammonium;
doy3=doy;
NOy3=NOy_new;
t3=t3m_new;
CO3=CO_new;
SO23=SO2_new;
O33=O3_new;
chloride3=chloride;
Na_IC3=Na_IC;
K_IC3=K_IC;
Ca_IC3=Ca_IC;
Mg_IC3=Mg_IC;

Na_ICPMS3=Na_ICPMS;
K_ICPMS3=K_ICPMS;
Mg_ICPMS3=Mg_ICPMS;
Ca_ICPMS3=Ca_ICPMS;
Mn_ICPMS3=Mn_ICPMS;
Fe_ICPMS3=Fe_ICPMS;
Cu_ICPMS3=Cu_ICPMS;
Zn_ICPMS3=Zn_ICPMS;

sulfate_merge=[sulfate_merge; sulfate3];
nitrate_merge=[nitrate_merge; nitrate3];
pm25_merge=[pm25_merge pm253];
ammonium_merge=[ammonium_merge;ammonium3];
doy_merge=[doy_merge doy3];
NOy_merge=[NOy_merge NOy3];
t_merge=[t_merge t3];
CO_merge=[CO_merge CO3];
SO2_merge=[SO2_merge SO23];
O3_merge=[O3_merge O33];
chloride_merge=[chloride_merge; chloride3];
Na_IC_merge=[Na_IC_merge; Na_IC3];
K_IC_merge=[K_IC_merge; K_IC3];
Ca_IC_merge=[Ca_IC_merge; Ca_IC3];
Mg_IC_merge=[Mg_IC_merge; Mg_IC3];

Na_ICPMS_merge=[Na_ICPMS_merge; Na_ICPMS3];
K_ICPMS_merge=[K_ICPMS_merge; K_ICPMS3];
Ca_ICPMS_merge=[Ca_ICPMS_merge; Ca_ICPMS3];
Mg_ICPMS_merge=[Mg_ICPMS_merge; Mg_ICPMS3];
Mn_ICPMS_merge=[Mn_ICPMS_merge; Mn_ICPMS3];
Fe_ICPMS_merge=[Fe_ICPMS_merge; Fe_ICPMS3];
Cu_ICPMS_merge=[Cu_ICPMS_merge; Cu_ICPMS3];
Zn_ICPMS_merge=[Zn_ICPMS_merge; Zn_ICPMS3];

keep pm25_merge sulfate_merge nitrate_merge ammonium_merge doy_merge t_merge NOy_merge CO_merge SO2_merge O3_merge...
    chloride_merge Na_IC_merge K_IC_merge Ca_IC_merge Mg_IC_merge...
    Na_ICPMS_merge K_ICPMS_merge Ca_ICPMS_merge Mg_ICPMS_merge Mn_ICPMS_merge Fe_ICPMS_merge Cu_ICPMS_merge Zn_ICPMS_merge;


merge_Jan15;
nitrate4=nitrate;
sulfate4=sulfate;
pm254=pm25_new;
ammonium4=ammonium;
doy4=doy;
NOy4=NOy_new;
t4=t3m_new;
CO4=CO_new;
SO24=SO2_new;
O34=O3_new;
chloride4=chloride;
Na_IC4=Na_IC;
K_IC4=K_IC;
Ca_IC4=Ca_IC;
Mg_IC4=Mg_IC;

Na_ICPMS4=Na_ICPMS;
K_ICPMS4=K_ICPMS;
Mg_ICPMS4=Mg_ICPMS;
Ca_ICPMS4=Ca_ICPMS;
Mn_ICPMS4=Mn_ICPMS;
Fe_ICPMS4=Fe_ICPMS;
Cu_ICPMS4=Cu_ICPMS;
Zn_ICPMS4=Zn_ICPMS;

sulfate_merge=[sulfate_merge; sulfate4];
nitrate_merge=[nitrate_merge; nitrate4];
pm25_merge=[pm25_merge pm254];
ammonium_merge=[ammonium_merge;ammonium4];
doy_merge=[doy_merge doy4];
NOy_merge=[NOy_merge NOy4];
t_merge=[t_merge t4];
CO_merge=[CO_merge CO4];
SO2_merge=[SO2_merge SO24];
O3_merge=[O3_merge O34];
chloride_merge=[chloride_merge; chloride4];
Na_IC_merge=[Na_IC_merge; Na_IC4];
K_IC_merge=[K_IC_merge; K_IC4];
Ca_IC_merge=[Ca_IC_merge; Ca_IC4];
Mg_IC_merge=[Mg_IC_merge; Mg_IC4];

Na_ICPMS_merge=[Na_ICPMS_merge; Na_ICPMS4];
K_ICPMS_merge=[K_ICPMS_merge; K_ICPMS4];
Ca_ICPMS_merge=[Ca_ICPMS_merge; Ca_ICPMS4];
Mg_ICPMS_merge=[Mg_ICPMS_merge; Mg_ICPMS4];
Mn_ICPMS_merge=[Mn_ICPMS_merge; Mn_ICPMS4];
Fe_ICPMS_merge=[Fe_ICPMS_merge; Fe_ICPMS4];
Cu_ICPMS_merge=[Cu_ICPMS_merge; Cu_ICPMS4];
Zn_ICPMS_merge=[Zn_ICPMS_merge; Zn_ICPMS4];

keep pm25_merge sulfate_merge nitrate_merge ammonium_merge doy_merge t_merge NOy_merge CO_merge SO2_merge O3_merge...
    chloride_merge Na_IC_merge K_IC_merge Ca_IC_merge Mg_IC_merge...
    Na_ICPMS_merge K_ICPMS_merge Ca_ICPMS_merge Mg_ICPMS_merge Mn_ICPMS_merge Fe_ICPMS_merge Cu_ICPMS_merge Zn_ICPMS_merge;


merge_Jan28;
nitrate5=nitrate;
sulfate5=sulfate;
pm255=pm25_new;
ammonium5=ammonium;
doy5=doy;
NOy5=NOy_new;
t5=t3m_new;
CO5=CO_new;
SO25=SO2_new;
O35=O3_new;
chloride5=chloride;
Na_IC5=Na_IC;
K_IC5=K_IC;
Ca_IC5=Ca_IC;
Mg_IC5=Mg_IC;

Na_ICPMS5=Na_ICPMS;
K_ICPMS5=K_ICPMS;
Mg_ICPMS5=Mg_ICPMS;
Ca_ICPMS5=Ca_ICPMS;
Mn_ICPMS5=Mn_ICPMS;
Fe_ICPMS5=Fe_ICPMS;
Cu_ICPMS5=Cu_ICPMS;
Zn_ICPMS5=Zn_ICPMS;

sulfate_merge=[sulfate_merge; sulfate5];
nitrate_merge=[nitrate_merge; nitrate5];
pm25_merge=[pm25_merge pm255];
ammonium_merge=[ammonium_merge;ammonium5];
doy_merge=[doy_merge doy5];
NOy_merge=[NOy_merge NOy5];
t_merge=[t_merge t5];
CO_merge=[CO_merge CO5];
SO2_merge=[SO2_merge SO25];
O3_merge=[O3_merge O35];
chloride_merge=[chloride_merge; chloride5];
Na_IC_merge=[Na_IC_merge; Na_IC5];
K_IC_merge=[K_IC_merge; K_IC5];
Ca_IC_merge=[Ca_IC_merge; Ca_IC5];
Mg_IC_merge=[Mg_IC_merge; Mg_IC5];

Na_ICPMS_merge=[Na_ICPMS_merge; Na_ICPMS5];
K_ICPMS_merge=[K_ICPMS_merge; K_ICPMS5];
Ca_ICPMS_merge=[Ca_ICPMS_merge; Ca_ICPMS5];
Mg_ICPMS_merge=[Mg_ICPMS_merge; Mg_ICPMS5];
Mn_ICPMS_merge=[Mn_ICPMS_merge; Mn_ICPMS5];
Fe_ICPMS_merge=[Fe_ICPMS_merge; Fe_ICPMS5];
Cu_ICPMS_merge=[Cu_ICPMS_merge; Cu_ICPMS5];
Zn_ICPMS_merge=[Zn_ICPMS_merge; Zn_ICPMS5];

keep pm25_merge sulfate_merge nitrate_merge ammonium_merge doy_merge t_merge NOy_merge CO_merge SO2_merge O3_merge...
    chloride_merge Na_IC_merge K_IC_merge Ca_IC_merge Mg_IC_merge...
    Na_ICPMS_merge K_ICPMS_merge Ca_ICPMS_merge Mg_ICPMS_merge Mn_ICPMS_merge Fe_ICPMS_merge Cu_ICPMS_merge Zn_ICPMS_merge;


merge_Jan29;
nitrate6=nitrate;
sulfate6=sulfate;
pm256=pm25_new;
ammonium6=ammonium;
doy6=doy;
NOy6=NOy_new;
t6=t3m_new;
CO6=CO_new;
SO26=SO2_new;
O36=O3_new;
chloride6=chloride;
Na_IC6=Na_IC;
K_IC6=K_IC;
Ca_IC6=Ca_IC;
Mg_IC6=Mg_IC;

Na_ICPMS6=Na_ICPMS;
K_ICPMS6=K_ICPMS;
Mg_ICPMS6=Mg_ICPMS;
Ca_ICPMS6=Ca_ICPMS;
Mn_ICPMS6=Mn_ICPMS;
Fe_ICPMS6=Fe_ICPMS;
Cu_ICPMS6=Cu_ICPMS;
Zn_ICPMS6=Zn_ICPMS;

sulfate_merge=[sulfate_merge; sulfate6];
nitrate_merge=[nitrate_merge; nitrate6];
pm25_merge=[pm25_merge pm256];
ammonium_merge=[ammonium_merge;ammonium6];
doy_merge=[doy_merge doy6];
NOy_merge=[NOy_merge NOy6];
t_merge=[t_merge t6];
CO_merge=[CO_merge CO6];
SO2_merge=[SO2_merge SO26];
O3_merge=[O3_merge O36];
chloride_merge=[chloride_merge; chloride6];
Na_IC_merge=[Na_IC_merge; Na_IC6];
K_IC_merge=[K_IC_merge; K_IC6];
Ca_IC_merge=[Ca_IC_merge; Ca_IC6];
Mg_IC_merge=[Mg_IC_merge; Mg_IC6];

Na_ICPMS_merge=[Na_ICPMS_merge; Na_ICPMS6];
K_ICPMS_merge=[K_ICPMS_merge; K_ICPMS6];
Ca_ICPMS_merge=[Ca_ICPMS_merge; Ca_ICPMS6];
Mg_ICPMS_merge=[Mg_ICPMS_merge; Mg_ICPMS6];
Mn_ICPMS_merge=[Mn_ICPMS_merge; Mn_ICPMS6];
Fe_ICPMS_merge=[Fe_ICPMS_merge; Fe_ICPMS6];
Cu_ICPMS_merge=[Cu_ICPMS_merge; Cu_ICPMS6];
Zn_ICPMS_merge=[Zn_ICPMS_merge; Zn_ICPMS6];

keep pm25_merge sulfate_merge nitrate_merge ammonium_merge doy_merge t_merge NOy_merge CO_merge SO2_merge O3_merge...
    chloride_merge Na_IC_merge K_IC_merge Ca_IC_merge Mg_IC_merge...
    Na_ICPMS_merge K_ICPMS_merge Ca_ICPMS_merge Mg_ICPMS_merge Mn_ICPMS_merge Fe_ICPMS_merge Cu_ICPMS_merge Zn_ICPMS_merge;


merge_Feb5;
nitrate7=nitrate;
sulfate7=sulfate;
pm257=pm25_new;
ammonium7=ammonium;
doy7=doy;
NOy7=NOy_new;
t7=t3m_new;
CO7=CO_new;
SO27=SO2_new;
O37=O3_new;
chloride7=chloride;
Na_IC7=Na_IC;
K_IC7=K_IC;
Ca_IC7=Ca_IC;
Mg_IC7=Mg_IC;

Na_ICPMS7=Na_ICPMS;
K_ICPMS7=K_ICPMS;
Mg_ICPMS7=Mg_ICPMS;
Ca_ICPMS7=Ca_ICPMS;
Mn_ICPMS7=Mn_ICPMS;
Fe_ICPMS7=Fe_ICPMS;
Cu_ICPMS7=Cu_ICPMS;
Zn_ICPMS7=Zn_ICPMS;

sulfate_merge=[sulfate_merge; sulfate7];
nitrate_merge=[nitrate_merge; nitrate7];
pm25_merge=[pm25_merge pm257];
ammonium_merge=[ammonium_merge;ammonium7];
doy_merge=[doy_merge doy7];
NOy_merge=[NOy_merge NOy7];
t_merge=[t_merge t7];
CO_merge=[CO_merge CO7];
SO2_merge=[SO2_merge SO27];
O3_merge=[O3_merge O37];
chloride_merge=[chloride_merge; chloride7];
Na_IC_merge=[Na_IC_merge; Na_IC7];
K_IC_merge=[K_IC_merge; K_IC7];
Ca_IC_merge=[Ca_IC_merge; Ca_IC7];
Mg_IC_merge=[Mg_IC_merge; Mg_IC7];

Na_ICPMS_merge=[Na_ICPMS_merge; Na_ICPMS7];
K_ICPMS_merge=[K_ICPMS_merge; K_ICPMS7];
Ca_ICPMS_merge=[Ca_ICPMS_merge; Ca_ICPMS7];
Mg_ICPMS_merge=[Mg_ICPMS_merge; Mg_ICPMS7];
Mn_ICPMS_merge=[Mn_ICPMS_merge; Mn_ICPMS7];
Fe_ICPMS_merge=[Fe_ICPMS_merge; Fe_ICPMS7];
Cu_ICPMS_merge=[Cu_ICPMS_merge; Cu_ICPMS7];
Zn_ICPMS_merge=[Zn_ICPMS_merge; Zn_ICPMS7];

keep pm25_merge sulfate_merge nitrate_merge ammonium_merge doy_merge t_merge NOy_merge CO_merge SO2_merge O3_merge...
    chloride_merge Na_IC_merge K_IC_merge Ca_IC_merge Mg_IC_merge...
    Na_ICPMS_merge K_ICPMS_merge Ca_ICPMS_merge Mg_ICPMS_merge Mn_ICPMS_merge Fe_ICPMS_merge Cu_ICPMS_merge Zn_ICPMS_merge;


merge_Feb14;
nitrate8=nitrate;
sulfate8=sulfate;
pm258=pm25_new;
ammonium8=ammonium;
doy8=doy;
NOy8=NOy_new;
t8=t3m_new;
CO8=CO_new;
SO28=SO2_new;
O38=O3_new;
chloride8=chloride;
Na_IC8=Na_IC;
K_IC8=K_IC;
Ca_IC8=Ca_IC;
Mg_IC8=Mg_IC;

Na_ICPMS8=Na_ICPMS;
K_ICPMS8=K_ICPMS;
Mg_ICPMS8=Mg_ICPMS;
Ca_ICPMS8=Ca_ICPMS;
Mn_ICPMS8=Mn_ICPMS;
Fe_ICPMS8=Fe_ICPMS;
Cu_ICPMS8=Cu_ICPMS;
Zn_ICPMS8=Zn_ICPMS;

sulfate_merge=[sulfate_merge; sulfate8];
nitrate_merge=[nitrate_merge; nitrate8];
pm25_merge=[pm25_merge pm258];
ammonium_merge=[ammonium_merge;ammonium8];
doy_merge=[doy_merge doy8];
NOy_merge=[NOy_merge NOy8];
t_merge=[t_merge t8];
CO_merge=[CO_merge CO8];
SO2_merge=[SO2_merge SO28];
O3_merge=[O3_merge O38];
chloride_merge=[chloride_merge; chloride8];
Na_IC_merge=[Na_IC_merge; Na_IC8];
K_IC_merge=[K_IC_merge; K_IC8];
Ca_IC_merge=[Ca_IC_merge; Ca_IC8];
Mg_IC_merge=[Mg_IC_merge; Mg_IC8];

Na_ICPMS_merge=[Na_ICPMS_merge; Na_ICPMS8];
K_ICPMS_merge=[K_ICPMS_merge; K_ICPMS8];
Ca_ICPMS_merge=[Ca_ICPMS_merge; Ca_ICPMS8];
Mg_ICPMS_merge=[Mg_ICPMS_merge; Mg_ICPMS8];
Mn_ICPMS_merge=[Mn_ICPMS_merge; Mn_ICPMS8];
Fe_ICPMS_merge=[Fe_ICPMS_merge; Fe_ICPMS8];
Cu_ICPMS_merge=[Cu_ICPMS_merge; Cu_ICPMS8];
Zn_ICPMS_merge=[Zn_ICPMS_merge; Zn_ICPMS8];

keep pm25_merge sulfate_merge nitrate_merge ammonium_merge doy_merge t_merge NOy_merge CO_merge SO2_merge O3_merge...
    chloride_merge Na_IC_merge K_IC_merge Ca_IC_merge Mg_IC_merge...
    Na_ICPMS_merge K_ICPMS_merge Ca_ICPMS_merge Mg_ICPMS_merge Mn_ICPMS_merge Fe_ICPMS_merge Cu_ICPMS_merge Zn_ICPMS_merge;


merge_Feb15;
nitrate9=nitrate;
sulfate9=sulfate;
pm259=pm25_new;
ammonium9=ammonium;
doy9=doy;
NOy9=NOy_new;
t9=t3m_new;
CO9=CO_new;
SO29=SO2_new;
O39=O3_new;
chloride9=chloride;
Na_IC9=Na_IC;
K_IC9=K_IC;
Ca_IC9=Ca_IC;
Mg_IC9=Mg_IC;

Na_ICPMS9=Na_ICPMS;
K_ICPMS9=K_ICPMS;
Mg_ICPMS9=Mg_ICPMS;
Ca_ICPMS9=Ca_ICPMS;
Mn_ICPMS9=Mn_ICPMS;
Fe_ICPMS9=Fe_ICPMS;
Cu_ICPMS9=Cu_ICPMS;
Zn_ICPMS9=Zn_ICPMS;

sulfate_merge=[sulfate_merge; sulfate9];
nitrate_merge=[nitrate_merge; nitrate9];
pm25_merge=[pm25_merge pm259];
ammonium_merge=[ammonium_merge;ammonium9];
doy_merge=[doy_merge doy9];
NOy_merge=[NOy_merge NOy9];
t_merge=[t_merge t9];
CO_merge=[CO_merge CO9];
SO2_merge=[SO2_merge SO29];
O3_merge=[O3_merge O39];
chloride_merge=[chloride_merge; chloride9];
Na_IC_merge=[Na_IC_merge; Na_IC9];
K_IC_merge=[K_IC_merge; K_IC9];
Ca_IC_merge=[Ca_IC_merge; Ca_IC9];
Mg_IC_merge=[Mg_IC_merge; Mg_IC9];

Na_ICPMS_merge=[Na_ICPMS_merge; Na_ICPMS9];
K_ICPMS_merge=[K_ICPMS_merge; K_ICPMS9];
Ca_ICPMS_merge=[Ca_ICPMS_merge; Ca_ICPMS9];
Mg_ICPMS_merge=[Mg_ICPMS_merge; Mg_ICPMS9];
Mn_ICPMS_merge=[Mn_ICPMS_merge; Mn_ICPMS9];
Fe_ICPMS_merge=[Fe_ICPMS_merge; Fe_ICPMS9];
Cu_ICPMS_merge=[Cu_ICPMS_merge; Cu_ICPMS9];
Zn_ICPMS_merge=[Zn_ICPMS_merge; Zn_ICPMS9];

keep pm25_merge sulfate_merge nitrate_merge ammonium_merge doy_merge t_merge NOy_merge CO_merge SO2_merge O3_merge...
    chloride_merge Na_IC_merge K_IC_merge Ca_IC_merge Mg_IC_merge...
    Na_ICPMS_merge K_ICPMS_merge Ca_ICPMS_merge Mg_ICPMS_merge Mn_ICPMS_merge Fe_ICPMS_merge Cu_ICPMS_merge Zn_ICPMS_merge;


merge_Feb16;
nitrate10=nitrate;
sulfate10=sulfate;
pm2510=pm25_new;
ammonium10=ammonium;
doy10=doy;
NOy10=NOy_new;
t10=t3m_new;
CO10=CO_new;
SO210=SO2_new;
O310=O3_new;
chloride10=chloride;
Na_IC10=Na_IC;
K_IC10=K_IC;
Ca_IC10=Ca_IC;
Mg_IC10=Mg_IC;

Na_ICPMS10=Na_ICPMS;
K_ICPMS10=K_ICPMS;
Mg_ICPMS10=Mg_ICPMS;
Ca_ICPMS10=Ca_ICPMS;
Mn_ICPMS10=Mn_ICPMS;
Fe_ICPMS10=Fe_ICPMS;
Cu_ICPMS10=Cu_ICPMS;
Zn_ICPMS10=Zn_ICPMS;

sulfate_merge=[sulfate_merge; sulfate10];
nitrate_merge=[nitrate_merge; nitrate10];
pm25_merge=[pm25_merge pm2510];
ammonium_merge=[ammonium_merge;ammonium10];
doy_merge=[doy_merge doy10];
NOy_merge=[NOy_merge NOy10];
t_merge=[t_merge t10];
CO_merge=[CO_merge CO10];
SO2_merge=[SO2_merge SO210];
O3_merge=[O3_merge O310];
chloride_merge=[chloride_merge; chloride10];
Na_IC_merge=[Na_IC_merge; Na_IC10];
K_IC_merge=[K_IC_merge; K_IC10];
Ca_IC_merge=[Ca_IC_merge; Ca_IC10];
Mg_IC_merge=[Mg_IC_merge; Mg_IC10];

Na_ICPMS_merge=[Na_ICPMS_merge; Na_ICPMS10];
K_ICPMS_merge=[K_ICPMS_merge; K_ICPMS10];
Ca_ICPMS_merge=[Ca_ICPMS_merge; Ca_ICPMS10];
Mg_ICPMS_merge=[Mg_ICPMS_merge; Mg_ICPMS10];
Mn_ICPMS_merge=[Mn_ICPMS_merge; Mn_ICPMS10];
Fe_ICPMS_merge=[Fe_ICPMS_merge; Fe_ICPMS10];
Cu_ICPMS_merge=[Cu_ICPMS_merge; Cu_ICPMS10];
Zn_ICPMS_merge=[Zn_ICPMS_merge; Zn_ICPMS10];
keep pm25_merge sulfate_merge nitrate_merge ammonium_merge doy_merge t_merge NOy_merge CO_merge SO2_merge O3_merge...
    chloride_merge Na_IC_merge K_IC_merge Ca_IC_merge Mg_IC_merge...
    Na_ICPMS_merge K_ICPMS_merge Ca_ICPMS_merge Mg_ICPMS_merge Mn_ICPMS_merge Fe_ICPMS_merge Cu_ICPMS_merge Zn_ICPMS_merge;


merge_Feb21;
nitrate11=nitrate;
sulfate11=sulfate;
pm2511=pm25_new;
ammonium11=ammonium;
doy11=doy;
NOy11=NOy_new;
t11=t3m_new;
CO11=CO_new;
SO211=SO2_new;
O311=O3_new;
chloride11=chloride;
Na_IC11=Na_IC;
K_IC11=K_IC;
Ca_IC11=Ca_IC;
Mg_IC11=Mg_IC;

Na_ICPMS11=Na_ICPMS;
K_ICPMS11=K_ICPMS;
Mg_ICPMS11=Mg_ICPMS;
Ca_ICPMS11=Ca_ICPMS;
Mn_ICPMS11=Mn_ICPMS;
Fe_ICPMS11=Fe_ICPMS;
Cu_ICPMS11=Cu_ICPMS;
Zn_ICPMS11=Zn_ICPMS;

sulfate_merge=[sulfate_merge; sulfate11];
nitrate_merge=[nitrate_merge; nitrate11];
pm25_merge=[pm25_merge pm2511];
ammonium_merge=[ammonium_merge;ammonium11];
doy_merge=[doy_merge doy11];
NOy_merge=[NOy_merge NOy11];
t_merge=[t_merge t11];
CO_merge=[CO_merge CO11];
SO2_merge=[SO2_merge SO211];
O3_merge=[O3_merge O311];
chloride_merge=[chloride_merge; chloride11];
Na_IC_merge=[Na_IC_merge; Na_IC11];
K_IC_merge=[K_IC_merge; K_IC11];
Ca_IC_merge=[Ca_IC_merge; Ca_IC11];
Mg_IC_merge=[Mg_IC_merge; Mg_IC11];

Na_ICPMS_merge=[Na_ICPMS_merge; Na_ICPMS11];
K_ICPMS_merge=[K_ICPMS_merge; K_ICPMS11];
Ca_ICPMS_merge=[Ca_ICPMS_merge; Ca_ICPMS11];
Mg_ICPMS_merge=[Mg_ICPMS_merge; Mg_ICPMS11];
Mn_ICPMS_merge=[Mn_ICPMS_merge; Mn_ICPMS11];
Fe_ICPMS_merge=[Fe_ICPMS_merge; Fe_ICPMS11];
Cu_ICPMS_merge=[Cu_ICPMS_merge; Cu_ICPMS11];
Zn_ICPMS_merge=[Zn_ICPMS_merge; Zn_ICPMS11];
keep pm25_merge sulfate_merge nitrate_merge ammonium_merge doy_merge t_merge NOy_merge CO_merge SO2_merge O3_merge...
    chloride_merge Na_IC_merge K_IC_merge Ca_IC_merge Mg_IC_merge...
    Na_ICPMS_merge K_ICPMS_merge Ca_ICPMS_merge Mg_ICPMS_merge Mn_ICPMS_merge Fe_ICPMS_merge Cu_ICPMS_merge Zn_ICPMS_merge;


merge_Feb24;
nitrate12=nitrate;
sulfate12=sulfate;
pm2512=pm25_new;
ammonium12=ammonium;
doy12=doy;
NOy12=NOy_new;
t12=t3m_new;
CO12=CO_new;
SO212=SO2_new;
O312=O3_new;
chloride12=chloride;
Na_IC12=Na_IC;
K_IC12=K_IC;
Ca_IC12=Ca_IC;
Mg_IC12=Mg_IC;

Na_ICPMS12=Na_ICPMS;
K_ICPMS12=K_ICPMS;
Mg_ICPMS12=Mg_ICPMS;
Ca_ICPMS12=Ca_ICPMS;
Mn_ICPMS12=Mn_ICPMS;
Fe_ICPMS12=Fe_ICPMS;
Cu_ICPMS12=Cu_ICPMS;
Zn_ICPMS12=Zn_ICPMS;

sulfate_merge=[sulfate_merge; sulfate12];
nitrate_merge=[nitrate_merge; nitrate12];
pm25_merge=[pm25_merge pm2512];
ammonium_merge=[ammonium_merge;ammonium12];
doy_merge=[doy_merge doy12];
NOy_merge=[NOy_merge NOy12];
t_merge=[t_merge t12];
CO_merge=[CO_merge CO12];
SO2_merge=[SO2_merge SO212];
O3_merge=[O3_merge O312];
chloride_merge=[chloride_merge; chloride12];
Na_IC_merge=[Na_IC_merge; Na_IC12];
K_IC_merge=[K_IC_merge; K_IC12];
Ca_IC_merge=[Ca_IC_merge; Ca_IC12];
Mg_IC_merge=[Mg_IC_merge; Mg_IC12];

Na_ICPMS_merge=[Na_ICPMS_merge; Na_ICPMS12];
K_ICPMS_merge=[K_ICPMS_merge; K_ICPMS12];
Ca_ICPMS_merge=[Ca_ICPMS_merge; Ca_ICPMS12];
Mg_ICPMS_merge=[Mg_ICPMS_merge; Mg_ICPMS12];
Mn_ICPMS_merge=[Mn_ICPMS_merge; Mn_ICPMS12];
Fe_ICPMS_merge=[Fe_ICPMS_merge; Fe_ICPMS12];
Cu_ICPMS_merge=[Cu_ICPMS_merge; Cu_ICPMS12];
Zn_ICPMS_merge=[Zn_ICPMS_merge; Zn_ICPMS12];
keep pm25_merge sulfate_merge nitrate_merge ammonium_merge doy_merge t_merge NOy_merge CO_merge SO2_merge O3_merge...
    chloride_merge Na_IC_merge K_IC_merge Ca_IC_merge Mg_IC_merge...
    Na_ICPMS_merge K_ICPMS_merge Ca_ICPMS_merge Mg_ICPMS_merge Mn_ICPMS_merge Fe_ICPMS_merge Cu_ICPMS_merge Zn_ICPMS_merge;


save merge_diurnal pm25_merge sulfate_merge nitrate_merge ammonium_merge doy_merge t_merge NOy_merge CO_merge SO2_merge O3_merge...
    chloride_merge Na_IC_merge K_IC_merge Ca_IC_merge Mg_IC_merge...
    Na_ICPMS_merge K_ICPMS_merge Ca_ICPMS_merge Mg_ICPMS_merge Mn_ICPMS_merge Fe_ICPMS_merge Cu_ICPMS_merge Zn_ICPMS_merge;

figure
scatter(pm25_merge,sulfate_merge.*0.017./0.672, 30,t_merge,'filled'); grid;colorbar;ylabel('sulfate');xlabel('PM2.5');

figure
scatter(NOy_merge,sulfate_merge.*0.017./0.672, 30,t_merge,'filled'); grid;colorbar;