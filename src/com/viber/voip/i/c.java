package com.viber.voip.i;

import android.content.Context;
import android.content.res.AssetManager;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

public class c
{
  private static String a(String paramString)
  {
    if (paramString.startsWith("﻿")) {
      paramString = paramString.substring(1);
    }
    return paramString;
  }
  
  public static final List<String> a(Context paramContext, String paramString)
  {
    int i = 0;
    ArrayList localArrayList = new ArrayList();
    int j = 1;
    StringBuilder localStringBuilder;
    BufferedReader localBufferedReader;
    try
    {
      localStringBuilder = new StringBuilder();
      localBufferedReader = new BufferedReader(new InputStreamReader(paramContext.getAssets().open(paramString), "UTF8"));
      for (;;)
      {
        String str1 = localBufferedReader.readLine();
        if (str1 == null) {
          break;
        }
        if (j != 0)
        {
          str1 = a(str1);
          j = 0;
        }
        String str3 = str1.trim();
        if ((!TextUtils.isEmpty(str3)) && (!str3.startsWith("--"))) {
          localStringBuilder.append(str3).append(' ');
        }
      }
      return localArrayList;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    for (;;)
    {
      localBufferedReader.close();
      String[] arrayOfString = localStringBuilder.toString().split(";");
      while (i < arrayOfString.length)
      {
        String str2 = arrayOfString[i].trim();
        if (!TextUtils.isEmpty(str2)) {
          localArrayList.add(str2);
        }
        i++;
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.i.c
 * JD-Core Version:    0.7.0.1
 */