package com.viber.voip.util;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.IBinder;
import android.text.TextUtils;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.CheckBox;
import android.widget.TextView;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.a;
import com.viber.voip.a.bc;
import com.viber.voip.a.u;

public class at
{
  static
  {
    if (!at.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private at()
  {
    if (!a) {
      throw new AssertionError();
    }
  }
  
  public static DialogInterface a(Context paramContext, int paramInt1, int paramInt2, az paramaz, Runnable paramRunnable, int paramInt3, boolean paramBoolean)
  {
    return a(paramContext, paramInt1, paramContext.getResources().getString(paramInt2), paramaz, paramRunnable, paramInt3, 0, paramBoolean);
  }
  
  public static DialogInterface a(Context paramContext, int paramInt1, int paramInt2, az paramaz, Runnable paramRunnable, boolean paramBoolean)
  {
    return a(paramContext, paramInt1, paramContext.getResources().getString(paramInt2), paramaz, paramRunnable, 2131493557, 0, false);
  }
  
  public static DialogInterface a(Context paramContext, int paramInt1, int paramInt2, Runnable paramRunnable)
  {
    return a(paramContext, null, paramInt1, paramInt2, paramRunnable);
  }
  
  public static DialogInterface a(Context paramContext, int paramInt1, CharSequence paramCharSequence, az paramaz, Runnable paramRunnable, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramContext);
    localBuilder.setMessage(paramCharSequence);
    CheckBox[] arrayOfCheckBox = new CheckBox[1];
    localBuilder.setPositiveButton(paramInt2, new aw(paramContext, paramCharSequence, paramInt2, paramaz, arrayOfCheckBox));
    ax localax = new ax(paramContext, paramCharSequence, paramInt3, paramRunnable);
    if (paramInt3 <= 0) {
      paramInt3 = 2131493558;
    }
    localBuilder.setNegativeButton(paramInt3, localax);
    localBuilder.setOnCancelListener(new ay(paramContext, paramCharSequence, paramRunnable));
    AlertDialog localAlertDialog = localBuilder.create();
    if (paramBoolean)
    {
      View localView = LayoutInflater.from(paramContext).inflate(2130903186, null);
      arrayOfCheckBox[0] = ((CheckBox)localView.findViewById(2131165764));
      if (Build.VERSION.SDK_INT < 11) {
        ((TextView)localView.findViewById(2131165765)).setTextColor(-1);
      }
      localAlertDialog.setView(localView);
    }
    if (paramInt1 > 0) {
      localAlertDialog.setTitle(paramInt1);
    }
    for (;;)
    {
      try
      {
        localAlertDialog.show();
        return localAlertDialog;
      }
      catch (Exception localException) {}
      localAlertDialog.requestWindowFeature(1);
    }
    return null;
  }
  
  public static DialogInterface a(Context paramContext, int paramInt1, CharSequence paramCharSequence, az paramaz, Runnable paramRunnable, int paramInt2, boolean paramBoolean)
  {
    return a(paramContext, paramInt1, paramCharSequence, paramaz, paramRunnable, paramInt2, 0, paramBoolean);
  }
  
  public static DialogInterface a(Context paramContext, IBinder paramIBinder, int paramInt1, int paramInt2, Runnable paramRunnable)
  {
    Resources localResources = paramContext.getResources();
    return a(paramContext, paramIBinder, localResources.getString(paramInt1), localResources.getString(paramInt2), 2131493557, paramRunnable, true);
  }
  
  public static DialogInterface a(Context paramContext, IBinder paramIBinder, String paramString1, String paramString2, int paramInt, Runnable paramRunnable, boolean paramBoolean)
  {
    ContextThemeWrapper localContextThemeWrapper;
    AlertDialog localAlertDialog;
    if ((paramIBinder == null) && (ViberApplication.getInstance().isOnForeground()))
    {
      localContextThemeWrapper = new ContextThemeWrapper(ViberApplication.getInstance(), 2131558709);
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(localContextThemeWrapper);
      if (paramString1 != null) {
        localBuilder.setTitle(paramString1);
      }
      if (paramString2 != null) {
        localBuilder.setMessage(paramString2);
      }
      localBuilder.setCancelable(paramBoolean);
      localBuilder.setPositiveButton(paramInt, new au(paramContext, paramString2, paramInt, paramRunnable));
      localBuilder.setOnCancelListener(new av(paramContext, paramString2));
      localAlertDialog = localBuilder.create();
      if (paramIBinder == null) {
        break label175;
      }
      WindowManager.LayoutParams localLayoutParams2 = localAlertDialog.getWindow().getAttributes();
      localLayoutParams2.type = 1003;
      localLayoutParams2.token = paramIBinder;
      localLayoutParams2.flags = (0x20000 | localLayoutParams2.flags);
    }
    for (;;)
    {
      localAlertDialog.show();
      return localAlertDialog;
      localContextThemeWrapper = new ContextThemeWrapper(paramContext, 2131558709);
      break;
      label175:
      if (ViberApplication.getInstance().isOnForeground())
      {
        WindowManager.LayoutParams localLayoutParams1 = localAlertDialog.getWindow().getAttributes();
        localLayoutParams1.type = 2007;
        localLayoutParams1.flags = (0x20000 | localLayoutParams1.flags);
      }
    }
  }
  
  public static DialogInterface a(Context paramContext, String paramString1, String paramString2, int paramInt, Runnable paramRunnable, boolean paramBoolean)
  {
    return a(paramContext, null, paramString1, paramString2, paramInt, paramRunnable, paramBoolean);
  }
  
  public static DialogInterface a(Context paramContext, String paramString1, String paramString2, Runnable paramRunnable)
  {
    return a(paramContext, paramString1, paramString2, paramRunnable, true);
  }
  
  public static DialogInterface a(Context paramContext, String paramString1, String paramString2, Runnable paramRunnable, boolean paramBoolean)
  {
    return a(paramContext, paramString1, paramString2, 2131493557, paramRunnable, paramBoolean);
  }
  
  public static Intent a(Intent paramIntent, CharSequence paramCharSequence, Intent... paramVarArgs)
  {
    Intent localIntent = new Intent("android.intent.action.CHOOSER");
    localIntent.putExtra("android.intent.extra.INTENT", paramIntent);
    if (paramCharSequence != null) {
      localIntent.putExtra("android.intent.extra.TITLE", paramCharSequence);
    }
    if ((paramVarArgs != null) && (paramVarArgs.length > 0)) {
      localIntent.putExtra("android.intent.extra.INITIAL_INTENTS", paramVarArgs);
    }
    return localIntent;
  }
  
  public static String a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return "";
    case 2131493557: 
      a.z.getClass();
      return "Ok";
    case 2131493558: 
      a.z.getClass();
      return "Cancel";
    case 2131493665: 
      a.z.getClass();
      return "Edit";
    case 2131493814: 
      a.z.getClass();
      return "No Thanks";
    case 2131493815: 
      a.z.getClass();
      return "Try it";
    case 2131493550: 
      a.z.getClass();
      return "Continue";
    case 2131493985: 
      a.z.getClass();
      return "Add to contacts";
    case 2131493751: 
      a.z.getClass();
      return "Yes";
    case 2131494048: 
      a.z.getClass();
      return "Invite";
    case 2131493706: 
      a.z.getClass();
      return "Delete";
    case 2131494119: 
      a.z.getClass();
      return "Download";
    case 2131494022: 
      a.z.getClass();
      return "Remove";
    case 2131493684: 
      a.z.getClass();
      return "Close";
    }
    a.z.getClass();
    return "Retry";
  }
  
  private static void a(AlertDialog.Builder paramBuilder, Context paramContext, int paramInt1, DialogInterface.OnClickListener paramOnClickListener1, DialogInterface.OnClickListener paramOnClickListener2, int paramInt2, int paramInt3)
  {
    if (paramInt1 > 0) {}
    for (String str = paramContext.getString(paramInt1);; str = null)
    {
      a(paramBuilder, paramContext, str, paramOnClickListener1, paramOnClickListener2, paramInt2, paramInt3);
      return;
    }
  }
  
  private static void a(AlertDialog.Builder paramBuilder, Context paramContext, String paramString, DialogInterface.OnClickListener paramOnClickListener1, DialogInterface.OnClickListener paramOnClickListener2, int paramInt1, int paramInt2)
  {
    paramBuilder.setPositiveButton(paramInt1, paramOnClickListener1);
    if (paramInt2 == 0) {
      paramInt2 = 2131493558;
    }
    paramBuilder.setNegativeButton(paramInt2, paramOnClickListener2);
    AlertDialog localAlertDialog = paramBuilder.create();
    if (!TextUtils.isEmpty(paramString)) {
      localAlertDialog.setTitle(paramString);
    }
    for (;;)
    {
      localAlertDialog.show();
      return;
      localAlertDialog.requestWindowFeature(1);
    }
  }
  
  public static void a(Context paramContext, int paramInt1, int paramInt2, DialogInterface.OnClickListener paramOnClickListener1, DialogInterface.OnClickListener paramOnClickListener2, int paramInt3, int paramInt4)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramContext);
    localBuilder.setMessage(paramInt2);
    a(localBuilder, paramContext, paramInt1, paramOnClickListener1, paramOnClickListener2, paramInt3, paramInt4);
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2, DialogInterface.OnClickListener paramOnClickListener1, DialogInterface.OnClickListener paramOnClickListener2, int paramInt1, int paramInt2)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramContext);
    localBuilder.setMessage(paramString2);
    a(localBuilder, paramContext, paramString1, paramOnClickListener1, paramOnClickListener2, paramInt1, paramInt2);
  }
  
  public static void a(DialogInterface paramDialogInterface)
  {
    a(true, paramDialogInterface);
  }
  
  private static void a(boolean paramBoolean, DialogInterface paramDialogInterface)
  {
    if ((paramDialogInterface != null) && ((!(paramDialogInterface instanceof Dialog)) || (((Dialog)paramDialogInterface).isShowing())))
    {
      if (paramBoolean) {}
      try
      {
        paramDialogInterface.cancel();
        return;
      }
      catch (Exception localException) {}
      paramDialogInterface.dismiss();
      return;
    }
  }
  
  private static void b(Context paramContext, String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      if (!paramString.equals(paramContext.getResources().getString(2131493682))) {
        break label55;
      }
      bc localbc10 = bc.a();
      u localu10 = a.z;
      a.z.getClass();
      localbc10.a(localu10.c("202"));
    }
    label55:
    do
    {
      return;
      if (paramString.equals(paramContext.getResources().getString(2131493774)))
      {
        bc localbc9 = bc.a();
        u localu9 = a.z;
        a.z.getClass();
        localbc9.a(localu9.c("201"));
        return;
      }
      if (paramString.equals(paramContext.getResources().getString(2131493795)))
      {
        bc localbc8 = bc.a();
        u localu8 = a.z;
        a.z.getClass();
        localbc8.a(localu8.c("203"));
        return;
      }
      if (paramString.equals(paramContext.getResources().getString(2131493760)))
      {
        bc localbc7 = bc.a();
        u localu7 = a.z;
        a.z.getClass();
        localbc7.a(localu7.c("300"));
        return;
      }
      if (paramString.equals(paramContext.getResources().getString(2131493754)))
      {
        bc localbc6 = bc.a();
        u localu6 = a.z;
        a.z.getClass();
        localbc6.a(localu6.c("302"));
        return;
      }
      if (paramString.equals(paramContext.getResources().getString(2131493765)))
      {
        bc localbc5 = bc.a();
        u localu5 = a.z;
        a.z.getClass();
        localbc5.a(localu5.c("327"));
        return;
      }
      if (paramString.equals(paramContext.getResources().getString(2131493840)))
      {
        bc localbc4 = bc.a();
        u localu4 = a.z;
        a.z.getClass();
        localbc4.a(localu4.c("343"));
        return;
      }
      if (paramString.equals(paramContext.getResources().getString(2131493842)))
      {
        bc localbc3 = bc.a();
        u localu3 = a.z;
        a.z.getClass();
        localbc3.a(localu3.c("330"));
        return;
      }
      if (paramString.equals(paramContext.getResources().getString(2131493670)))
      {
        bc localbc2 = bc.a();
        u localu2 = a.z;
        a.z.getClass();
        localbc2.a(localu2.c("336"));
        return;
      }
    } while ((!paramString.equals(paramContext.getResources().getString(2131493812))) && (!paramString.equals(paramContext.getResources().getString(2131493813))));
    bc localbc1 = bc.a();
    u localu1 = a.z;
    a.z.getClass();
    localbc1.a(localu1.c("345"));
  }
  
  private static void b(Context paramContext, String paramString, int paramInt)
  {
    String str = a(paramInt);
    if (!TextUtils.isEmpty(paramString))
    {
      if (!paramString.equals(paramContext.getResources().getString(2131493974))) {
        break label61;
      }
      localbc2 = bc.a();
      localu2 = a.z;
      a.z.getClass();
      localbc2.a(localu2.a("306", str));
    }
    label61:
    while ((!paramString.equals(paramContext.getResources().getString(2131493812))) && (!paramString.equals(paramContext.getResources().getString(2131493813))))
    {
      bc localbc2;
      u localu2;
      return;
    }
    bc localbc1 = bc.a();
    u localu1 = a.z;
    a.z.getClass();
    localbc1.a(localu1.a("345", str));
  }
  
  public static void b(DialogInterface paramDialogInterface)
  {
    a(false, paramDialogInterface);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.at
 * JD-Core Version:    0.7.0.1
 */