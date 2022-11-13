package com.cgn.itmp.outlineandplan.specialinspection;

import commonj.sdo.DataObject;

public interface NuclearIslandDailyService {
	DataObject[] getProtypeAndPartsData(String baseid, String crewid);
	DataObject[] getProtypeAndPartsData1(String baseid, String crewid);
	DataObject[] getProtypeAndPartsData2(String baseid, String crewid);
	DataObject[] getProtypeAndPartsData3(String baseid, String crewid);
	DataObject[] getProtypeAndPartsData4(String baseid, String crewid);
	DataObject[] getProtypeAndPartsData5(String baseid, String crewid);
	DataObject[] getProtypeAndPartsData6(String baseid, String crewid);
	void addInfoMationGD(DataObject data,int type );
	void addInfoMationFM(DataObject data,int type );
	void addInfoMationRQ(DataObject data,int type );
	void addInfoMationCRG(DataObject data,int type );
	void addInfoMationZC(DataObject data,int type );
	void addInfoMationBOSS(DataObject data,int type );
}
