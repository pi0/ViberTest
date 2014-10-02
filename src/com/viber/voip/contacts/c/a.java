package com.viber.voip.contacts.c;

import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import com.viber.jni.CGetUserDetails;
import com.viber.jni.GroupUserInfo;
import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.handling.SyncUserInfoManager.GetUnknownUserInfoListener;
import com.viber.voip.contacts.handling.SyncUserInfoManager.UserInfo;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.messages.controller.dn;
import com.viber.voip.messages.i;
import com.viber.voip.registration.cp;
import com.viber.voip.user.UserData;
import com.viber.voip.user.UserDataFileKeeper;
import com.viber.voip.w;
import java.io.File;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;

public class a
{
  private static final String a = a.class.getSimpleName();
  private static Map<String, SyncUserInfoManager.UserInfo> b = Collections.synchronizedMap(new HashMap());
  private static Map<String, Set<SyncUserInfoManager.GetUnknownUserInfoListener>> c = Collections.synchronizedMap(new HashMap());
  private static Queue<s> d = new LinkedList();
  private static boolean e;
  
  public static Uri a(String paramString)
  {
    return Uri.fromFile(new File(w.A + paramString + ".jpg"));
  }
  
  public static Uri a(String paramString, boolean paramBoolean)
  {
    if (TextUtils.isEmpty(paramString)) {}
    File localFile;
    do
    {
      return null;
      localFile = new File(w.A + paramString + ".jpg");
    } while ((!localFile.exists()) && (localFile.length() <= 0L));
    return Uri.fromFile(localFile);
  }
  
  public static void a(CGetUserDetails paramCGetUserDetails, v paramv)
  {
    UserData.setName(paramCGetUserDetails.Name);
    if ((!TextUtils.isEmpty(paramCGetUserDetails.Name)) || (!TextUtils.isEmpty(paramCGetUserDetails.DownloadID)))
    {
      c("checkIsUserNeedSetInfo. user has already set info.");
      if (TextUtils.isEmpty(paramCGetUserDetails.DownloadID))
      {
        c("checkIsUserNeedSetInfo. save empty photo to the preferences");
        UserData.setImage(null, null);
        if (paramv != null) {
          paramv.a(q.b);
        }
      }
    }
    do
    {
      return;
      if (d(paramCGetUserDetails.DownloadID))
      {
        c("checkIsUserNeedSetInfo. save info to the preferences");
        UserData.setImage(paramCGetUserDetails.DownloadID, a(paramCGetUserDetails.DownloadID));
        break;
      }
      c("checkIsUserNeedSetInfo. download photo and save info to the preferences");
      c(paramCGetUserDetails.DownloadID, true, new k(paramCGetUserDetails));
      break;
      c("checkIsUserNeedSetInfo. user photoId is empty! show ContactDetails Activity.");
      UserData.setImage(null, null);
    } while (paramv == null);
    paramv.a(q.a);
  }
  
  public static void a(v paramv)
  {
    try
    {
      String str = ViberApplication.getInstance().getRegistrationValues().f();
      c("checkIsUserNeedSetInfo ownNumber = " + str);
      UserDataFileKeeper.obtainLocalUserInfo(new h(paramv, str));
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  private static void a(String paramString, r paramr)
  {
    c(paramString, false, paramr);
  }
  
  public static void a(String paramString, v paramv)
  {
    ViberApplication.getInstance().getMessagesManager().e().a(new String[] { paramString }, new j(paramv));
  }
  
  public static void a(Map<String, String> paramMap, u paramu)
  {
    dc.a(dk.h).post(new c(paramMap, paramu));
  }
  
  public static void a(GroupUserInfo[] paramArrayOfGroupUserInfo)
  {
    c("addPhotoToParticipants number = " + Arrays.toString(paramArrayOfGroupUserInfo));
    if ((!com.viber.voip.messages.extras.image.h.a()) || (paramArrayOfGroupUserInfo == null)) {
      c("Can't sync photos without SD card!");
    }
    for (;;)
    {
      return;
      int i = paramArrayOfGroupUserInfo.length;
      for (int j = 0; j < i; j++)
      {
        GroupUserInfo localGroupUserInfo = paramArrayOfGroupUserInfo[j];
        b(localGroupUserInfo.downloadID, localGroupUserInfo.phoneNumber, new l(localGroupUserInfo));
      }
    }
  }
  
  public static void a(String[] paramArrayOfString)
  {
    c("addPhotoToParticipants number = " + Arrays.toString(paramArrayOfString));
    if (!com.viber.voip.messages.extras.image.h.a())
    {
      c("Can't sync photos without SD card!");
      return;
    }
    dc.a(dk.h).post(new m(paramArrayOfString));
  }
  
  public static void b(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    c("try to recovery image with recoveryId = " + paramString);
    a(paramString, new f());
  }
  
  private static void b(String paramString1, String paramString2, t paramt)
  {
    if (TextUtils.isEmpty(paramString1))
    {
      paramt.a(paramString2, null, paramString1);
      return;
    }
    if (d(paramString1))
    {
      paramt.a(paramString2, a(paramString1), paramString1);
      return;
    }
    a(paramString1, new g(paramt, paramString2, paramString1));
  }
  
  public static void c(String paramString)
  {
    ViberApplication.log(4, a, paramString);
  }
  
  private static void c(String paramString, boolean paramBoolean, r paramr)
  {
    if (paramString == null) {
      return;
    }
    c("SYNC Queue photoId = " + paramString + " is downloading = " + e + " downloadPhotoIdList.size = " + d.size());
    for (;;)
    {
      s locals;
      synchronized (d)
      {
        locals = new s(paramString, paramr);
        if (!d.contains(locals))
        {
          c("SYNC Queue addDownloadTask " + locals);
          d.add(locals);
          b localb = new b(paramBoolean);
          if (!e)
          {
            e = true;
            d(paramString, paramBoolean, localb);
          }
          return;
        }
      }
      c("SYNC Queue contains such " + locals);
    }
  }
  
  private static void d(String paramString, boolean paramBoolean, r paramr)
  {
    c("downloadPhoto with photoId = " + paramString);
    com.viber.voip.util.upload.s.a(paramString, paramBoolean, new e(paramr));
  }
  
  private static boolean d(String paramString)
  {
    File localFile = new File(w.A + paramString + ".jpg");
    if ((localFile.exists()) && (localFile.length() > 0L)) {}
    for (boolean bool = true;; bool = false)
    {
      c("is file '" + paramString + "' already downloaded = " + bool);
      return bool;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.c.a
 * JD-Core Version:    0.7.0.1
 */