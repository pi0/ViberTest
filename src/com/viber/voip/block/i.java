package com.viber.voip.block;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.os.IBinder;
import android.text.TextUtils;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.bc;
import com.viber.voip.a.f;
import com.viber.voip.a.x;
import com.viber.voip.contacts.c.d.b;
import com.viber.voip.util.hd;
import com.viber.voip.widget.a.e;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class i
{
  private static Set<String> a = new HashSet();
  private static f b = new f();
  
  public static void a()
  {
    a.clear();
  }
  
  public static void a(Activity paramActivity, String paramString1, String paramString2, boolean paramBoolean, n paramn)
  {
    a(paramActivity, paramString1, paramString2, paramBoolean, null, paramn);
  }
  
  public static void a(Activity paramActivity, String paramString1, String paramString2, boolean paramBoolean, Runnable paramRunnable)
  {
    a(paramActivity, paramString1, paramString2, paramBoolean, paramRunnable, null);
  }
  
  private static void a(Activity paramActivity, String paramString1, String paramString2, boolean paramBoolean, Runnable paramRunnable, n paramn)
  {
    String str;
    if (!paramBoolean)
    {
      str = hd.a(ViberApplication.getInstance(), paramString2, paramString2);
      if (!TextUtils.isEmpty(str))
      {
        if (!a(str)) {
          break label140;
        }
        AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramActivity);
        if (TextUtils.isEmpty(paramString1)) {
          paramString1 = str;
        }
        localBuilder.setTitle(paramActivity.getString(2131494464, new Object[] { paramString1 }));
        localBuilder.setMessage(paramActivity.getString(2131494465, new Object[] { paramString1, paramString1 }));
        localBuilder.setPositiveButton(2131493614, new j(str, paramRunnable, paramn, paramString2));
        localBuilder.setNegativeButton(2131493558, null);
        localBuilder.create().show();
      }
    }
    label140:
    do
    {
      return;
      str = paramString2;
      break;
      if (paramRunnable != null) {
        paramRunnable.run();
      }
    } while (paramn == null);
    paramn.a(paramString2);
  }
  
  public static void a(Activity paramActivity, String paramString, Set<String> paramSet)
  {
    a(paramActivity.getWindow().getDecorView(), paramString, paramSet);
  }
  
  public static void a(Activity paramActivity, String paramString, Set<String> paramSet, Runnable paramRunnable, boolean paramBoolean)
  {
    a(paramActivity.getWindow().getDecorView(), paramString, paramSet, paramRunnable, paramBoolean);
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2, boolean paramBoolean, IBinder paramIBinder, Runnable paramRunnable)
  {
    a(paramContext, paramString1, paramString2, paramBoolean, paramIBinder, paramRunnable, null);
  }
  
  private static void a(Context paramContext, String paramString1, String paramString2, boolean paramBoolean, IBinder paramIBinder, Runnable paramRunnable, n paramn)
  {
    String str;
    if (!paramBoolean)
    {
      str = hd.a(ViberApplication.getInstance(), paramString2, paramString2);
      if (!TextUtils.isEmpty(str))
      {
        if (!a(str)) {
          break label196;
        }
        AlertDialog.Builder localBuilder = new AlertDialog.Builder(new ContextThemeWrapper(paramContext, 2131558709));
        if (TextUtils.isEmpty(paramString1)) {
          paramString1 = str;
        }
        localBuilder.setTitle(paramContext.getString(2131494464, new Object[] { paramString1 }));
        localBuilder.setMessage(paramContext.getString(2131494465, new Object[] { paramString1, paramString1 }));
        localBuilder.setPositiveButton(2131493614, new k(str, paramRunnable, paramn, paramString2));
        localBuilder.setNegativeButton(2131493558, null);
        AlertDialog localAlertDialog = localBuilder.create();
        if (paramIBinder != null)
        {
          WindowManager.LayoutParams localLayoutParams = localAlertDialog.getWindow().getAttributes();
          localLayoutParams.type = 1003;
          localLayoutParams.token = paramIBinder;
          localLayoutParams.flags = (0x20000 | localLayoutParams.flags);
        }
        localAlertDialog.show();
      }
    }
    label196:
    do
    {
      return;
      str = paramString2;
      break;
      if (paramRunnable != null) {
        paramRunnable.run();
      }
    } while (paramn == null);
    paramn.a(paramString2);
  }
  
  public static void a(View paramView, String paramString, Set<String> paramSet)
  {
    if ((paramSet == null) || (paramSet.size() == 0)) {
      throw new IllegalArgumentException();
    }
    String str = (String)paramSet.iterator().next();
    Context localContext = paramView.getContext();
    Object[] arrayOfObject = new Object[1];
    if (!TextUtils.isEmpty(paramString)) {
      if (paramSet.size() <= 1) {}
    }
    for (;;)
    {
      arrayOfObject[0] = paramString;
      com.viber.voip.widget.a.a.a(paramView, localContext.getString(2131494455, arrayOfObject), new m(paramSet), new e(-1, 2131494460, 4000L));
      d().b(paramSet);
      bc.a().a(b.e());
      return;
      paramString = paramView.getContext().getString(2131494457, new Object[] { paramString, str });
      continue;
      paramString = str;
    }
  }
  
  public static void a(View paramView, String paramString, Set<String> paramSet, Runnable paramRunnable, boolean paramBoolean)
  {
    if ((paramSet == null) || (paramSet.size() == 0)) {
      throw new IllegalArgumentException();
    }
    String str = (String)paramSet.iterator().next();
    Context localContext = paramView.getContext();
    Object[] arrayOfObject = new Object[1];
    bc localbc;
    if (!TextUtils.isEmpty(paramString)) {
      if (paramSet.size() > 1)
      {
        arrayOfObject[0] = paramString;
        com.viber.voip.widget.a.a.a(paramView, localContext.getString(2131494454, arrayOfObject), new l(paramSet, paramRunnable), new e(-1, 2131494453, 4000L));
        d().a(paramSet);
        localbc = bc.a();
        if (!paramBoolean) {
          break label174;
        }
      }
    }
    label174:
    for (x localx = b.d();; localx = b.c())
    {
      localbc.a(localx);
      return;
      paramString = paramView.getContext().getString(2131494457, new Object[] { paramString, str });
      break;
      paramString = str;
      break;
    }
  }
  
  public static void a(Set<String> paramSet)
  {
    a = paramSet;
  }
  
  public static boolean a(String paramString)
  {
    return a.contains(paramString);
  }
  
  private static com.viber.voip.contacts.c.a.a d()
  {
    return ViberApplication.getInstance().getContactManager().e();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.block.i
 * JD-Core Version:    0.7.0.1
 */