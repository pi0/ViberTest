package com.viber.voip.user;

import android.os.Environment;
import android.util.Log;
import com.viber.voip.w;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import org.json.JSONException;

final class UserDataFileKeeper$2
  implements Runnable
{
  UserDataFileKeeper$2(UserDataFileKeeper.RecoverReply paramRecoverReply) {}
  
  public void run()
  {
    UserDataFileKeeper.access$000("obtainLocalUserInfo");
    if (Environment.getExternalStorageState().equals("mounted"))
    {
      File localFile = new File(w.n);
      try
      {
        FileInputStream localFileInputStream;
        InputStreamReader localInputStreamReader;
        StringBuilder localStringBuilder;
        if (localFile.exists())
        {
          localFileInputStream = new FileInputStream(localFile);
          localInputStreamReader = new InputStreamReader(localFileInputStream);
          localStringBuilder = new StringBuilder();
          char[] arrayOfChar = new char[2048];
          for (;;)
          {
            int i = localInputStreamReader.read(arrayOfChar);
            if (i == -1) {
              break;
            }
            localStringBuilder.append(arrayOfChar, 0, i);
          }
        }
        UserDataFileKeeper.access$000("obtainLocalUserInfo no such file!");
      }
      catch (IOException localIOException)
      {
        UserDataFileKeeper.access$000("obtainLocalUserInfo:" + Log.getStackTraceString(localIOException));
        this.val$recoverReply.onError();
        return;
        UserDataFileKeeper.parseUserData(localStringBuilder.toString(), this.val$recoverReply);
        localFileInputStream.close();
        localInputStreamReader.close();
        return;
      }
      catch (JSONException localJSONException)
      {
        UserDataFileKeeper.access$000("obtainLocalUserInfo:" + Log.getStackTraceString(localJSONException));
        this.val$recoverReply.onError();
        return;
      }
      this.val$recoverReply.onError();
      return;
    }
    UserDataFileKeeper.access$000("obtainLocalUserInfo NO SD CARD!");
    this.val$recoverReply.onError();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.user.UserDataFileKeeper.2
 * JD-Core Version:    0.7.0.1
 */