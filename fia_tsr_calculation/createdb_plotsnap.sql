CREATE TABLE fiadb.plotsnap(
	CN varchar(34),
	SRV_CN  varchar(34),
	CTY_CN  varchar(34),
	PREV_PLT_CN varchar(34),
	INVYR  integer,
	STATECD integer,
	UNITCD integer,
	COUNTYCD integer,
	PLOT integer,
	PLOT_STATUS_CD integer,
	PLOT_NONSAMPLE_REASN_CD integer,
	MEASYEAR integer,
	MEASMON integer,
	MEASDAY integer,
	REMPER decimal,
	KINDCD integer,
	DESIGNCD integer,
	RDDISTCD integer,
	WATERCD integer,
	LAT decimal,
	LON decimal,
	ELEV integer,
	GROW_TYP_CD integer,
	MORT_TYP_CD integer,
	P2PANEL integer,
	P3PANEL integer,
	ECOSUBCD varchar(7),
	CONGCD integer,
	MANUAL decimal,
	MANUAL_DB decimal,
	SUBPANEL integer,
	KINDCD_NC integer,
	QA_STATUS integer,
	CREATED_BY varchar(30),
	CREATED_DATE date,
	CREATED_IN_INSTANCE integer,
	MODIFIED_BY varchar(30),
	MODIFIED_DATE date,
	MODIFIED_IN_INSTANCE integer,
	MICROPLOT_LOC varchar(12),
	DECLINATION decimal,
	EMAP_HEX integer,
	SAMP_METHOD_CD integer,
	SUBP_EXAMINE_CD integer,
	MACRO_BREAKPOINT_DIA integer,
	INTENSITY varchar(2),
	CYCLE integer,
	SUBCYCLE integer,
	ECO_UNIT_PNW varchar(10),
	TOPO_POSITION_PNW varchar(2),
	EVAL_GRP_CN varchar(34),
	EVAL_GRP integer,
	EXPALL decimal,
	EXPCURR decimal,
	EXPVOL decimal,
	EXPGROW decimal,
	EXPMORT decimal,
	EXPREMV decimal,
	ADJ_EXPALL decimal,
	ADJ_EXPCURR decimal,
	ADJ_EXPVOL_MACR decimal,
	ADJ_EXPVOL_SUBP decimal,
	ADJ_EXPVOL_MICR decimal,
	ADJ_EXPGROW_MACR decimal,
	ADJ_EXPGROW_SUBP decimal,
	ADJ_EXPGROW_MICR decimal,
	ADJ_EXPMORT_MACR decimal,
	ADJ_EXPMORT_SUBP decimal,
	ADJ_EXPMORT_MICR decimal,
	ADJ_EXPREMV_MACR decimal,
	ADJ_EXPREMV_SUBP decimal,
	ADJ_EXPREMV_MICR decimal,
	PRIMARY KEY(CN, EVAL_GRP_CN)
);
COPY fiadb.plotsnap(CN,SRV_CN,CTY_CN,PREV_PLT_CN,INVYR,STATECD,UNITCD,COUNTYCD,PLOT,PLOT_STATUS_CD,PLOT_NONSAMPLE_REASN_CD,MEASYEAR,MEASMON,MEASDAY,REMPER,KINDCD,DESIGNCD,RDDISTCD,WATERCD,LAT,LON,ELEV,GROW_TYP_CD,MORT_TYP_CD,P2PANEL,P3PANEL,ECOSUBCD,CONGCD,MANUAL,MANUAL_DB,SUBPANEL,KINDCD_NC,QA_STATUS,CREATED_BY,CREATED_DATE,CREATED_IN_INSTANCE,MODIFIED_BY,MODIFIED_DATE,MODIFIED_IN_INSTANCE,MICROPLOT_LOC,DECLINATION,EMAP_HEX,SAMP_METHOD_CD,SUBP_EXAMINE_CD,MACRO_BREAKPOINT_DIA,INTENSITY,CYCLE,SUBCYCLE,ECO_UNIT_PNW,TOPO_POSITION_PNW,EVAL_GRP_CN,EVAL_GRP,EXPALL,EXPCURR,EXPVOL,EXPGROW,EXPMORT,EXPREMV,ADJ_EXPALL,ADJ_EXPCURR,ADJ_EXPVOL_MACR,ADJ_EXPVOL_SUBP,ADJ_EXPVOL_MICR,ADJ_EXPGROW_MACR,ADJ_EXPGROW_SUBP,ADJ_EXPGROW_MICR,ADJ_EXPMORT_MACR,ADJ_EXPMORT_SUBP,ADJ_EXPMORT_MICR,ADJ_EXPREMV_MACR,ADJ_EXPREMV_SUBP,ADJ_EXPREMV_MICR) FROM '/Volumes/Feng/research/FIA_DATA/fiadb_1.7/PLOTSNAP.csv' WITH (FORMAT 'csv', NULL '',HEADER);