package com.viber.voip.user;

import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import com.viber.voip.ViberApplication;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.registration.cp;
import com.viber.voip.settings.l;
import com.viber.voip.util.b.w;
import java.util.concurrent.atomic.AtomicBoolean;

public class UserData
{
  private static String cachedDownloadId;
  private static String cachedOwnerName;
  private static Uri cachedOwnerPhotoUri;
  private static AtomicBoolean isNameUploadedToServer;
  private static AtomicBoolean isPhotoUploadedToServer;
  
  public static void clear()
  {
    ViberApplication.preferences().a("display_name").a("image_uri").a("server_uploaded").a("name_server_uploaded").a("sync_user_data");
    cachedOwnerName = null;
    cachedOwnerPhotoUri = null;
    isPhotoUploadedToServer = null;
    isNameUploadedToServer = null;
    UserDataFileKeeper.clearUserInfoDataInFile();
    notifyOwnerChange();
  }
  
  private static String getDisplayName()
  {
    return ViberApplication.preferences().b("display_name", "");
  }
  
  public static Uri getImage()
  {
    if (cachedOwnerPhotoUri == null)
    {
      String str = ViberApplication.preferences().b("image_uri", "");
      if ((str != null) && (!str.equals(""))) {
        cachedOwnerPhotoUri = Uri.parse(str);
      }
    }
    return cachedOwnerPhotoUri;
  }
  
  public static String getName()
  {
    if (cachedOwnerName == null) {
      cachedOwnerName = getDisplayName();
    }
    return cachedOwnerName;
  }
  
  public static String getViberImage()
  {
    Uri localUri = getImage();
    if (localUri != null) {
      return localUri.toString();
    }
    return "";
  }
  
  public static String getViberName()
  {
    String str = getName();
    if (str != null) {
      return str;
    }
    return "";
  }
  
  public static boolean isNeedSyncUserInfo()
  {
    try
    {
      boolean bool = ViberApplication.preferences().b("sync_user_data", false);
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public static boolean isUserNameUploadedToServer()
  {
    try
    {
      if (isNameUploadedToServer == null) {
        isNameUploadedToServer = new AtomicBoolean(ViberApplication.preferences().b("name_server_uploaded", true));
      }
      boolean bool = isNameUploadedToServer.get();
      return bool;
    }
    finally {}
  }
  
  public static boolean isUserPhotoUploadedToServer()
  {
    try
    {
      if (isPhotoUploadedToServer == null) {
        isPhotoUploadedToServer = new AtomicBoolean(ViberApplication.preferences().b("server_uploaded", true));
      }
      boolean bool = isPhotoUploadedToServer.get();
      return bool;
    }
    finally {}
  }
  
  public static void notifyOwnerChange()
  {
    dc.a(dk.d).post(new UserData.1());
  }
  
  public static void setImage(String paramString, Uri paramUri)
  {
    cachedOwnerPhotoUri = paramUri;
    cachedDownloadId = paramString;
    if (paramUri == null) {
      ViberApplication.preferences().a("image_uri", "");
    }
    for (;;)
    {
      ViberApplication.log(3, UserData.class.getName(), "setImage imageUri:" + paramUri);
      UserDataFileKeeper.saveUserInfoToFile(ViberApplication.getInstance().getRegistrationValues().f(), cachedOwnerName, cachedOwnerPhotoUri, cachedDownloadId);
      w.a(ViberApplication.getInstance()).b(paramUri);
      notifyOwnerChange();
      return;
      ViberApplication.preferences().a("image_uri", paramUri.getPath());
    }
  }
  
  public static void setName(String paramString)
  {
    cachedOwnerName = paramString;
    if (TextUtils.isEmpty(paramString)) {
      ViberApplication.preferences().a("display_name", "");
    }
    for (;;)
    {
      UserDataFileKeeper.saveUserInfoToFile(ViberApplication.getInstance().getRegistrationValues().f(), cachedOwnerName, cachedOwnerPhotoUri, cachedDownloadId);
      notifyOwnerChange();
      return;
      ViberApplication.preferences().a("display_name", paramString);
    }
  }
  
  public static void setNameUploadedToServer(boolean paramBoolean)
  {
    if (isNameUploadedToServer != null) {
      isNameUploadedToServer.set(paramBoolean);
    }
    while (isNameUploadedToServer == null)
    {
      ViberApplication.preferences().a("name_server_uploaded");
      return;
      isNameUploadedToServer = new AtomicBoolean(paramBoolean);
    }
    ViberApplication.preferences().a("name_server_uploaded", paramBoolean);
  }
  
  public static void setNeedSyncUserInfo(boolean paramBoolean)
  {
    ViberApplication.preferences().a("sync_user_data", paramBoolean);
  }
  
  public static void setPhotoUploadedToServer(boolean paramBoolean)
  {
    if (isPhotoUploadedToServer != null) {
      isPhotoUploadedToServer.set(paramBoolean);
    }
    while (isPhotoUploadedToServer == null)
    {
      ViberApplication.preferences().a("server_uploaded");
      return;
      isPhotoUploadedToServer = new AtomicBoolean(paramBoolean);
    }
    ViberApplication.preferences().a("server_uploaded", paramBoolean);
  }
  
  public static void setUserData(String paramString, Uri paramUri)
  {
    cachedOwnerPhotoUri = paramUri;
    cachedOwnerName = paramString;
    ViberApplication.preferences().a("display_name", paramString);
    if (paramUri == null)
    {
      ViberApplication.preferences().a("image_uri");
      return;
    }
    ViberApplication.preferences().a("image_uri", paramUri.getPath());
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.user.UserData
 * JD-Core Version:    0.7.0.1
 */