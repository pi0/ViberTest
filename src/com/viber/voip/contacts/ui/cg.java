package com.viber.voip.contacts.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.viber.jni.GroupUserInfo;
import com.viber.voip.messages.controller.GroupController.GroupMember;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

class cg
  implements DialogInterface.OnClickListener
{
  cg(cb paramcb, Map paramMap) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    GroupUserInfo localGroupUserInfo = ((GroupController.GroupMember[])this.a.keySet().toArray(new GroupController.GroupMember[0]))[0].a;
    cb.a(this.b, localGroupUserInfo.phoneNumber, localGroupUserInfo.clientName, ((cn)this.a.values().iterator().next()).b());
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.ui.cg
 * JD-Core Version:    0.7.0.1
 */