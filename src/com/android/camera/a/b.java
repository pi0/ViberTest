package com.android.camera.a;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import com.android.camera.z;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public abstract class b
  implements d
{
  private static final Pattern h = Pattern.compile("(.*)/\\d+");
  protected ContentResolver a;
  protected int b;
  protected Uri c;
  protected Cursor d;
  protected String e;
  protected boolean f = false;
  private final l<Integer, a> g = new l(512);
  
  public b(ContentResolver paramContentResolver, Uri paramUri, int paramInt, String paramString)
  {
    this.b = paramInt;
    this.c = paramUri;
    this.e = paramString;
    this.a = paramContentResolver;
    this.d = d();
    if (this.d == null) {
      Log.w("BaseImageList", "createCursor returns null.");
    }
    this.g.a();
  }
  
  private static String b(Uri paramUri)
  {
    String str = paramUri.getPath();
    Matcher localMatcher = h.matcher(str);
    if (localMatcher.matches()) {
      str = localMatcher.group(1);
    }
    return str;
  }
  
  private boolean c(Uri paramUri)
  {
    Uri localUri = this.c;
    return (z.a(localUri.getScheme(), paramUri.getScheme())) && (z.a(localUri.getHost(), paramUri.getHost())) && (z.a(localUri.getAuthority(), paramUri.getAuthority())) && (z.a(localUri.getPath(), b(paramUri)));
  }
  
  private Cursor g()
  {
    try
    {
      if (this.d == null) {
        return null;
      }
      if (this.f)
      {
        this.d.requery();
        this.f = false;
      }
      Cursor localCursor = this.d;
      return localCursor;
    }
    finally {}
  }
  
  public Uri a(long paramLong)
  {
    try
    {
      if (ContentUris.parseId(this.c) != paramLong) {
        Log.e("BaseImageList", "id mismatch");
      }
      Uri localUri = this.c;
      return localUri;
    }
    catch (NumberFormatException localNumberFormatException) {}
    return ContentUris.withAppendedId(this.c, paramLong);
  }
  
  protected abstract a a(Cursor paramCursor);
  
  public c a(int paramInt)
  {
    a locala1 = (a)this.g.a(Integer.valueOf(paramInt));
    Cursor localCursor;
    if (locala1 == null)
    {
      localCursor = g();
      if (localCursor == null) {
        locala1 = null;
      }
    }
    else
    {
      return locala1;
    }
    for (;;)
    {
      try
      {
        if (localCursor.moveToPosition(paramInt))
        {
          locala2 = a(localCursor);
          this.g.a(Integer.valueOf(paramInt), locala2);
          return locala2;
        }
      }
      finally {}
      a locala2 = null;
    }
  }
  
  public c a(Uri paramUri)
  {
    if (!c(paramUri)) {
      return null;
    }
    for (;;)
    {
      try
      {
        long l = ContentUris.parseId(paramUri);
        Cursor localCursor = g();
        if (localCursor == null) {
          break;
        }
        int i;
        try
        {
          localCursor.moveToPosition(-1);
          i = 0;
          if (!localCursor.moveToNext()) {
            break label155;
          }
          if (b(localCursor) == l)
          {
            a locala = (a)this.g.a(Integer.valueOf(i));
            if (locala == null)
            {
              locala = a(localCursor);
              this.g.a(Integer.valueOf(i), locala);
            }
            return locala;
          }
        }
        finally {}
        i++;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        Log.i("BaseImageList", "fail to get id in: " + paramUri, localNumberFormatException);
        return null;
      }
    }
    label155:
    return null;
  }
  
  public void a()
  {
    try
    {
      e();
      this.a = null;
      if (this.d != null)
      {
        this.d.close();
        this.d = null;
      }
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      for (;;)
      {
        Log.e("BaseImageList", "Caught exception while deactivating cursor.", localIllegalStateException);
      }
    }
  }
  
  public int b()
  {
    Cursor localCursor = g();
    if (localCursor == null) {
      return 0;
    }
    try
    {
      int i = localCursor.getCount();
      return i;
    }
    finally {}
  }
  
  protected abstract long b(Cursor paramCursor);
  
  public boolean c()
  {
    return b() == 0;
  }
  
  protected abstract Cursor d();
  
  protected void e()
  {
    if (this.d == null) {
      return;
    }
    this.d.deactivate();
    this.f = true;
  }
  
  protected String f()
  {
    if (this.b == 1) {}
    for (String str = " ASC";; str = " DESC") {
      return "case ifnull(datetaken,0) when 0 then date_modified*1000 else datetaken end" + str + ", _id" + str;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.android.camera.a.b
 * JD-Core Version:    0.7.0.1
 */