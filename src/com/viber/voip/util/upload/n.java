package com.viber.voip.util.upload;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.media.MediaPlayer;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.provider.MediaStore.Images.Media;
import android.provider.MediaStore.Video.Media;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.util.gj;
import com.viber.voip.w;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;

public class n
{
  private static final String a = n.class.getSimpleName();
  private static final HashMap<String, String> b = new HashMap();
  
  static
  {
    b.put("image", "jpg");
    b.put("location", "jpg");
    b.put("animated_message", "mp4");
    b.put("animated_message_cache", "mp4");
    b.put("image_public_cache", "jpg");
    b.put("video_public_cache", "mp4");
    b.put("video", "mp4");
    b.put("sound", "3gp");
  }
  
  private static ContentResolver a()
  {
    return ViberApplication.getInstance().getContentResolver();
  }
  
  public static Uri a(Uri paramUri)
  {
    if (!h.b(paramUri)) {
      return null;
    }
    String str = paramUri.getPath();
    MediaPlayer localMediaPlayer = new MediaPlayer();
    try
    {
      localMediaPlayer.setDataSource(str);
      localMediaPlayer.prepare();
      int i = localMediaPlayer.getDuration();
      l = i;
    }
    catch (IllegalArgumentException localIllegalArgumentException2)
    {
      for (;;)
      {
        ContentValues localContentValues;
        Uri localUri2;
        l = 0L;
        IllegalArgumentException localIllegalArgumentException3 = localIllegalArgumentException2;
        localIllegalArgumentException3.printStackTrace();
      }
    }
    catch (IllegalStateException localIllegalStateException1)
    {
      for (;;)
      {
        l = 0L;
        IllegalStateException localIllegalStateException2 = localIllegalStateException1;
        localIllegalStateException2.printStackTrace();
      }
    }
    catch (IOException localIOException1)
    {
      for (;;)
      {
        long l = 0L;
        IOException localIOException2 = localIOException1;
        localIOException2.printStackTrace();
      }
    }
    for (;;)
    {
      try
      {
        localMediaPlayer.release();
        localContentValues = new ContentValues(3);
        localContentValues.put("mime_type", "video/mp4");
        localContentValues.put("_data", str);
        localContentValues.put("duration", Long.valueOf(l));
      }
      catch (IOException localIOException3)
      {
        break label150;
      }
      catch (IllegalStateException localIllegalStateException3)
      {
        break label135;
      }
      catch (IllegalArgumentException localIllegalArgumentException4)
      {
        break label118;
      }
      try
      {
        localUri2 = a().insert(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, localContentValues);
        localUri1 = localUri2;
      }
      catch (IllegalArgumentException localIllegalArgumentException1)
      {
        localIllegalArgumentException1.printStackTrace();
        localUri1 = null;
        break;
      }
    }
    b(str);
    return localUri1;
  }
  
  public static Uri a(Uri paramUri1, Uri paramUri2)
  {
    if (!h.b(paramUri1)) {}
    do
    {
      return paramUri2;
      ContentValues localContentValues = new ContentValues(2);
      localContentValues.put("mime_type", "image/jpg");
      localContentValues.put("_data", paramUri1.getPath());
      try
      {
        Uri localUri2 = a().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, localContentValues);
        localUri1 = localUri2;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          Uri localUri1 = null;
        }
      }
      e("inserted image from:" + paramUri1 + ", to:" + localUri1);
      b(paramUri1.getPath());
    } while (localUri1 == null);
    return localUri1;
  }
  
  public static File a(String paramString1, String paramString2)
  {
    if ((h.a()) && (h.c()))
    {
      String str1 = c(paramString2);
      if (paramString2.equals("animated_message"))
      {
        if (gj.c(paramString1)) {
          paramString1 = String.valueOf(System.currentTimeMillis() / 1000L);
        }
      }
      else
      {
        if (!"image_public_cache".equals(paramString2)) {
          break label138;
        }
        paramString2 = "image";
      }
      for (;;)
      {
        String str2 = paramString2 + "-" + paramString1 + "-V." + a(paramString2);
        File localFile = new File(str1);
        if (!localFile.exists()) {
          localFile.mkdirs();
        }
        return new File(str1, str2);
        paramString1 = paramString1.replaceAll("[^a-zA-Z0-9\\._]+", "_");
        break;
        label138:
        if ("video_public_cache".equals(paramString2)) {
          paramString2 = "video";
        }
      }
    }
    return null;
  }
  
  private static File a(String paramString1, String paramString2, String paramString3)
  {
    String str = w.z;
    new File(str).mkdirs();
    return new File(str, paramString1 + paramString2 + "." + a(paramString3));
  }
  
  public static File a(String paramString, boolean paramBoolean)
  {
    if (h.a())
    {
      String str = w.A + paramString + "." + "jpg";
      if (paramBoolean) {
        str = b(Uri.parse(str));
      }
      new File(w.A).mkdirs();
      File localFile = new File(w.A + ".nomedia");
      if (!localFile.exists()) {
        localFile.createNewFile();
      }
      return new File(str);
    }
    return null;
  }
  
  public static String a(String paramString)
  {
    return (String)b.get(paramString);
  }
  
  public static File b(String paramString1, String paramString2)
  {
    return a("dl-", paramString1, paramString2);
  }
  
  public static String b(Uri paramUri)
  {
    if (paramUri != null) {
      return w.A + gj.a(paramUri.getPath()) + "." + "jpg";
    }
    return null;
  }
  
  public static void b(String paramString)
  {
    MediaScannerConnection[] arrayOfMediaScannerConnection = new MediaScannerConnection[1];
    o localo = new o(arrayOfMediaScannerConnection, paramString);
    arrayOfMediaScannerConnection[0] = new MediaScannerConnection(ViberApplication.getInstance().getApplicationContext(), localo);
    arrayOfMediaScannerConnection[0].connect();
  }
  
  public static Uri c(Uri paramUri)
  {
    return a(paramUri, paramUri);
  }
  
  public static String c(String paramString)
  {
    String str = "";
    if ("image".equals(paramString)) {
      str = w.q;
    }
    do
    {
      return str;
      if ("video".equals(paramString)) {
        return w.r;
      }
      if ("animated_message".equals(paramString)) {
        return w.r;
      }
      if ("animated_message_cache".equals(paramString)) {
        return w.t;
      }
      if (("image_public_cache".equals(paramString)) || ("video_public_cache".equals(paramString))) {
        return w.s;
      }
    } while (!"sound".equals(paramString));
    return w.u;
  }
  
  private static void e(String paramString) {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.upload.n
 * JD-Core Version:    0.7.0.1
 */