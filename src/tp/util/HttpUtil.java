package tp.util;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.*;

import java.util.*;


public class HttpUtil {
	
	public static void logParameters(HttpServletRequest req) {
		
		Map<String, String[]> map;
		map = req.getParameterMap();
		
		for(String key : map.keySet()) {
			String[] paramaterValues = map.get(key);
			System.out.println(key + Arrays.toString(paramaterValues));
		}
	}
}
