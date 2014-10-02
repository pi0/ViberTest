package com.viber.voip.util.upload.a;

import com.viber.voip.messages.a.i;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Locale;
import java.util.Properties;
import java.util.StringTokenizer;
import java.util.TimeZone;

public class c
{
  protected static PrintStream a;
  protected static PrintStream b;
  private static HashMap<String, String> g = new HashMap();
  private static int h;
  private static SimpleDateFormat i;
  private int c;
  private final ServerSocket d;
  private Thread e;
  private File f;
  
  static
  {
    StringTokenizer localStringTokenizer = new StringTokenizer("css\t\ttext/css htm\t\ttext/html html\t\ttext/html xml\t\ttext/xml txt\t\ttext/plain asc\t\ttext/plain gif\t\timage/gif jpg\t\timage/jpeg jpeg\t\timage/jpeg png\t\timage/png mp3\t\taudio/mpeg m3u\t\taudio/mpeg-url mp4\t\tvideo/mp4 ogv\t\tvideo/ogg flv\t\tvideo/x-flv mov\t\tvideo/quicktime swf\t\tapplication/x-shockwave-flash js\t\t\tapplication/javascript pdf\t\tapplication/pdf doc\t\tapplication/msword ogg\t\tapplication/x-ogg zip\t\tapplication/octet-stream exe\t\tapplication/octet-stream class\t\tapplication/octet-stream ");
    while (localStringTokenizer.hasMoreTokens()) {
      g.put(localStringTokenizer.nextToken(), localStringTokenizer.nextToken());
    }
    h = 16384;
    a = System.out;
    b = System.err;
    i = new SimpleDateFormat("E, d MMM yyyy HH:mm:ss 'GMT'", Locale.US);
    i.setTimeZone(TimeZone.getTimeZone("GMT"));
  }
  
  public c(int paramInt, File paramFile)
  {
    this.c = paramInt;
    this.f = paramFile;
    this.d = new ServerSocket(paramInt, 1, InetAddress.getByName("127.0.0.1"));
    this.e = new Thread(new d(this));
    this.e.setDaemon(true);
    this.e.start();
  }
  
  private String a(String paramString)
  {
    Object localObject = "";
    StringTokenizer localStringTokenizer = new StringTokenizer(paramString, "/ ", true);
    for (;;)
    {
      String str1;
      if (localStringTokenizer.hasMoreTokens())
      {
        str1 = localStringTokenizer.nextToken();
        if (str1.equals("/"))
        {
          localObject = (String)localObject + "/";
          continue;
        }
        if (str1.equals(" "))
        {
          localObject = (String)localObject + "%20";
          continue;
        }
      }
      try
      {
        String str2 = (String)localObject + URLEncoder.encode(str1, "UTF-8");
        localObject = str2;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException) {}
      return localObject;
    }
  }
  
  public g a(String paramString1, String paramString2, Properties paramProperties1, Properties paramProperties2, Properties paramProperties3)
  {
    a.println(paramString2 + " '" + paramString1 + "' ");
    Enumeration localEnumeration1 = paramProperties1.propertyNames();
    while (localEnumeration1.hasMoreElements())
    {
      String str3 = (String)localEnumeration1.nextElement();
      a.println("  HDR: '" + str3 + "' = '" + paramProperties1.getProperty(str3) + "'");
    }
    Enumeration localEnumeration2 = paramProperties2.propertyNames();
    while (localEnumeration2.hasMoreElements())
    {
      String str2 = (String)localEnumeration2.nextElement();
      a.println("  PRM: '" + str2 + "' = '" + paramProperties2.getProperty(str2) + "'");
    }
    Enumeration localEnumeration3 = paramProperties3.propertyNames();
    while (localEnumeration3.hasMoreElements())
    {
      String str1 = (String)localEnumeration3.nextElement();
      a.println("  UPLOADED: '" + str1 + "' = '" + paramProperties3.getProperty(str1) + "'");
    }
    return a(paramString1, paramProperties1, this.f, true);
  }
  
  public g a(String paramString, Properties paramProperties, File paramFile, boolean paramBoolean)
  {
    boolean bool1 = paramFile.isDirectory();
    g localg1 = null;
    if (!bool1) {
      localg1 = new g(this, "500 Internal Server Error", "text/plain", "INTERNAL ERRROR: serveFile(): given homeDir is not a directory.");
    }
    String str9;
    Object localObject1;
    File localFile1;
    Object localObject2;
    label275:
    File localFile2;
    if (localg1 == null)
    {
      str9 = paramString.trim().replace(File.separatorChar, '/');
      if (str9.indexOf('?') >= 0) {
        str9 = str9.substring(0, str9.indexOf('?'));
      }
      if ((str9.startsWith("..")) || (str9.endsWith("..")) || (str9.indexOf("../") >= 0))
      {
        g localg2 = new g(this, "403 Forbidden", "text/plain", "FORBIDDEN: Won't serve ../ for security reasons.");
        paramString = str9;
        localObject1 = localg2;
        localFile1 = new File(paramFile, paramString);
        if ((localObject1 == null) && (!localFile1.exists())) {
          localObject1 = new g(this, "404 Not Found", "text/plain", "Error 404, file not found.");
        }
        if ((localObject1 == null) && (localFile1.isDirectory())) {
          if (!paramString.endsWith("/"))
          {
            paramString = paramString + "/";
            localObject2 = new g(this, "301 Moved Permanently", "text/html", "<html><body>Redirected: <a href=\"" + paramString + "\">" + paramString + "</a></body></html>");
            ((g)localObject2).a("Location", paramString);
            if (localObject2 == null) {
              if (new File(localFile1, "index.html").exists())
              {
                localFile2 = new File(paramFile, paramString + "/index.html");
                localObject1 = localObject2;
                label332:
                if (localObject1 != null) {}
              }
            }
          }
        }
      }
    }
    for (;;)
    {
      String str1;
      try
      {
        int j = localFile2.getCanonicalPath().lastIndexOf('.');
        str1 = null;
        if (j < 0) {
          break label1713;
        }
        str1 = (String)g.get(i.a(localFile2.getCanonicalPath().substring(j + 1)));
      }
      catch (IOException localIOException)
      {
        String str2;
        long l1;
        long l2;
        String str3;
        int k;
        long l4;
        long l6;
        e locale;
        localObject1 = new g(this, "403 Forbidden", "text/plain", "FORBIDDEN: Reading file failed.");
        continue;
        if (!str2.equals(paramProperties.getProperty("if-none-match"))) {
          continue;
        }
        localObject1 = new g(this, "304 Not Modified", str1, "");
        continue;
        FileInputStream localFileInputStream = new FileInputStream(localFile2);
        localObject1 = new g(this, "200 OK", str1, localFileInputStream, localFileInputStream.available());
        ((g)localObject1).a("Content-Length", "" + l4);
        ((g)localObject1).a("ETag", str2);
        continue;
        long l7 = l6;
        continue;
        long l5 = l2;
        continue;
        long l3 = l1;
        continue;
      }
      str2 = Integer.toHexString((localFile2.getAbsolutePath() + localFile2.lastModified() + "" + localFile2.length()).hashCode());
      l1 = 0L;
      l2 = -1L;
      str3 = paramProperties.getProperty("range");
      if ((str3 != null) && (str3.startsWith("bytes=")))
      {
        str3 = str3.substring("bytes=".length());
        k = str3.indexOf('-');
        if (k > 0) {}
        try
        {
          l1 = Long.parseLong(str3.substring(0, k));
          long l8 = Long.parseLong(str3.substring(k + 1));
          l2 = l8;
          l3 = l1;
        }
        catch (NumberFormatException localNumberFormatException)
        {
          String[] arrayOfString;
          String str4;
          int n;
          String str8;
          int i1;
          StringBuilder localStringBuilder;
          int i2;
          int m;
          File localFile3;
          boolean bool2;
          String str5;
          long l9;
          String str6;
          String str7;
          l3 = l1;
          continue;
        }
        l4 = localFile2.length();
        if ((str3 != null) && (l3 >= 0L))
        {
          if (l3 >= l4)
          {
            localObject1 = new g(this, "416 Requested Range Not Satisfiable", "text/plain", "");
            ((g)localObject1).a("Content-Range", "bytes 0-0/" + l4);
            ((g)localObject1).a("ETag", str2);
            ((g)localObject1).a("Accept-Ranges", "bytes");
            return localObject1;
            if (new File(localFile1, "index.htm").exists())
            {
              localFile2 = new File(paramFile, paramString + "/index.htm");
              localObject1 = localObject2;
              break label332;
            }
            if ((paramBoolean) && (localFile1.canRead()))
            {
              arrayOfString = localFile1.list();
              str4 = "<html><body><h1>Directory " + paramString + "</h1><br/>";
              if (paramString.length() > 1)
              {
                n = -1 + paramString.length();
                str8 = paramString.substring(0, n);
                i1 = str8.lastIndexOf('/');
                if ((i1 >= 0) && (i1 < str8.length()))
                {
                  localStringBuilder = new StringBuilder().append(str4).append("<b><a href=\"");
                  i2 = i1 + 1;
                  str4 = paramString.substring(0, i2) + "\">..</a></b><br/>";
                }
              }
              if (arrayOfString != null)
              {
                m = 0;
                if (m < arrayOfString.length)
                {
                  localFile3 = new File(localFile1, arrayOfString[m]);
                  bool2 = localFile3.isDirectory();
                  if (bool2)
                  {
                    str4 = str4 + "<b>";
                    arrayOfString[m] = (arrayOfString[m] + "/");
                  }
                  str5 = str4 + "<a href=\"" + a(new StringBuilder().append(paramString).append(arrayOfString[m]).toString()) + "\">" + arrayOfString[m] + "</a>";
                  if (localFile3.isFile())
                  {
                    l9 = localFile3.length();
                    str6 = str5 + " &nbsp;<font size=2>(";
                    if (l9 < 1024L)
                    {
                      str7 = str6 + l9 + " bytes";
                      str5 = str7 + ")</font>";
                    }
                  }
                  else
                  {
                    str4 = str5 + "<br/>";
                    if (bool2) {
                      str4 = str4 + "</b>";
                    }
                    m++;
                    continue;
                  }
                  if (l9 < 1048576L)
                  {
                    str7 = str6 + l9 / 1024L + "." + l9 % 1024L / 10L % 100L + " KB";
                    continue;
                  }
                  str7 = str6 + l9 / 1048576L + "." + l9 % 1048576L / 10L % 100L + " MB";
                  continue;
                }
              }
              localObject1 = new g(this, "200 OK", "text/html", str4 + "</body></html>");
              localFile2 = localFile1;
              break label332;
            }
            localObject1 = new g(this, "403 Forbidden", "text/plain", "FORBIDDEN: No directory listing.");
            localFile2 = localFile1;
            break label332;
          }
          if (l2 >= 0L) {
            continue;
          }
          l5 = l4 - 1L;
          l6 = 1L + (l5 - l3);
          if (l6 >= 0L) {
            continue;
          }
          l7 = 0L;
          locale = new e(this, localFile2, l7);
          locale.skip(l3);
          localObject1 = new g(this, "206 Partial Content", str1, locale, locale.available());
          ((g)localObject1).a("Content-Length", "" + l7);
          ((g)localObject1).a("Content-Range", "bytes " + l3 + "-" + l5 + "/" + l4);
          ((g)localObject1).a("ETag", str2);
          continue;
        }
      }
      localFile2 = localFile1;
      localObject1 = localObject2;
      break label332;
      localObject2 = localObject1;
      break label275;
      localFile2 = localFile1;
      break label332;
      paramString = str9;
      localObject1 = localg1;
      break;
      localObject1 = localg1;
      break;
      label1713:
      if (str1 == null) {
        str1 = "application/octet-stream";
      }
    }
  }
  
  public void a()
  {
    try
    {
      this.d.close();
      this.e.join();
      return;
    }
    catch (InterruptedException localInterruptedException) {}catch (IOException localIOException) {}
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.upload.a.c
 * JD-Core Version:    0.7.0.1
 */