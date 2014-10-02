package com.viber.provider;

import android.content.ContentProvider;
import android.content.Context;
import android.content.UriMatcher;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import com.viber.voip.w;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.List;

public abstract class ViberContentProvider
  extends ContentProvider
{
  private static final UriMatcher b = new UriMatcher(-1);
  protected SQLiteDatabase a;
  
  static
  {
    b.addURI("com.viber.provider.vibermessages", "method/*", 1500);
    b.addURI("com.viber.provider.vibercontacts", "method/*", 1500);
  }
  
  private void a(File paramFile1, File paramFile2)
  {
    if (paramFile2.exists()) {
      paramFile2.delete();
    }
    try
    {
      paramFile2.createNewFile();
      FileInputStream localFileInputStream = new FileInputStream(paramFile1);
      FileOutputStream localFileOutputStream = new FileOutputStream(paramFile2);
      FileChannel localFileChannel1 = localFileInputStream.getChannel();
      FileChannel localFileChannel2 = localFileOutputStream.getChannel();
      localFileChannel1.transferTo(0L, paramFile1.length(), localFileChannel2);
      localFileInputStream.close();
      localFileOutputStream.close();
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
  }
  
  private void b()
  {
    if (Environment.getExternalStorageState().equals("mounted"))
    {
      File localFile1 = new File(this.a.getPath());
      File localFile2 = new File(w.f);
      if (!localFile2.exists()) {
        localFile2.mkdirs();
      }
      File localFile3 = new File(localFile2, localFile1.getName() + ".sqlite");
      this.a.close();
      a(localFile1, localFile3);
      this.a = a().getWritableDatabase();
    }
  }
  
  private void c()
  {
    File localFile1;
    File localFile2;
    if (Environment.getExternalStorageState().equals("mounted"))
    {
      localFile1 = new File(this.a.getPath());
      localFile2 = new File(w.f, localFile1.getName() + ".sqlite");
      if (!localFile2.exists())
      {
        this.a.close();
        localFile1.delete();
      }
    }
    else
    {
      return;
    }
    this.a.close();
    a(localFile2, localFile1);
    this.a = a().getWritableDatabase();
  }
  
  protected abstract SQLiteOpenHelper a();
  
  public boolean a(Uri paramUri, String paramString, Bundle paramBundle)
  {
    if (1500 == b.match(paramUri))
    {
      if ("copyDB".equals(paramUri.getPathSegments().get(1))) {
        b();
      }
      do
      {
        return true;
        if ("restoreDB".equals(paramUri.getPathSegments().get(1)))
        {
          c();
          return true;
        }
        if (!"updateLanguage".equals(paramUri.getPathSegments().get(1))) {
          break;
        }
      } while ((this.a == null) || (!this.a.isOpen()));
      this.a.setLocale(getContext().getResources().getConfiguration().locale);
      return true;
    }
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.provider.ViberContentProvider
 * JD-Core Version:    0.7.0.1
 */