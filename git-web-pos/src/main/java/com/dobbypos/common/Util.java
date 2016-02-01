package com.dobbypos.common;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Set;

public class Util {
	
	public static byte[] getHashedData(String source, String algorithm) {
		byte[] hashedData = null;
		
		try {
			MessageDigest md = MessageDigest.getInstance(algorithm);
			hashedData = md.digest(source.getBytes());
		} catch (NoSuchAlgorithmException ex) {
			hashedData = null;
		}
		
		return hashedData;
	}
	
	public static String getHashedString(String source, String algorithm) {
		
		byte[] hashedData = getHashedData(source, algorithm);
		
		if (hashedData == null) return null;
		
		String hashedString = "";
		for (int i = 0; i < hashedData.length; i++) {
			String hexString = Integer.toHexString((int)hashedData[i] & 0x000000ff);
			if (hexString.length() < 2) 
				hexString = "0" + hexString;
				
			hashedString += hexString;
		}
		
		return hashedString;
	}
	
	public static String getUniqueFileName(String path, String fileName)
    {	
        String name =
            fileName.substring(0, fileName.lastIndexOf("."));
        String ext =
            fileName.substring(fileName.lastIndexOf("."));
        int index = 1;
        while (true) {
        	File file = 
        		new File(path + "\\" + name + "_" + index + ext);
        	if (file.exists())
        		index++;
        	else
        		break;
        }

        return name + "_" + index + ext;
    }
	
	public static String makeQueryString(
			String queryString, String toAdd, String[] toRemove, String encoding)
			throws UnsupportedEncodingException {
			
			if (queryString == null || queryString.length() == 0) {
				return null;
			}
			if (encoding == null || encoding.length() == 0) {
				encoding = "utf-8";
			}
			queryString = queryString.replace("?", "");
			String[] ar = queryString.split("&");
			HashMap<String, String> result = new HashMap<>();
			for (String q : ar) {
				String[] ar2 = q.split("=");
				if (ar2.length != 2) {
					throw new RuntimeException("Invalid Format");
				}
				result.put(ar2[0], 
					new String(ar2[1].getBytes(encoding), "ISO-8859-1"));
			}
			
			if(toRemove != null && toRemove.length > 0) {
				for (String d : toRemove) {
					result.remove(d);
				}
			}
			
			if (toAdd != null && toAdd.length() > 0) {
				ar = toAdd.trim().split("&");
				for (String a : ar) {
					String[] ar2 = a.split("=");
					if (ar2.length != 2) {
						throw new RuntimeException("Invalid Format");
					}
					result.replace(ar2[0], 
						new String(ar2[1].getBytes(encoding), "ISO-8859-1"));
				}
			}
			
			Set<String> keys = result.keySet();
			StringBuilder sb = new StringBuilder();
			for (String key : keys) {
				sb.append(String.format("&%s=%s", key, result.get(key)));
			}
			sb = sb.replace(0, 1, "?");
			
			return sb.toString();
		}
	/**
	  * 현재 시를 12시간제를 기준으로 리턴해주는 함수
	  * @return 시간+AM/PM을 포함하여 문자열로 리턴
	  */
	 public static String getHourFromAmPm(){
	  Calendar cal = Calendar.getInstance();
	  String str = Integer.toString(cal.get(Calendar.HOUR));
	  if (cal.get(Calendar.AM_PM) == 0) str += "AM";
	     else str += "PM";
	  return str;
	 }

}