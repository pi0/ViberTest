package com.viber.voip.backgrounds.b;

import android.os.Handler;
import android.util.SparseArray;
import com.viber.voip.backgrounds.m;
import com.viber.voip.backgrounds.o;
import com.viber.voip.backgrounds.q;
import com.viber.voip.bc;
import com.viber.voip.bd;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Locale;
import java.util.concurrent.PriorityBlockingQueue;

public class a
{
  private static final String a = a.class.getSimpleName();
  private com.viber.voip.backgrounds.a b;
  private m c;
  private SparseArray<g> d = new SparseArray();
  private SparseArray<e> e = new SparseArray();
  private Handler f;
  
  public a(Handler paramHandler, com.viber.voip.backgrounds.a parama, m paramm)
  {
    this.f = paramHandler;
    this.b = parama;
    this.c = paramm;
    new PriorityBlockingQueue(10, new b(this));
  }
  
  public static int a(int paramInt)
  {
    return paramInt - paramInt % 100;
  }
  
  public static String a(int paramInt1, int paramInt2)
  {
    int i = a(paramInt1);
    String str1 = bc.b().E.replaceAll("%RES%", Integer.toString(paramInt2)).replaceAll("%PKG%", Integer.toString(i));
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramInt1 >= 10000129) {}
    for (String str2 = "t";; str2 = "") {
      return str1.replaceAll("%ID%", str2 + b(paramInt1));
    }
  }
  
  static void a(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    byte[] arrayOfByte = new byte[4096];
    for (int i = paramInputStream.read(arrayOfByte); i != -1; i = paramInputStream.read(arrayOfByte))
    {
      if (i == 0) {}
      paramOutputStream.write(arrayOfByte, 0, i);
    }
  }
  
  static void a(String paramString, InputStream paramInputStream)
  {
    String str = paramString + ".tmp";
    File localFile = new File(str);
    FileOutputStream localFileOutputStream = new FileOutputStream(str);
    a(paramInputStream, localFileOutputStream);
    localFileOutputStream.close();
    localFile.renameTo(new File(paramString));
  }
  
  private static String b(int paramInt)
  {
    Locale localLocale = Locale.US;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    return String.format(localLocale, "%08d", arrayOfObject);
  }
  
  public static String b(int paramInt1, int paramInt2)
  {
    return bc.b().D.replaceAll("%RES%", Integer.toString(paramInt2)).replaceAll("%PKG%", Integer.toString(paramInt1));
  }
  
  public void a()
  {
    int i = 0;
    try
    {
      while (i < this.d.size())
      {
        ((g)this.d.valueAt(i)).b();
        i++;
      }
      this.d.clear();
      return;
    }
    finally {}
  }
  
  public void a(q paramq)
  {
    try
    {
      if (this.e.get(paramq.a) == null)
      {
        d locald = new d(this, paramq, this.b, this.c);
        this.e.put(paramq.a, locald);
        this.f.post(locald);
      }
      return;
    }
    finally {}
  }
  
  public boolean a(o paramo)
  {
    try
    {
      if (this.d.get(paramo.a) == null)
      {
        c localc = new c(this, paramo, this.b, this.c);
        this.d.put(paramo.a, localc);
        this.f.post(localc);
        return true;
      }
      return false;
    }
    finally {}
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.backgrounds.b.a
 * JD-Core Version:    0.7.0.1
 */