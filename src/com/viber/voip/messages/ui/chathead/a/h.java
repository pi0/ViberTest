package com.viber.voip.messages.ui.chathead.a;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

class h
  implements InvocationHandler
{
  private MenuItem.OnMenuItemClickListener b;
  
  public h(b paramb, MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    this.b = paramOnMenuItemClickListener;
  }
  
  public Object invoke(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
  {
    if (("onMenuItemSelected".equals(paramMethod.getName())) && (paramArrayOfObject.length == 2) && ((paramArrayOfObject[1] instanceof MenuItem)))
    {
      if (this.b != null) {
        this.b.onMenuItemClick((MenuItem)paramArrayOfObject[1]);
      }
      return Boolean.valueOf(true);
    }
    return null;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.a.h
 * JD-Core Version:    0.7.0.1
 */