package com.viber.error.report;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import com.viber.voip.ViberApplication;
import com.viber.voip.registration.HardwareParameters;
import com.viber.voip.w;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

public class a
{
  private static int a = 14;
  
  private static void a()
  {
    String str1 = w.h;
    File localFile = new File(str1);
    localFile.mkdir();
    for (String str2 : localFile.list(new b()))
    {
      a("delete old crash file copy:" + str1 + str2);
      new File(str1 + str2).delete();
    }
    a(a, w.g);
  }
  
  public static void a(int paramInt, String paramString)
  {
    File localFile1 = new File(paramString);
    if (localFile1.exists())
    {
      File[] arrayOfFile = localFile1.listFiles();
      long l = System.currentTimeMillis() - 1000 * (60 * (60 * (paramInt * 24)));
      int i = arrayOfFile.length;
      for (int j = 0; j < i; j++)
      {
        File localFile2 = arrayOfFile[j];
        if ((localFile2.lastModified() < l) && (!localFile2.delete())) {
          a("Unable to delete file: " + localFile2);
        }
      }
    }
    a("Files were not deleted, directory " + paramString + " does'nt exist!");
  }
  
  private static void a(Context paramContext)
  {
    a(new File(w.d()), new File(w.h));
  }
  
  public static void a(Context paramContext, boolean paramBoolean, String paramString1, String paramString2)
  {
    for (;;)
    {
      int i;
      try
      {
        a(paramContext);
        ViberApplication.flushLogger();
        String str1 = w.e;
        String str2 = ViberApplication.getInstance().getHardwareParameters().getUdid();
        String str3 = w.d + "viber_" + w.b() + "_" + str2 + "_log.zip";
        File localFile1 = new File(w.d);
        if (!localFile1.exists()) {
          localFile1.mkdirs();
        }
        String[] arrayOfString1 = new File(str1).list();
        if (arrayOfString1 != null)
        {
          FileOutputStream localFileOutputStream = new FileOutputStream(str3);
          ZipOutputStream localZipOutputStream = new ZipOutputStream(localFileOutputStream);
          i = 0;
          if (i < arrayOfString1.length)
          {
            File localFile2 = new File(str1 + arrayOfString1[i]);
            if (localFile2.isDirectory())
            {
              String[] arrayOfString2 = localFile2.list();
              int j = 0;
              if (j < arrayOfString2.length)
              {
                a(str1, arrayOfString1[i] + "/" + arrayOfString2[j], localZipOutputStream);
                j++;
                continue;
              }
            }
            else
            {
              a(str1, arrayOfString1[i], localZipOutputStream);
            }
          }
          else
          {
            localZipOutputStream.close();
            localFileOutputStream.flush();
            localFileOutputStream.close();
          }
        }
        else
        {
          File localFile3 = new File(str3);
          a("attachedFile size:" + localFile3.length() + " created");
          Intent localIntent = new Intent("android.intent.action.SEND");
          localIntent.setFlags(0x10000000 | localIntent.getFlags());
          int k = d.t;
          String[] arrayOfString3 = new String[1];
          arrayOfString3[0] = paramContext.getResources().getString(k);
          localIntent.putExtra("android.intent.extra.EMAIL", arrayOfString3);
          localIntent.setType("media/image");
          localIntent.putExtra("android.intent.extra.SUBJECT", paramString1);
          localIntent.putExtra("android.intent.extra.STREAM", Uri.fromFile(localFile3));
          localIntent.putExtra("android.intent.extra.TEXT", paramString2);
          paramContext.startActivity(Intent.createChooser(localIntent, "Send email using"));
          a("Uri.fromFile(attachedFile) :" + Uri.fromFile(localFile3));
          a();
          return;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
      i++;
    }
  }
  
  public static void a(File paramFile1, File paramFile2)
  {
    int i = 0;
    if (paramFile1.isDirectory())
    {
      if (!paramFile2.exists()) {
        paramFile2.mkdir();
      }
      String[] arrayOfString = paramFile1.list();
      while (i < arrayOfString.length)
      {
        a(new File(paramFile1, arrayOfString[i]), new File(paramFile2, arrayOfString[i]));
        i++;
      }
    }
    FileInputStream localFileInputStream = new FileInputStream(paramFile1);
    FileOutputStream localFileOutputStream = new FileOutputStream(paramFile2);
    byte[] arrayOfByte = new byte[1024];
    for (;;)
    {
      int j = localFileInputStream.read(arrayOfByte);
      if (j <= 0) {
        break;
      }
      localFileOutputStream.write(arrayOfByte, 0, j);
    }
    localFileInputStream.close();
    localFileOutputStream.close();
  }
  
  private static void a(String paramString)
  {
    ViberApplication.log(3, "ClientReportSender", paramString);
  }
  
  private static void a(String paramString1, String paramString2, ZipOutputStream paramZipOutputStream)
  {
    a("addFileToZip:" + paramString1 + paramString2);
    if (!new File(paramString1 + paramString2).isDirectory())
    {
      FileInputStream localFileInputStream = new FileInputStream(paramString1 + paramString2);
      byte[] arrayOfByte = new byte[1024];
      paramZipOutputStream.putNextEntry(new ZipEntry(paramString2));
      for (;;)
      {
        int i = localFileInputStream.read(arrayOfByte);
        if (i == -1) {
          break;
        }
        paramZipOutputStream.write(arrayOfByte, 0, i);
      }
      paramZipOutputStream.flush();
      paramZipOutputStream.closeEntry();
      localFileInputStream.close();
      return;
    }
    a("File :" + paramString1 + paramString2 + " is directory. Ignored!");
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.error.report.a
 * JD-Core Version:    0.7.0.1
 */