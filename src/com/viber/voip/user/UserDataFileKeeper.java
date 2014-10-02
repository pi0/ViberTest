package com.viber.voip.user;

import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.w;
import java.io.File;
import org.json.JSONObject;

public class UserDataFileKeeper
{
  public static void clearUserInfoDataInFile()
  {
    boolean bool = new File(w.n).delete();
    log("clearUserInfoDataInFile result = " + bool);
  }
  
  public static String getJSONWithUserData(String paramString1, String paramString2, Uri paramUri, String paramString3)
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.accumulate("canonized_number", paramString1);
    localJSONObject.accumulate("user_name", paramString2);
    localJSONObject.accumulate("photo_uri", paramUri);
    localJSONObject.accumulate("download_id", paramString3);
    return localJSONObject.toString();
  }
  
  private static void log(String paramString) {}
  
  public static void obtainLocalUserInfo(UserDataFileKeeper.RecoverReply paramRecoverReply)
  {
    dc.a(dk.h).post(new UserDataFileKeeper.2(paramRecoverReply));
  }
  
  public static void parseUserData(String paramString, UserDataFileKeeper.RecoverReply paramRecoverReply)
  {
    log("parseUserData jsonString = " + paramString);
    JSONObject localJSONObject = new JSONObject(paramString);
    String str1 = localJSONObject.getString("canonized_number");
    String str2 = localJSONObject.getString("user_name");
    String str3;
    String str4;
    if (localJSONObject.has("photo_uri"))
    {
      str3 = localJSONObject.getString("photo_uri");
      if (!localJSONObject.has("download_id")) {
        break label164;
      }
      str4 = localJSONObject.getString("download_id");
      label80:
      log("onRecoverReply number = " + str1 + ", name = " + str2 + ", uriStr = " + str3 + ", downloadId = " + str4);
      if (!TextUtils.isEmpty(str3)) {
        break label171;
      }
    }
    label164:
    label171:
    for (Uri localUri = null;; localUri = Uri.parse(str3))
    {
      paramRecoverReply.onRecoverReply(str1, str2, localUri, str4);
      return;
      str3 = "";
      break;
      str4 = "";
      break label80;
    }
  }
  
  public static void saveUserInfoToFile(String paramString1, String paramString2, Uri paramUri, String paramString3)
  {
    saveUserInfoToFile(paramString1, paramString2, paramUri, paramString3, null);
  }
  
  public static void saveUserInfoToFile(String paramString1, String paramString2, Uri paramUri, String paramString3, Runnable paramRunnable)
  {
    dc.a(dk.h).post(new UserDataFileKeeper.1(paramString1, paramString2, paramUri, paramString3, paramRunnable));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.user.UserDataFileKeeper
 * JD-Core Version:    0.7.0.1
 */