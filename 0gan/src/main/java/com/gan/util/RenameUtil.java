package com.gan.util;

import java.io.File;

public class RenameUtil {
	public static String getRename(String fname, String path) {
		String newFname = fname;
		File dir = new File(path);
		String[] fileList = dir.list();
		boolean flag = false;
		for (String name : fileList) {
			if (name.equals(fname)) {
				flag = true;
				break;
			}
		}
		if (flag) {

			newFname = newFname.substring(0, newFname.lastIndexOf('.')) + System.currentTimeMillis()
					+ newFname.substring(newFname.lastIndexOf('.'));
		}
		return newFname;
	}
}
