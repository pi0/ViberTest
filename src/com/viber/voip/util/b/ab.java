package com.viber.voip.util.b;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.provider.MediaStore.Images.Media;
import android.provider.MediaStore.Images.Thumbnails;
import android.support.v4.app.FragmentManager;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.util.al;
import java.io.FileNotFoundException;
import java.io.IOException;

public class ab
  extends ac
{
  private final boolean d;
  private ContentResolver e;
  
  public ab(Context paramContext, boolean paramBoolean)
  {
    super(paramContext);
    a(paramContext);
    this.d = paramBoolean;
  }
  
  public static ab a(Context paramContext, FragmentManager paramFragmentManager)
  {
    return a(paramContext, paramFragmentManager, true);
  }
  
  public static ab a(Context paramContext, FragmentManager paramFragmentManager, boolean paramBoolean)
  {
    u localu = new u(paramContext, "ImageFetcherThumb");
    localu.a(0.25F);
    ab localab = new ab(paramContext, paramBoolean);
    localab.a(paramFragmentManager, localu, "image_fetcher_thumb_cache");
    return localab;
  }
  
  private void a(Context paramContext)
  {
    this.e = paramContext.getContentResolver();
  }
  
  private static Bitmap b(Uri paramUri, x paramx, s params, Context paramContext)
  {
    try
    {
      Bitmap localBitmap = a(paramUri, paramx, params, paramContext);
      return localBitmap;
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      System.gc();
      return null;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      return null;
    }
    catch (IOException localIOException)
    {
      return null;
    }
    catch (NullPointerException localNullPointerException) {}
    return null;
  }
  
  public static ab b(Context paramContext, FragmentManager paramFragmentManager)
  {
    u localu = new u(paramContext, "ImageFetcherThumb");
    localu.a(0.15F);
    ab localab = new ab(paramContext, false);
    localab.a(paramFragmentManager, localu, "albums_fetcher_thumb_cache");
    return localab;
  }
  
  protected Bitmap a(Uri paramUri, x paramx)
  {
    if (paramUri == null) {}
    Uri localUri;
    int j;
    label98:
    label102:
    for (;;)
    {
      return null;
      String str = paramUri.getScheme();
      int i;
      if ((str != null) && (str.startsWith("content")))
      {
        i = 1;
        if (i == 0) {
          break label98;
        }
      }
      for (localUri = a(paramUri);; localUri = paramUri)
      {
        if (localUri == null) {
          break label102;
        }
        j = h.a(localUri.toString());
        if ((!this.d) || (i == 0)) {
          break label104;
        }
        long l = Long.parseLong(paramUri.getLastPathSegment());
        return h.a(MediaStore.Images.Thumbnails.getThumbnail(this.e, l, 1, null), j);
        i = 0;
        break;
      }
    }
    label104:
    return h.a(h.a(b(localUri, paramx, null, this.c)), paramx.e(this.c), 1, false, j);
  }
  
  protected Bitmap a(String paramString)
  {
    if (this.d) {
      return super.a(paramString);
    }
    return null;
  }
  
  public Uri a(Uri paramUri)
  {
    try
    {
      Cursor localCursor2 = MediaStore.Images.Media.query(this.e, paramUri, new String[] { "_data" });
      Cursor localCursor1 = localCursor2;
      Object localObject4 = null;
      if (localCursor1 != null) {}
      boolean bool;
      String str;
      Uri localUri;
      al.a(localCursor1);
    }
    finally
    {
      try
      {
        bool = localCursor1.moveToFirst();
        localObject4 = null;
        if (bool)
        {
          str = localCursor1.getString(0);
          localObject4 = null;
          if (str != null)
          {
            localUri = Uri.parse(str);
            localObject4 = localUri;
          }
        }
        al.a(localCursor1);
        return localObject4;
      }
      finally
      {
        Object localObject2;
        break label86;
      }
      localObject1 = finally;
      localCursor1 = null;
      localObject2 = localObject1;
    }
    label86:
    throw localObject2;
  }
  
  protected void a()
  {
    super.a();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.b.ab
 * JD-Core Version:    0.7.0.1
 */