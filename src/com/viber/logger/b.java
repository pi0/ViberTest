package com.viber.logger;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import com.viber.voip.dc;
import com.viber.voip.dk;
import java.io.File;
import java.util.Arrays;

public class b
  implements a
{
  private a a;
  private Handler b = dc.a(dk.h);
  
  private b(Context paramContext, String paramString1, String paramString2)
  {
    b(paramString1);
    a(paramString1, paramString2);
    this.a = new e();
  }
  
  public static a a(Context paramContext, String paramString1, String paramString2)
  {
    return new b(paramContext, paramString1, paramString2);
  }
  
  private static String a(String paramString1, String paramString2)
  {
    a(paramString1);
    File[] arrayOfFile = new File[5];
    int i = 0;
    if (i < arrayOfFile.length)
    {
      StringBuilder localStringBuilder = new StringBuilder().append(paramString1).append(paramString2);
      if (i == 0) {}
      for (String str = "";; str = "_" + i)
      {
        arrayOfFile[i] = new File(str + ".clg");
        i++;
        break;
      }
    }
    boolean bool1 = arrayOfFile[4].delete();
    Log.d("Logger", arrayOfFile[4].getName() + " deleted=" + bool1);
    for (int j = -1 + arrayOfFile.length; j > 0; j--)
    {
      boolean bool2 = arrayOfFile[(j - 1)].renameTo(arrayOfFile[j]);
      Log.d("Logger", arrayOfFile[(j - 1)].getName() + " renamedTo=" + bool2 + " " + arrayOfFile[j].getName());
    }
    return arrayOfFile[0].getAbsolutePath();
  }
  
  private static void a(String paramString)
  {
    String[] arrayOfString = new File(paramString).list(new c());
    Log.d("Logger", "oldFilesNames :" + Arrays.toString(arrayOfString));
    if ((arrayOfString != null) && (arrayOfString.length > 0))
    {
      int i = arrayOfString.length;
      for (int j = 0; j < i; j++)
      {
        String str = arrayOfString[j];
        File localFile1 = new File(paramString + str);
        File localFile2 = new File(paramString + str + ".clg");
        boolean bool = localFile1.renameTo(localFile2);
        Log.d("Logger", localFile1.getName() + " renamedTo=" + localFile2.getName() + " " + bool);
      }
    }
  }
  
  private static void b(String paramString)
  {
    Log.d("Logger", "creating log dir " + paramString);
    File localFile = new File(paramString);
    if (!localFile.exists()) {
      localFile.mkdirs();
    }
  }
  
  public void a()
  {
    this.a.a();
  }
  
  public void a(long paramLong, CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    this.b.post(new d(this, paramLong, paramCharSequence1, paramCharSequence2, false));
  }
  
  public void b()
  {
    this.a.b();
  }
  
  public void b(long paramLong, CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    this.b.post(new d(this, paramLong, paramCharSequence1, paramCharSequence2, true));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.logger.b
 * JD-Core Version:    0.7.0.1
 */