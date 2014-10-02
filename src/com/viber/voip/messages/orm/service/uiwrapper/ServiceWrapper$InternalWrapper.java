package com.viber.voip.messages.orm.service.uiwrapper;

import com.viber.voip.messages.orm.entity.Entity;
import com.viber.voip.messages.orm.service.EntityService;
import com.viber.voip.messages.orm.service.ServiceCallback;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class ServiceWrapper$InternalWrapper
  implements ServiceCallback
{
  private Set<ServiceCallback> mCallbacks = new HashSet();
  private T mService;
  private int refCount;
  
  public ServiceWrapper$InternalWrapper(ServiceWrapper paramServiceWrapper) {}
  
  public void destroy()
  {
    try
    {
      this.refCount = (-1 + this.refCount);
      if (this.refCount == 0)
      {
        if (this.mService != null) {
          this.this$0.onDestroy(this.mService, this);
        }
        this.mService = null;
      }
      return;
    }
    finally {}
  }
  
  public T getInstance(ServiceCallback paramServiceCallback)
  {
    try
    {
      this.mCallbacks.add(paramServiceCallback);
      if (this.mService == null) {
        this.mService = this.this$0.createInstance(this);
      }
      this.refCount = (1 + this.refCount);
      EntityService localEntityService = this.mService;
      return localEntityService;
    }
    finally {}
  }
  
  public boolean isPaused()
  {
    Iterator localIterator = this.mCallbacks.iterator();
    while (localIterator.hasNext()) {
      if (!((ServiceCallback)localIterator.next()).isPaused()) {
        return false;
      }
    }
    return true;
  }
  
  public void onDataChange(EntityService<?> paramEntityService, int paramInt, Entity... paramVarArgs)
  {
    Iterator localIterator = this.mCallbacks.iterator();
    while (localIterator.hasNext()) {
      ((ServiceCallback)localIterator.next()).onDataChange(paramEntityService, paramInt, paramVarArgs);
    }
  }
  
  public void onDataReady(EntityService<?> paramEntityService)
  {
    Iterator localIterator = this.mCallbacks.iterator();
    while (localIterator.hasNext()) {
      ((ServiceCallback)localIterator.next()).onDataReady(paramEntityService);
    }
  }
  
  public void start(ServiceCallback paramServiceCallback)
  {
    this.mCallbacks.add(paramServiceCallback);
  }
  
  public void stop(ServiceCallback paramServiceCallback)
  {
    this.mCallbacks.remove(paramServiceCallback);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.orm.service.uiwrapper.ServiceWrapper.InternalWrapper
 * JD-Core Version:    0.7.0.1
 */