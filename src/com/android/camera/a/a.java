package com.android.camera.a;

import android.content.ContentResolver;
import android.graphics.Bitmap;
import android.net.Uri;
import com.android.camera.z;

public abstract class a
  implements c
{
  protected ContentResolver a;
  protected Uri b;
  protected long c;
  protected String d;
  protected long e;
  protected final int f;
  protected String g;
  protected b h;
  private final long i;
  private String j;
  private final String k;
  private int l = -1;
  private int m = -1;
  
  protected a(b paramb, ContentResolver paramContentResolver, long paramLong1, int paramInt, Uri paramUri, String paramString1, long paramLong2, String paramString2, long paramLong3, String paramString3, String paramString4)
  {
    this.h = paramb;
    this.a = paramContentResolver;
    this.c = paramLong1;
    this.f = paramInt;
    this.b = paramUri;
    this.d = paramString1;
    this.e = paramLong2;
    this.g = paramString2;
    this.i = paramLong3;
    this.j = paramString3;
    this.k = paramString4;
  }
  
  public Bitmap a(int paramInt1, int paramInt2)
  {
    return a(paramInt1, paramInt2, true, false);
  }
  
  public Bitmap a(int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    Uri localUri = this.h.a(this.c);
    Bitmap localBitmap;
    if (localUri == null) {
      localBitmap = null;
    }
    do
    {
      return localBitmap;
      localBitmap = z.a(paramInt1, paramInt2, localUri, this.a, paramBoolean2);
    } while ((localBitmap == null) || (!paramBoolean1));
    return z.a(localBitmap, c());
  }
  
  public String a()
  {
    return this.d;
  }
  
  public long b()
  {
    return this.i;
  }
  
  public int c()
  {
    return 0;
  }
  
  public String d()
  {
    return this.j;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof e))) {
      return false;
    }
    return this.b.equals(((e)paramObject).b);
  }
  
  public int hashCode()
  {
    return this.b.hashCode();
  }
  
  public String toString()
  {
    return this.b.toString();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.android.camera.a.a
 * JD-Core Version:    0.7.0.1
 */