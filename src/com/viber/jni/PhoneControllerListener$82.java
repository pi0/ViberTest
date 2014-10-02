package com.viber.jni;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;
import java.util.Map;

class PhoneControllerListener$82
  implements ControllerListener.ControllerListenerAction<PhoneControllerDelegate>
{
  PhoneControllerListener$82(PhoneControllerListener paramPhoneControllerListener, int paramInt1, int paramInt2, boolean paramBoolean, long paramLong, Map paramMap, int paramInt3) {}
  
  public void execute(PhoneControllerDelegate paramPhoneControllerDelegate)
  {
    paramPhoneControllerDelegate.onGetPublicGroupLikes(this.val$seq, this.val$chunkNumber, this.val$isLast, this.val$groupID, this.val$likes, this.val$status);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.PhoneControllerListener.82
 * JD-Core Version:    0.7.0.1
 */