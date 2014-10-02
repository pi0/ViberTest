package com.viber.voip.util;

import android.os.Handler;
import com.viber.voip.ViberApplication;
import java.io.File;

public class be
  extends bi
{
  private static final String a = be.class.getSimpleName();
  
  private static void c(String paramString)
  {
    ViberApplication.log(3, a, paramString);
  }
  
  public void a(Handler paramHandler, String paramString, Runnable paramRunnable)
  {
    paramHandler.postDelayed(new bf(this, paramString, paramRunnable), 1000L);
  }
  
  protected boolean a(File paramFile)
  {
    if (paramFile.length() > 0L) {}
    long l;
    do
    {
      return false;
      l = System.currentTimeMillis() - paramFile.lastModified();
      c("File " + paramFile.getPath() + " age:" + (float)l / 3600000.0F + " hours");
    } while (l <= 3600000L);
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.be
 * JD-Core Version:    0.7.0.1
 */