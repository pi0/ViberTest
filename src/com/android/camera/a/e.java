package com.android.camera.a;

import android.content.ContentResolver;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;
import android.provider.MediaStore.Images.Thumbnails;
import com.android.camera.z;

public class e
  extends a
  implements c
{
  private static final String[] j = { "_id" };
  private int i;
  
  public e(b paramb, ContentResolver paramContentResolver, long paramLong1, int paramInt1, Uri paramUri, String paramString1, long paramLong2, String paramString2, long paramLong3, String paramString3, String paramString4, int paramInt2)
  {
    super(paramb, paramContentResolver, paramLong1, paramInt1, paramUri, paramString1, paramLong2, paramString2, paramLong3, paramString3, paramString4);
    this.i = paramInt2;
  }
  
  public Bitmap a(boolean paramBoolean)
  {
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.inDither = false;
    localOptions.inPreferredConfig = Bitmap.Config.ARGB_8888;
    Bitmap localBitmap = MediaStore.Images.Thumbnails.getThumbnail(this.a, this.c, 1, localOptions);
    if ((localBitmap != null) && (paramBoolean)) {
      localBitmap = z.a(localBitmap, c());
    }
    return localBitmap;
  }
  
  public int c()
  {
    return this.i;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.android.camera.a.e
 * JD-Core Version:    0.7.0.1
 */