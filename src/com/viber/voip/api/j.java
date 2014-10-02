package com.viber.voip.api;

import com.viber.jni.PhoneControllerListener;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.publicgroup.PublicGroupControllerDelegate.PublicGroupInfoReceiver;
import com.viber.jni.publicgroup.PublicGroupInfoReceiverListener;

final class j
  implements z
{
  j(w paramw, String paramString, y paramy) {}
  
  public void a()
  {
    this.c.a(2, null);
  }
  
  public void a(PhoneControllerWrapper paramPhoneControllerWrapper)
  {
    PublicGroupInfoReceiverListener localPublicGroupInfoReceiverListener = paramPhoneControllerWrapper.getDelegatesManager().getPublicGroupInfoReceiverListener();
    PublicGroupControllerDelegate.PublicGroupInfoReceiver[] arrayOfPublicGroupInfoReceiver = new PublicGroupControllerDelegate.PublicGroupInfoReceiver[1];
    arrayOfPublicGroupInfoReceiver[0] = new k(this, localPublicGroupInfoReceiverListener);
    localPublicGroupInfoReceiverListener.registerDelegate(arrayOfPublicGroupInfoReceiver);
    paramPhoneControllerWrapper.handleGetPublicGroupInfoUri(paramPhoneControllerWrapper.generateSequence(), this.b);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.api.j
 * JD-Core Version:    0.7.0.1
 */