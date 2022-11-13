package com.cgn.itmp.outlineandplan.outline;

import java.util.*;

import commonj.sdo.DataObject;



public interface ExecutiveEntriesFFDDXService{

	DataObject[] getProtypeAndPartsData(String baseid,String crewid);
	
	Map<String, Object> getBaseCircle(String baseid,String crewid);
	
	
	void addInfoMation(DataObject[] data);
	
	void deleteRecoversData(DataObject[] data);
	
	String getCountForEdition();
}