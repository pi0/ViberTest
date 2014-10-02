package com.viber.voip.backgrounds;

import android.net.Uri;
import com.viber.voip.backgrounds.b.a;
import com.viber.voip.w;
import java.io.File;
import java.util.Formatter;
import java.util.Locale;

public class q
  implements r, Comparable<q>
{
  public int a;
  public int b;
  public int c;
  public int d;
  protected boolean e;
  protected String f;
  public Uri g;
  public Uri h;
  public Uri i;
  private File k;
  
  public q(int paramInt) {}
  
  public q(int paramInt1, int paramInt2)
  {
    this(paramInt1, paramInt2, false);
  }
  
  public q(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    this.a = paramInt1;
    this.f = a(paramInt1);
    this.e = paramBoolean;
    this.d = paramInt2;
    int j = a.a(paramInt1);
    if (j != paramInt2) {}
    for (;;)
    {
      String str1 = w.B + paramInt2 + "/";
      this.k = new File(str1);
      StringBuilder localStringBuilder = new StringBuilder().append(str1).append(j).append(this.f);
      if (this.e) {}
      for (String str2 = "_tail.jpg";; str2 = "_orig.jpg")
      {
        this.g = Uri.fromFile(new File(str2));
        c();
        return;
      }
      paramInt2 = j;
    }
  }
  
  private String a(String paramString, int paramInt1, int paramInt2)
  {
    return this.k.getAbsolutePath() + "/" + ".thumbnails" + "/" + j + this.f + "_scaled" + paramString + "_" + paramInt1 + "x" + paramInt2 + ".png";
  }
  
  public int a(q paramq)
  {
    return this.a - paramq.a;
  }
  
  public Uri a()
  {
    return this.g;
  }
  
  public Uri a(boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder().append(w.z).append(j).append(this.f).append("_cr");
    String str;
    if (this.e) {
      str = "_tail.jpg";
    }
    for (;;)
    {
      return Uri.fromFile(new File(str));
      if (paramBoolean) {
        str = "_land.jpg";
      } else {
        str = "_port.jpg";
      }
    }
  }
  
  public String a(int paramInt)
  {
    Formatter localFormatter = new Formatter();
    Locale localLocale = Locale.US;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    String str = localFormatter.format(localLocale, "%08d", arrayOfObject).toString();
    localFormatter.close();
    return str;
  }
  
  public boolean b()
  {
    return this.e;
  }
  
  public void c()
  {
    this.b = n.f;
    this.c = n.f;
    String str1;
    if (this.e)
    {
      str1 = "_tail";
      this.h = Uri.fromFile(new File(a(str1, this.b / 2, this.c / 2)));
      if (!this.e) {
        break label99;
      }
    }
    label99:
    for (String str2 = "_tail";; str2 = "_thumb")
    {
      this.i = Uri.fromFile(new File(a(str2, this.b, this.c)));
      return;
      str1 = "_thumb";
      break;
    }
  }
  
  public void d()
  {
    new File(this.k.getAbsolutePath() + "/" + ".thumbnails" + "/").mkdirs();
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    q localq;
    do
    {
      return true;
      if (paramObject == null) {
        return false;
      }
      if (getClass() != paramObject.getClass()) {
        return false;
      }
      localq = (q)paramObject;
    } while (this.a == localq.a);
    return false;
  }
  
  public int hashCode()
  {
    return 31 + this.a;
  }
  
  public String toString()
  {
    return "DefaultBackground{ id=" + this.a + ", packageId=" + this.d + ", origPath='" + this.g + '\'' + ", thumbPath=" + this.h + ", thumbHeight=" + this.c + ", thumbWidth=" + this.b + ", isTile=" + this.e + '}';
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.backgrounds.q
 * JD-Core Version:    0.7.0.1
 */