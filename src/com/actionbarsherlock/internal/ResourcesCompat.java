package com.actionbarsherlock.internal;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import com.actionbarsherlock.R.bool;
import com.actionbarsherlock.R.integer;

public final class ResourcesCompat
{
  public static boolean getResources_getBoolean(Context paramContext, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 13) {
      return paramContext.getResources().getBoolean(paramInt);
    }
    DisplayMetrics localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
    float f1 = localDisplayMetrics.widthPixels / localDisplayMetrics.density;
    float f2 = localDisplayMetrics.heightPixels / localDisplayMetrics.density;
    if (f1 < f2) {
      f2 = f1;
    }
    if (paramInt == R.bool.abs__action_bar_embed_tabs) {
      return f1 >= 480.0F;
    }
    if (paramInt == R.bool.abs__split_action_bar_is_narrow) {
      return f1 < 480.0F;
    }
    if (paramInt == R.bool.abs__action_bar_expanded_action_views_exclusive) {
      return f2 < 600.0F;
    }
    if (paramInt == R.bool.abs__config_allowActionMenuItemTextWithIcon) {
      return f1 >= 480.0F;
    }
    throw new IllegalArgumentException("Unknown boolean resource ID " + paramInt);
  }
  
  public static int getResources_getInteger(Context paramContext, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 13) {
      return paramContext.getResources().getInteger(paramInt);
    }
    DisplayMetrics localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
    float f = localDisplayMetrics.widthPixels / localDisplayMetrics.density;
    if (paramInt == R.integer.abs__max_action_buttons)
    {
      if (f >= 600.0F) {
        return 5;
      }
      if (f >= 500.0F) {
        return 4;
      }
      if (f >= 360.0F) {
        return 3;
      }
      return 2;
    }
    throw new IllegalArgumentException("Unknown integer resource ID " + paramInt);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.actionbarsherlock.internal.ResourcesCompat
 * JD-Core Version:    0.7.0.1
 */