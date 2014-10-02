package com.viber.voip.user;

import android.net.Uri;
import android.os.Environment;
import android.util.Log;
import com.viber.voip.w;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import org.json.JSONException;

final class UserDataFileKeeper$1
  implements Runnable
{
  UserDataFileKeeper$1(String paramString1, String paramString2, Uri paramUri, String paramString3, Runnable paramRunnable) {}
  
  public void run()
  {
    UserDataFileKeeper.access$000("saveUserInfoToFile canonizedNumber = " + this.val$canonizedNumber + ", name = " + this.val$name + ", photoUri = " + this.val$photoUri + ", downloadId = " + this.val$downloadId);
    File localFile;
    if (Environment.getExternalStorageState().equals("mounted")) {
      localFile = new File(w.n);
    }
    try
    {
      if (!localFile.exists()) {
        localFile.createNewFile();
      }
      FileOutputStream localFileOutputStream = new FileOutputStream(localFile);
      localFileOutputStream.write(UserDataFileKeeper.getJSONWithUserData(this.val$canonizedNumber, this.val$name, this.val$photoUri, this.val$downloadId).getBytes());
      localFileOutputStream.flush();
      localFileOutputStream.close();
      UserDataFileKeeper.access$000("saveNumberToFile - OK");
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        UserDataFileKeeper.access$000("saveUserInfoToFile:" + Log.getStackTraceString(localIOException));
      }
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        UserDataFileKeeper.access$000("saveUserInfoToFile:" + Log.getStackTraceString(localJSONException));
      }
    }
    if (this.val$callback != null) {
      this.val$callback.run();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.user.UserDataFileKeeper.1
 * JD-Core Version:    0.7.0.1
 */