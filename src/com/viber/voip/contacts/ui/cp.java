package com.viber.voip.contacts.ui;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import com.actionbarsherlock.view.MenuItem;
import com.viber.jni.GroupUserInfo;
import com.viber.voip.messages.controller.GroupController.GroupMember;
import com.viber.voip.util.gj;
import java.util.ArrayList;
import java.util.Arrays;

public class cp
  extends ap
{
  private boolean h;
  
  private void a(String paramString1, String paramString2)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(getActivity());
    localBuilder.setTitle(paramString1).setMessage(paramString2);
    localBuilder.setPositiveButton(2131493557, new cq(this));
    localBuilder.setNegativeButton(2131493558, null);
    localBuilder.create().show();
  }
  
  protected void a(int paramInt1, int paramInt2)
  {
    if ((this.g != null) && (!this.g.isVisible())) {
      this.g.setVisible(true);
    }
  }
  
  protected boolean i()
  {
    return this.h;
  }
  
  protected cb j()
  {
    return new ct(getActivity(), this);
  }
  
  protected void k()
  {
    if (this.h)
    {
      Intent localIntent = new Intent();
      localIntent.putParcelableArrayListExtra("added_participants", new ArrayList(Arrays.asList(this.a.e())));
      localIntent.putParcelableArrayListExtra("removed_participants", new ArrayList(Arrays.asList(this.a.f())));
      getActivity().setResult(-1, localIntent);
      getActivity().finish();
    }
    GroupController.GroupMember[] arrayOfGroupMember;
    do
    {
      return;
      arrayOfGroupMember = this.a.a(c());
    } while (arrayOfGroupMember.length == 0);
    String str3;
    if (arrayOfGroupMember.length > 1)
    {
      str1 = getString(2131494564);
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(arrayOfGroupMember.length);
      str3 = getString(2131494566, arrayOfObject2);
      a(str1, str3);
      return;
    }
    String str1 = getString(2131494563);
    GroupUserInfo localGroupUserInfo = arrayOfGroupMember[0].a;
    Object[] arrayOfObject1 = new Object[1];
    if (gj.c(localGroupUserInfo.clientName)) {}
    for (String str2 = localGroupUserInfo.phoneNumber;; str2 = localGroupUserInfo.clientName)
    {
      arrayOfObject1[0] = str2;
      str3 = getString(2131494565, arrayOfObject1);
      break;
    }
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.h = "com.viber.voip.action.PUBLIC_GROUP_ADD_PARTICIPANTS".equals(getActivity().getIntent().getAction());
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.ui.cp
 * JD-Core Version:    0.7.0.1
 */