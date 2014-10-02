package com.viber.voip.process;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

public class ProcessBoundTasks
  extends BroadcastReceiver
{
  private static final String a = ProcessBoundTasks.class.getSimpleName();
  private static int b;
  
  protected static void a(String paramString) {}
  
  private static String b()
  {
    try
    {
      b = 1 + b;
      String str = "com.viber.voip.action.ProcessBoundTasks.Request_" + k.a() + "." + b;
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str1 = paramIntent.getStringExtra("class");
    Bundle localBundle = paramIntent.getBundleExtra("data");
    String str2 = paramIntent.getStringExtra("reply_action");
    a("2. onReceive className: " + str1 + ", replyAction:" + str2);
    try
    {
      Constructor localConstructor = Class.forName(str1).getDeclaredConstructor(new Class[0]);
      localConstructor.setAccessible(true);
      ((c)localConstructor.newInstance(new Object[0])).doInTargetProcess(localBundle, new a(this, str1, str2, paramContext));
      return;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      localClassNotFoundException.printStackTrace();
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      localIllegalAccessException.printStackTrace();
      return;
    }
    catch (InstantiationException localInstantiationException)
    {
      localInstantiationException.printStackTrace();
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      localNoSuchMethodException.printStackTrace();
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      localIllegalArgumentException.printStackTrace();
      return;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      localInvocationTargetException.printStackTrace();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.process.ProcessBoundTasks
 * JD-Core Version:    0.7.0.1
 */