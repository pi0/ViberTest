package com.viber.voip.stickers.b;

import android.util.Log;
import com.viber.voip.stickers.an;
import com.viber.voip.util.upload.d;
import java.io.File;

public class g
  implements Runnable
{
  private static final String a = h.class.getSimpleName();
  private d b;
  private int c;
  private String d;
  
  public g(int paramInt, boolean paramBoolean)
  {
    String str1;
    if (paramBoolean)
    {
      str1 = h.c(paramInt, an.m);
      this.c = paramInt;
      if (!paramBoolean) {
        break label109;
      }
    }
    label109:
    for (String str2 = com.viber.voip.stickers.c.e.e(paramInt);; str2 = com.viber.voip.stickers.c.e.d(paramInt))
    {
      this.d = str2;
      this.b = new d(str1, this.d, this.d + ".tmp");
      a("download package icon from " + str1);
      return;
      str1 = h.b(paramInt, an.l);
      break;
    }
  }
  
  protected static void a(String paramString) {}
  
  public void a()
  {
    boolean bool = true;
    try
    {
      new File(this.d).getParentFile().mkdirs();
      this.b.d();
      return;
    }
    catch (com.viber.voip.util.upload.e locale)
    {
      bool = false;
      a("ERROR WHILE ICON FOR PACKAGE " + this.c + " WAS DOWNLOADED: " + Log.getStackTraceString(locale));
      this.b = null;
      a(false);
      return;
    }
    finally
    {
      this.b = null;
      a(bool);
    }
  }
  
  public void a(boolean paramBoolean) {}
  
  public void run()
  {
    a();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.stickers.b.g
 * JD-Core Version:    0.7.0.1
 */