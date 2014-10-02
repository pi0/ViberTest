package com.viber.voip.messages.orm.service.uiwrapper;

import android.os.Handler;
import android.util.SparseArray;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.messages.orm.entity.Entity;
import com.viber.voip.messages.orm.service.EntityService;
import com.viber.voip.messages.orm.service.ServiceCallback;

public abstract class ServiceWrapper<T extends EntityService<? extends Entity>>
{
  private static final int DESTROY_CONTACTS_DELAY = 1000;
  private Handler uiHandler = dc.a(dk.a);
  private SparseArray<ServiceWrapper<T>.InternalWrapper> wrappers = new SparseArray();
  
  protected abstract T createInstance(ServiceCallback paramServiceCallback);
  
  public ServiceWrapper<T>.InternalWrapper getServiceWrapper(int paramInt)
  {
    ServiceWrapper.InternalWrapper localInternalWrapper = (ServiceWrapper.InternalWrapper)this.wrappers.get(paramInt);
    if (localInternalWrapper == null)
    {
      localInternalWrapper = new ServiceWrapper.InternalWrapper(this);
      this.wrappers.append(paramInt, localInternalWrapper);
    }
    return localInternalWrapper;
  }
  
  protected abstract void onDestroy(T paramT, ServiceCallback paramServiceCallback);
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.orm.service.uiwrapper.ServiceWrapper
 * JD-Core Version:    0.7.0.1
 */