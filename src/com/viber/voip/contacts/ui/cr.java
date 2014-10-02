package com.viber.voip.contacts.ui;

import android.app.ProgressDialog;
import android.text.TextUtils;
import com.viber.jni.GroupUserInfo;
import com.viber.jni.PhoneControllerListener;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.controller.PhoneController;
import com.viber.jni.publicgroup.PublicGroupController;
import com.viber.jni.publicgroup.PublicGroupControllerDelegate.InviteSend;
import com.viber.jni.publicgroup.PublicGroupInviteSendListener;
import com.viber.voip.ViberApplication;
import com.viber.voip.dk;
import com.viber.voip.messages.controller.GroupController.GroupMember;
import com.viber.voip.ui.aa;
import com.viber.voip.util.at;
import com.viber.voip.util.gj;
import java.util.Map;

public class cr
  extends ap
  implements PublicGroupControllerDelegate.InviteSend
{
  private int h;
  private GroupController.GroupMember[] i;
  private ProgressDialog j;
  
  protected void f()
  {
    be localbe = this.f;
    int k = this.d;
    if (!TextUtils.isEmpty(this.c.a())) {}
    for (boolean bool = true;; bool = false)
    {
      localbe.a(3, k, true, bool, false);
      return;
    }
  }
  
  protected boolean h()
  {
    return false;
  }
  
  protected cb j()
  {
    return new ct(getActivity(), this);
  }
  
  protected void k()
  {
    if ((getActivity() != null) && (this.c != null)) {
      this.c.g();
    }
    this.i = this.a.a(c());
    if ((this.i.length == 0) || (this.e.a(true))) {
      return;
    }
    String[] arrayOfString = new String[this.i.length];
    for (int k = 0; k < this.i.length; k++) {
      arrayOfString[k] = this.i[k].a.phoneNumber;
    }
    PhoneControllerWrapper localPhoneControllerWrapper = ViberApplication.getInstance().getPhoneController(true);
    this.h = localPhoneControllerWrapper.generateSequence();
    localPhoneControllerWrapper.getPublicGroupController().handleSendPublicGroupInvite(this.h, arrayOfString, c());
    this.j = ProgressDialog.show(getActivity(), getString(2131494580), getString(2131494580), true, false);
  }
  
  public void onPause()
  {
    super.onPause();
    ViberApplication.getInstance().getPhoneController(true).getDelegatesManager().getPublicGroupInviteSendListener().removeDelegate(this);
  }
  
  public void onResume()
  {
    super.onResume();
    ViberApplication.getInstance().getPhoneController(true).getDelegatesManager().getPublicGroupInviteSendListener().registerDelegate(this, dk.a.a());
  }
  
  public void onSendPublicGroupInviteReply(int paramInt1, long paramLong, int paramInt2, Map<String, Integer> paramMap)
  {
    if (paramInt1 != this.h) {
      return;
    }
    this.j.cancel();
    String str3;
    GroupUserInfo localGroupUserInfo;
    String str4;
    String str2;
    String str1;
    if (paramInt2 == 0)
    {
      str3 = getString(2131494581);
      if (1 == this.i.length)
      {
        localGroupUserInfo = this.i[0].a;
        Object[] arrayOfObject2 = new Object[2];
        if (gj.c(localGroupUserInfo.clientName))
        {
          str4 = localGroupUserInfo.phoneNumber;
          arrayOfObject2[0] = str4;
          arrayOfObject2[1] = d();
          str2 = getString(2131494582, arrayOfObject2);
          str1 = str3;
        }
      }
    }
    for (;;)
    {
      at.a(getActivity(), str1, str2, new cs(this));
      return;
      str4 = localGroupUserInfo.clientName;
      break;
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = Integer.valueOf(this.i.length);
      arrayOfObject1[1] = d();
      str2 = getString(2131494583, arrayOfObject1);
      str1 = str3;
      continue;
      str1 = getString(2131494584);
      str2 = getString(2131494585);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.ui.cr
 * JD-Core Version:    0.7.0.1
 */