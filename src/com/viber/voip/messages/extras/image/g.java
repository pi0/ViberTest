package com.viber.voip.messages.extras.image;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.Rect;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.Window;
import com.viber.voip.ViberApplication;
import java.util.Iterator;
import java.util.List;

public class g
{
  public static int a = 0;
  private static final String b = g.class.getName();
  
  public static int a(Activity paramActivity)
  {
    Resources localResources = ViberApplication.getInstance().getResources();
    int i = localResources.getIdentifier("status_bar_height", "dimen", "android");
    if (i > 0) {
      return localResources.getDimensionPixelSize(i);
    }
    if (paramActivity != null)
    {
      Rect localRect = new Rect();
      Window localWindow = paramActivity.getWindow();
      localWindow.getDecorView().getWindowVisibleDisplayFrame(localRect);
      return Math.abs(localRect.top - localWindow.findViewById(16908290).getTop());
    }
    return 0;
  }
  
  public static int a(Context paramContext)
  {
    int i = paramContext.getResources().getIdentifier("status_bar_height", "dimen", "android");
    if (i > 0) {
      return paramContext.getResources().getDimensionPixelSize(i);
    }
    return 38;
  }
  
  public static Intent a(Activity paramActivity, Uri paramUri)
  {
    int i = h.a(200.0F);
    int j = h.a(200.0F);
    return a(paramUri, h.a(l.d, null), 0, 0, i, j, false);
  }
  
  public static Intent a(Uri paramUri)
  {
    return a(paramUri, h.a(l.g, null), 720, 720, false);
  }
  
  public static Intent a(Uri paramUri, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    l locall = l.d;
    if (paramBoolean) {}
    for (String str = null;; str = paramUri.toString()) {
      return a(paramUri, h.a(locall, str), paramInt1, paramInt2, paramBoolean);
    }
  }
  
  public static Intent a(Uri paramUri1, Uri paramUri2, int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean)
  {
    if (paramUri1 == null) {
      throw new NullPointerException("Uri can't be null");
    }
    Intent localIntent = new Intent("com.viber.voip.action.CROP");
    localIntent.setDataAndType(paramUri1, "image/*");
    localIntent.putExtra("mimeType", "image/*");
    localIntent.putExtra("outputX", paramInt1);
    localIntent.putExtra("outputY", paramInt2);
    localIntent.putExtra("aspectX", paramInt3);
    localIntent.putExtra("aspectY", paramInt4);
    localIntent.putExtra("scale", true);
    localIntent.putExtra("landscapeCutting", paramBoolean);
    localIntent.putExtra("output", paramUri2);
    return localIntent;
  }
  
  public static Intent a(Uri paramUri1, Uri paramUri2, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (paramUri1 == null) {
      throw new NullPointerException("Uri can't be null");
    }
    return a(paramUri1, paramUri2, paramInt1, paramInt2, paramInt1, paramInt2, paramBoolean);
  }
  
  private static ResolveInfo a(List<ResolveInfo> paramList)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      ResolveInfo localResolveInfo = (ResolveInfo)localIterator.next();
      if ((localResolveInfo.activityInfo.name.contains("Photographs")) || (localResolveInfo.activityInfo.name.contains("Wallpaper"))) {
        return localResolveInfo;
      }
    }
    return null;
  }
  
  public static void a(Context paramContext, Uri paramUri)
  {
    a("setHomeScreenWallpaper");
    a(paramContext, paramUri, true);
  }
  
  private static void a(Context paramContext, Uri paramUri, boolean paramBoolean)
  {
    Intent localIntent = new Intent("android.intent.action.ATTACH_DATA");
    localIntent.setDataAndType(paramUri, "image/*");
    localIntent.putExtra("mimeType", "image/*");
    List localList = paramContext.getPackageManager().queryIntentActivities(localIntent, 0);
    if (paramBoolean) {}
    for (ResolveInfo localResolveInfo = a(localList); localResolveInfo != null; localResolveInfo = b(localList))
    {
      localIntent.setClassName(localResolveInfo.activityInfo.packageName, localResolveInfo.activityInfo.name);
      paramContext.startActivity(localIntent);
      return;
    }
    ViberApplication.log(6, b, "Failed to find corresponding screen to set a wallpaper");
  }
  
  private static void a(String paramString)
  {
    ViberApplication.log(3, b, paramString);
  }
  
  public static int b(Activity paramActivity)
  {
    int i = paramActivity.getResources().getDimensionPixelSize(2131361793) + a(paramActivity);
    a("getBadDistance: summary height px = " + i);
    return i;
  }
  
  public static Intent b(Activity paramActivity, Uri paramUri)
  {
    int[] arrayOfInt = h.a(paramActivity);
    return a(paramUri, arrayOfInt[0], arrayOfInt[1] - b(paramActivity), true);
  }
  
  private static ResolveInfo b(List<ResolveInfo> paramList)
  {
    Iterator localIterator1 = paramList.iterator();
    ResolveInfo localResolveInfo2;
    do
    {
      boolean bool = localIterator1.hasNext();
      localObject = null;
      if (!bool) {
        break;
      }
      localResolveInfo2 = (ResolveInfo)localIterator1.next();
    } while (!localResolveInfo2.activityInfo.name.contains("LockScreen"));
    Object localObject = localResolveInfo2;
    if (localObject == null)
    {
      Iterator localIterator2 = paramList.iterator();
      while (localIterator2.hasNext())
      {
        ResolveInfo localResolveInfo1 = (ResolveInfo)localIterator2.next();
        if (localResolveInfo1.activityInfo.name.contains("Wallpaper")) {
          return localResolveInfo1;
        }
      }
    }
    return localObject;
  }
  
  public static void b(Context paramContext, Uri paramUri)
  {
    a("setLockScreenWallpaper");
    a(paramContext, paramUri, false);
  }
  
  public static int c(Activity paramActivity)
  {
    DisplayMetrics localDisplayMetrics = paramActivity.getResources().getDisplayMetrics();
    int i = Math.min(localDisplayMetrics.widthPixels, localDisplayMetrics.heightPixels);
    int j = Math.max(localDisplayMetrics.widthPixels, localDisplayMetrics.heightPixels);
    float f = 720.0F / i;
    if (f == 0.0F) {
      f = 1.0F;
    }
    int k = a(paramActivity);
    int m = paramActivity.getResources().getDimensionPixelOffset(2131361793);
    int n = h.a(38.0F);
    double d = f * (j - k - m - n);
    a = n + (k + m);
    a("calculateImageHeight: alfa = " + f + ", menu = " + n + ", statusBar = " + k + ", actionBar = " + m + ", displayWidth = " + i + ", displayHeight = " + j + " RESULT HEIGHT: " + d);
    return (int)d;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.image.g
 * JD-Core Version:    0.7.0.1
 */