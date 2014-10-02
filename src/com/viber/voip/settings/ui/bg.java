package com.viber.voip.settings.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.preference.Preference;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ListView;
import com.actionbarsherlock.app.SherlockListFragment;
import com.viber.voip.ViberApplication;
import com.viber.voip.settings.k;
import com.viber.voip.settings.n;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

public class bg
  extends SherlockListFragment
{
  protected boolean a = false;
  private PreferenceManager b;
  private Handler c = new bh(this);
  private ListView d;
  private int e;
  
  public bg(int paramInt)
  {
    this.e = paramInt;
  }
  
  private void a()
  {
    if (this.c.hasMessages(0)) {
      return;
    }
    this.c.obtainMessage(0).sendToTarget();
  }
  
  private void b()
  {
    PreferenceScreen localPreferenceScreen = d();
    if ((localPreferenceScreen != null) && (this.d != null)) {
      localPreferenceScreen.bind(this.d);
    }
  }
  
  private PreferenceManager e()
  {
    try
    {
      Class[] arrayOfClass = new Class[2];
      arrayOfClass[0] = Activity.class;
      arrayOfClass[1] = Integer.TYPE;
      Constructor localConstructor = PreferenceManager.class.getDeclaredConstructor(arrayOfClass);
      localConstructor.setAccessible(true);
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = getActivity();
      arrayOfObject[1] = Integer.valueOf(100);
      PreferenceManager localPreferenceManager = (PreferenceManager)localConstructor.newInstance(arrayOfObject);
      return localPreferenceManager;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
  
  public Preference a(CharSequence paramCharSequence)
  {
    if (this.b == null) {
      return null;
    }
    return this.b.findPreference(paramCharSequence);
  }
  
  public void a(int paramInt)
  {
    try
    {
      Class[] arrayOfClass = new Class[3];
      arrayOfClass[0] = Context.class;
      arrayOfClass[1] = Integer.TYPE;
      arrayOfClass[2] = PreferenceScreen.class;
      Method localMethod = PreferenceManager.class.getDeclaredMethod("inflateFromResource", arrayOfClass);
      localMethod.setAccessible(true);
      PreferenceManager localPreferenceManager = this.b;
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = getActivity();
      arrayOfObject[1] = Integer.valueOf(paramInt);
      arrayOfObject[2] = d();
      a((PreferenceScreen)localMethod.invoke(localPreferenceManager, arrayOfObject));
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public void a(PreferenceScreen paramPreferenceScreen)
  {
    try
    {
      Method localMethod = PreferenceManager.class.getDeclaredMethod("setPreferences", new Class[] { PreferenceScreen.class });
      localMethod.setAccessible(true);
      if ((((Boolean)localMethod.invoke(this.b, new Object[] { paramPreferenceScreen })).booleanValue()) && (paramPreferenceScreen != null)) {
        a();
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public PreferenceManager c()
  {
    return this.b;
  }
  
  public PreferenceScreen d()
  {
    try
    {
      Method localMethod = PreferenceManager.class.getDeclaredMethod("getPreferenceScreen", new Class[0]);
      localMethod.setAccessible(true);
      PreferenceScreen localPreferenceScreen = (PreferenceScreen)localMethod.invoke(this.b, new Object[0]);
      return localPreferenceScreen;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    ViberApplication.log(3, "PreferenceListFragment", "handleActivityResult requestCode:" + paramInt1 + ",resultCode:" + paramInt2);
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    try
    {
      Class[] arrayOfClass = new Class[3];
      arrayOfClass[0] = Integer.TYPE;
      arrayOfClass[1] = Integer.TYPE;
      arrayOfClass[2] = Intent.class;
      Method localMethod = PreferenceManager.class.getDeclaredMethod("dispatchActivityResult", arrayOfClass);
      localMethod.setAccessible(true);
      PreferenceManager localPreferenceManager = this.b;
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = Integer.valueOf(paramInt1);
      arrayOfObject[1] = Integer.valueOf(paramInt2);
      arrayOfObject[2] = paramIntent;
      localMethod.invoke(localPreferenceManager, arrayOfObject);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null) {
      this.e = paramBundle.getInt("xml");
    }
    this.b = e();
    this.d = ((ListView)LayoutInflater.from(getActivity()).inflate(2130903302, null));
    this.d.setScrollBarStyle(0);
    this.a = n.a(this, ViberApplication.preferences(), k.a);
    ViberApplication.log(3, "PreferenceListFragment", "onCreate preferencesStorageLinked:" + this.a);
    if (this.e != 0) {
      a(this.e);
    }
    a();
    ((bi)getActivity()).a(d(), this.e);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    a();
    return this.d;
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    this.d = null;
    try
    {
      Method localMethod = PreferenceManager.class.getDeclaredMethod("dispatchActivityDestroy", new Class[0]);
      localMethod.setAccessible(true);
      localMethod.invoke(this.b, new Object[0]);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    ViewParent localViewParent = this.d.getParent();
    if (localViewParent != null) {
      ((ViewGroup)localViewParent).removeView(this.d);
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putInt("xml", this.e);
    super.onSaveInstanceState(paramBundle);
  }
  
  public void onStop()
  {
    super.onStop();
    try
    {
      Method localMethod = PreferenceManager.class.getDeclaredMethod("dispatchActivityStop", new Class[0]);
      localMethod.setAccessible(true);
      localMethod.invoke(this.b, new Object[0]);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.settings.ui.bg
 * JD-Core Version:    0.7.0.1
 */