package com.cgn.itmp.outlineandplan.specialinspection;

import commonj.sdo.DataObject;

public interface ConventionalIslandOverhaulService {
	DataObject[] getProtypeAndPartsData(String baseid, String crewid);
	DataObject[] getProtypeAndPartsData1(String baseid, String crewid);
	DataObject[] getProtypeAndPartsData2(String baseid, String crewid);

	void addInfoMation(DataObject data,int type);
	void addInfoMation1(DataObject data,int type);
}
