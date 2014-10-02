package com.viber.jni.controller;

import android.os.Handler;
import com.viber.voip.dc;
import com.viber.voip.dk;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class ControllerListener<T>
{
  private Map<T, Handler> mDelegatesHandlers = new LinkedHashMap();
  private Handler mHandler = dc.a(dk.b);
  
  public void notifyListeners(ControllerListener.ControllerListenerAction<T> paramControllerListenerAction)
  {
    for (;;)
    {
      Map.Entry localEntry;
      synchronized (this.mDelegatesHandlers)
      {
        LinkedHashMap localLinkedHashMap = new LinkedHashMap(this.mDelegatesHandlers);
        Iterator localIterator = localLinkedHashMap.entrySet().iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        localEntry = (Map.Entry)localIterator.next();
        if (localEntry.getValue() != null) {
          ((Handler)localEntry.getValue()).post(new ControllerListener.1(this, paramControllerListenerAction, localEntry));
        }
      }
      paramControllerListenerAction.execute(localEntry.getKey());
    }
  }
  
  public ControllerListener<T> registerDelegate(T paramT, Handler paramHandler)
  {
    synchronized (this.mDelegatesHandlers)
    {
      this.mDelegatesHandlers.put(paramT, paramHandler);
      return this;
    }
  }
  
  public ControllerListener<T> registerDelegate(T... paramVarArgs)
  {
    synchronized (this.mDelegatesHandlers)
    {
      int i = paramVarArgs.length;
      for (int j = 0; j < i; j++)
      {
        T ? = paramVarArgs[j];
        this.mDelegatesHandlers.put(?, this.mHandler);
      }
      return this;
    }
  }
  
  public void removeDelegate(T paramT)
  {
    synchronized (this.mDelegatesHandlers)
    {
      this.mDelegatesHandlers.remove(paramT);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.controller.ControllerListener
 * JD-Core Version:    0.7.0.1
 */