package com.CookieControl;

import javax.servlet.http.Cookie;


public class CookieUtils {
	public static String getValue(Cookie[] cookies, String name) {
		String valueString ="";
		if(cookies != null)
		{
			for(Cookie cookie: cookies)
			{
				if(cookie.getName().equals(name))
				{
					valueString=cookie.getValue();
				}
			}
		}
		return valueString;
	}
}
