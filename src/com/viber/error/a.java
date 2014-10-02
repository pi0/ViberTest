package com.viber.error;

import com.viber.error.report.d;
import com.viber.voip.ViberApplication;
import com.viber.voip.util.fx;
import java.io.PrintWriter;
import java.io.StringWriter;

public class a
  implements Thread.UncaughtExceptionHandler
{
  private static a b;
  private Thread.UncaughtExceptionHandler a;
  
  public static a a()
  {
    if (b == null) {
      b = new a();
    }
    return b;
  }
  
  private void a(int paramInt)
  {
    fx.a(ViberApplication.getInstance(), paramInt);
  }
  
  public void a(String paramString, int paramInt)
  {
    if (-123 != paramInt)
    {
      RuntimeException localRuntimeException = new RuntimeException("crashed here (native trace should follow after the Java trace)");
      localRuntimeException.printStackTrace();
      StringWriter localStringWriter = new StringWriter();
      localRuntimeException.printStackTrace(new PrintWriter(localStringWriter));
      String str1 = localStringWriter.toString();
      String str2 = str1 + paramString;
      c().a(str2);
    }
    a(10);
  }
  
  public void b()
  {
    this.a = Thread.getDefaultUncaughtExceptionHandler();
    Thread.setDefaultUncaughtExceptionHandler(this);
    d.a().a(ViberApplication.getInstance());
  }
  
  public d c()
  {
    return d.a();
  }
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    d.a().a(paramThread, paramThrowable);
    a(3);
    this.a.uncaughtException(paramThread, paramThrowable);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.error.a
 * JD-Core Version:    0.7.0.1
 */