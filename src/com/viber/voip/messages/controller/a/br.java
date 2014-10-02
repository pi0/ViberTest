package com.viber.voip.messages.controller.a;

import android.content.Context;
import android.net.Uri;
import com.viber.jni.PhoneControllerDelegate.ViberConnectionState;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.controller.dn;
import com.viber.voip.messages.controller.do;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.messages.extras.image.m;
import com.viber.voip.registration.ActivationController;
import com.viber.voip.registration.cp;
import com.viber.voip.settings.l;
import com.viber.voip.user.UserData;
import com.viber.voip.util.upload.ac;
import java.util.ArrayList;
import java.util.List;

public class br
  extends a
  implements dn
{
  private Context c;
  
  public br(Context paramContext)
  {
    this.c = paramContext;
  }
  
  private void a(Uri paramUri, bx parambx)
  {
    com.viber.voip.messages.extras.image.a locala = m.a(this.c, paramUri, 222);
    if (locala == null)
    {
      parambx.a(null);
      return;
    }
    ac.a(locala.a, paramUri, new bu(this, parambx, paramUri));
  }
  
  private void b(String paramString)
  {
    ViberApplication.log(3, "UserDataDelegate", paramString);
  }
  
  public void a(Uri paramUri)
  {
    b("doUpdateUserPhoto New: uri = " + paramUri);
    Uri localUri = UserData.getImage();
    UserData.setNeedSyncUserInfo(false);
    UserData.setPhotoUploadedToServer(false);
    UserData.setImage("", paramUri);
    if ((localUri != null) && (!localUri.equals(paramUri))) {
      h.c(ViberApplication.getInstance(), localUri);
    }
    if (paramUri != null)
    {
      b("doUpdateUserPhoto user image was changed we need to upload it to server!");
      a(paramUri, new bt(this));
    }
    while (paramUri != null) {
      return;
    }
    this.b.handleUpdateUserPhoto(0L);
  }
  
  public void a(String paramString)
  {
    b("doUpdateUserName newName = " + paramString);
    UserData.setName(paramString);
    UserData.setNameUploadedToServer(false);
    UserData.setNeedSyncUserInfo(false);
    this.b.handleUpdateUserName(paramString);
  }
  
  public void a(String[] paramArrayOfString, do paramdo)
  {
    ArrayList localArrayList = new ArrayList();
    for (int i = 0; i < paramArrayOfString.length; i++) {
      if (paramArrayOfString[i] != null) {
        localArrayList.add(paramArrayOfString[i]);
      }
    }
    String[] arrayOfString = (String[])localArrayList.toArray(new String[0]);
    new bv(this, paramdo, arrayOfString, this.b);
    ViberApplication.getInstance().getPhoneController(true).handleGetUsersDetail(arrayOfString);
  }
  
  public void onServiceStateChanged(int paramInt)
  {
    if (paramInt == PhoneControllerDelegate.ViberConnectionState.SERVICE_CONNECTED.ordinal())
    {
      boolean bool = ViberApplication.preferences().b("should_deactivate", false);
      b("checkShouldDeactivate " + bool);
      if (!bool) {
        break label57;
      }
      ActivationController.deActivate(ViberApplication.getInstance(), true);
    }
    label57:
    do
    {
      return;
      b("onServiceStateChanged state:" + paramInt);
      if (!UserData.isUserPhotoUploadedToServer()) {
        a(UserData.getImage());
      }
      if (!UserData.isUserNameUploadedToServer()) {
        a(UserData.getName());
      }
    } while (!UserData.isNeedSyncUserInfo());
    b("sync user info");
    com.viber.voip.contacts.c.a.a(ViberApplication.getInstance().getRegistrationValues().f(), new bs(this));
  }
  
  public void onUpdateUserName(int paramInt)
  {
    b("doUpdateUserName.onUpdateUserName status:" + paramInt);
    if (paramInt == 1) {
      UserData.setNameUploadedToServer(true);
    }
  }
  
  public void onUpdateUserPhoto(int paramInt)
  {
    b("doUpdateUserPhoto onUpdateUserPhoto status: " + paramInt);
    if (paramInt == 1)
    {
      b("doUpdateUserPhoto deleting old file from sd...");
      UserData.setPhotoUploadedToServer(true);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.br
 * JD-Core Version:    0.7.0.1
 */