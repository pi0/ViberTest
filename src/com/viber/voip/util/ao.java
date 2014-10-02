package com.viber.voip.util;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.provider.Settings.System;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.viber.voip.ViberApplication;

public enum ao
{
  static
  {
    ao[] arrayOfao = new ao[2];
    arrayOfao[0] = a;
    arrayOfao[1] = b;
    c = arrayOfao;
  }
  
  private ao() {}
  
  public static ao a(Context paramContext)
  {
    DisplayMetrics localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
    if (localDisplayMetrics.widthPixels < localDisplayMetrics.heightPixels) {
      return a;
    }
    return b;
  }
  
  public static void a(Activity paramActivity)
  {
    if (c(paramActivity)) {
      return;
    }
    switch (c(paramActivity))
    {
    default: 
      return;
    case 0: 
      paramActivity.setRequestedOrientation(1);
      return;
    case 1: 
      paramActivity.setRequestedOrientation(0);
      return;
    case 3: 
      paramActivity.setRequestedOrientation(8);
      return;
    }
    paramActivity.setRequestedOrientation(9);
  }
  
  public static void b(Activity paramActivity)
  {
    if (c(paramActivity)) {
      return;
    }
    paramActivity.setRequestedOrientation(-1);
  }
  
  public static boolean b(Context paramContext)
  {
    return a.equals(a(paramContext));
  }
  
  private static int c(Activity paramActivity)
  {
    Display localDisplay = ((WindowManager)paramActivity.getSystemService("window")).getDefaultDisplay();
    int i;
    label28:
    DisplayMetrics localDisplayMetrics;
    if (Build.VERSION.SDK_INT > 7)
    {
      i = localDisplay.getRotation();
      localDisplayMetrics = paramActivity.getResources().getDisplayMetrics();
      if (gl.h() <= 0) {
        break label158;
      }
    }
    label158:
    for (boolean bool = true;; bool = false)
    {
      ViberApplication.log(3, "blockOrientation", " h: " + localDisplayMetrics.heightPixels + ", w: " + localDisplayMetrics.widthPixels + ", rotation: " + i + ",isKindle:" + bool);
      if (!bool) {
        break label170;
      }
      int j = 0;
      switch (i)
      {
      default: 
        j = i;
      case 0: 
        return j;
        i = localDisplay.getOrientation();
        break label28;
      }
    }
    return 2;
    return 3;
    return 1;
    label170:
    if (((localDisplayMetrics.heightPixels < localDisplayMetrics.widthPixels) && ((i == 0) || (i == 2))) || ((localDisplayMetrics.heightPixels > localDisplayMetrics.widthPixels) && ((i == 3) || (i == 1)))) {
      switch (i)
      {
      }
    }
    for (;;)
    {
      return i;
      i = 1;
      continue;
      i = 3;
      continue;
      i = 2;
      continue;
      i = 0;
    }
  }
  
  public static boolean c(Context paramContext)
  {
    return Settings.System.getInt(paramContext.getContentResolver(), "accelerometer_rotation", 1) != 1;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.ao
 * JD-Core Version:    0.7.0.1
 */