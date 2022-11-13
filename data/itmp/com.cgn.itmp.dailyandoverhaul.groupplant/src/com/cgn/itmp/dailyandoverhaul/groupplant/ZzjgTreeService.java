/**
 * 
 */
package com.cgn.itmp.dailyandoverhaul.groupplant;

import com.eos.system.annotation.Bizlet;
import commonj.sdo.DataObject;

/**
 * @author Administrator
 *
 */
@Bizlet
public interface ZzjgTreeService {
	@Bizlet
	public DataObject[] getZzjgTreeNode();
}
