package com.actionbarsherlock.view;

import android.view.InflateException;
import java.lang.reflect.Method;

class MenuInflater$InflatedOnMenuItemClickListener
  implements MenuItem.OnMenuItemClickListener
{
  private static final Class<?>[] PARAM_TYPES = { MenuItem.class };
  private Method mMethod;
  private Object mRealOwner;
  
  public MenuInflater$InflatedOnMenuItemClickListener(Object paramObject, String paramString)
  {
    this.mRealOwner = paramObject;
    Class localClass = paramObject.getClass();
    try
    {
      this.mMethod = localClass.getMethod(paramString, PARAM_TYPES);
      return;
    }
    catch (Exception localException)
    {
      InflateException localInflateException = new InflateException("Couldn't resolve menu item onClick handler " + paramString + " in class " + localClass.getName());
      localInflateException.initCause(localException);
      throw localInflateException;
    }
  }
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    try
    {
      if (this.mMethod.getReturnType() == Boolean.TYPE) {
        return ((Boolean)this.mMethod.invoke(this.mRealOwner, new Object[] { paramMenuItem })).booleanValue();
      }
      this.mMethod.invoke(this.mRealOwner, new Object[] { paramMenuItem });
      return true;
    }
    catch (Exception localException)
    {
      throw new RuntimeException(localException);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.actionbarsherlock.view.MenuInflater.InflatedOnMenuItemClickListener
 * JD-Core Version:    0.7.0.1
 */