package com.viber.voip.util.upload.a;

import com.viber.voip.messages.a.i;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.net.Socket;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.Properties;
import java.util.StringTokenizer;

class f
  implements Runnable
{
  private Socket b;
  
  public f(c paramc, Socket paramSocket)
  {
    this.b = paramSocket;
    Thread localThread = new Thread(this);
    localThread.setDaemon(true);
    localThread.start();
  }
  
  private int a(byte[] paramArrayOfByte, int paramInt)
  {
    for (int i = 0;; i++)
    {
      int j = i + 3;
      int k = 0;
      if (j < paramInt)
      {
        if ((paramArrayOfByte[i] == 13) && (paramArrayOfByte[(i + 1)] == 10) && (paramArrayOfByte[(i + 2)] == 13) && (paramArrayOfByte[(i + 3)] == 10)) {
          k = i + 4;
        }
      }
      else {
        return k;
      }
    }
  }
  
  private String a(String paramString)
  {
    for (;;)
    {
      StringBuffer localStringBuffer;
      int i;
      try
      {
        localStringBuffer = new StringBuffer();
        i = 0;
        if (i >= paramString.length()) {
          break label119;
        }
        char c = paramString.charAt(i);
        switch (c)
        {
        default: 
          localStringBuffer.append(c);
        }
      }
      catch (Exception localException)
      {
        a("400 Bad Request", "BAD REQUEST: Bad percent-encoding.");
        return null;
      }
      localStringBuffer.append(' ');
      break label128;
      int j = i + 1;
      int k = i + 3;
      localStringBuffer.append((char)Integer.parseInt(paramString.substring(j, k), 16));
      i += 2;
      break label128;
      label119:
      String str = localStringBuffer.toString();
      return str;
      label128:
      i++;
    }
  }
  
  private String a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    Object localObject = "";
    String str1;
    if (paramInt2 > 0) {
      str1 = System.getProperty("java.io.tmpdir");
    }
    try
    {
      File localFile = File.createTempFile("NanoHTTPD", "", new File(str1));
      FileOutputStream localFileOutputStream = new FileOutputStream(localFile);
      localFileOutputStream.write(paramArrayOfByte, paramInt1, paramInt2);
      localFileOutputStream.close();
      String str2 = localFile.getAbsolutePath();
      localObject = str2;
      return localObject;
    }
    catch (Exception localException)
    {
      c.b.println("Error: " + localException.getMessage());
    }
    return localObject;
  }
  
  private void a(BufferedReader paramBufferedReader, Properties paramProperties1, Properties paramProperties2, Properties paramProperties3)
  {
    try
    {
      String str1 = paramBufferedReader.readLine();
      if (str1 == null) {
        return;
      }
      StringTokenizer localStringTokenizer = new StringTokenizer(str1);
      if (!localStringTokenizer.hasMoreTokens()) {
        a("400 Bad Request", "BAD REQUEST: Syntax error. Usage: GET /example/file.html");
      }
      paramProperties1.put("method", localStringTokenizer.nextToken());
      if (!localStringTokenizer.hasMoreTokens()) {
        a("400 Bad Request", "BAD REQUEST: Missing URI. Usage: GET /example/file.html");
      }
      String str2 = localStringTokenizer.nextToken();
      int i = str2.indexOf('?');
      if (i >= 0) {
        a(str2.substring(i + 1), paramProperties2);
      }
      for (String str3 = a(str2.substring(0, i)); localStringTokenizer.hasMoreTokens(); str3 = a(str2)) {
        for (String str4 = paramBufferedReader.readLine(); (str4 != null) && (str4.trim().length() > 0); str4 = paramBufferedReader.readLine())
        {
          int j = str4.indexOf(':');
          if (j >= 0) {
            paramProperties3.put(i.a(str4.substring(0, j).trim()), str4.substring(j + 1).trim());
          }
        }
      }
      paramProperties1.put("uri", str3);
      return;
    }
    catch (IOException localIOException)
    {
      a("500 Internal Server Error", "SERVER INTERNAL ERROR: IOException: " + localIOException.getMessage());
    }
  }
  
  private void a(String paramString1, String paramString2)
  {
    byte[] arrayOfByte = paramString2.getBytes();
    a(paramString1, "text/plain", null, new ByteArrayInputStream(arrayOfByte), arrayOfByte.length);
    throw new InterruptedException();
  }
  
  private void a(String paramString1, String paramString2, Properties paramProperties, InputStream paramInputStream, int paramInt)
  {
    if (paramString1 == null) {
      try
      {
        throw new Error("sendResponse(): Status can't be null.");
      }
      catch (IOException localIOException) {}
    }
    try
    {
      this.b.close();
      return;
    }
    catch (Throwable localThrowable)
    {
      OutputStream localOutputStream;
      PrintWriter localPrintWriter;
      Enumeration localEnumeration;
      byte[] arrayOfByte;
      return;
    }
    localOutputStream = this.b.getOutputStream();
    localPrintWriter = new PrintWriter(localOutputStream);
    localPrintWriter.print("HTTP/1.0 " + paramString1 + " \r\n");
    if (paramString2 != null) {
      localPrintWriter.print("Content-Type: " + paramString2 + "\r\n");
    }
    if ((paramProperties == null) || (paramProperties.getProperty("Date") == null)) {
      localPrintWriter.print("Date: " + c.b().format(new Date()) + "\r\n");
    }
    if (paramProperties != null)
    {
      localEnumeration = paramProperties.keys();
      while (localEnumeration.hasMoreElements())
      {
        String str1 = (String)localEnumeration.nextElement();
        String str2 = paramProperties.getProperty(str1);
        localPrintWriter.print(str1 + ": " + str2 + "\r\n");
      }
    }
    localPrintWriter.print("\r\n");
    localPrintWriter.flush();
    int i;
    if (paramInputStream != null)
    {
      arrayOfByte = new byte[c.c()];
      i = paramInt;
      label267:
      if (i > 0) {
        if (i <= c.c()) {
          break label346;
        }
      }
    }
    label346:
    for (int j = c.c();; j = i)
    {
      int k = paramInputStream.read(arrayOfByte, 0, j);
      if (k <= 0)
      {
        localOutputStream.flush();
        localOutputStream.close();
        if (paramInputStream == null) {
          break;
        }
        paramInputStream.close();
        return;
      }
      localOutputStream.write(arrayOfByte, 0, k);
      i -= k;
      break label267;
    }
  }
  
  private void a(String paramString, Properties paramProperties)
  {
    if (paramString == null) {}
    for (;;)
    {
      return;
      StringTokenizer localStringTokenizer = new StringTokenizer(paramString, "&");
      while (localStringTokenizer.hasMoreTokens())
      {
        String str = localStringTokenizer.nextToken();
        int i = str.indexOf('=');
        if (i >= 0) {
          paramProperties.put(a(str.substring(0, i)).trim(), a(str.substring(i + 1)));
        }
      }
    }
  }
  
  private void a(String paramString, byte[] paramArrayOfByte, BufferedReader paramBufferedReader, Properties paramProperties1, Properties paramProperties2)
  {
    for (;;)
    {
      int[] arrayOfInt;
      int j;
      Properties localProperties1;
      Properties localProperties2;
      try
      {
        arrayOfInt = a(paramArrayOfByte, paramString.getBytes());
        i = 1;
        localObject1 = paramBufferedReader.readLine();
        if (localObject1 != null)
        {
          if (((String)localObject1).indexOf(paramString) == -1) {
            a("400 Bad Request", "BAD REQUEST: Content type is multipart/form-data but next chunk does not start with boundary. Usage: GET /example/file.html");
          }
          j = i + 1;
          localProperties1 = new Properties();
          localObject1 = paramBufferedReader.readLine();
          if ((localObject1 != null) && (((String)localObject1).trim().length() > 0))
          {
            int i1 = ((String)localObject1).indexOf(':');
            if (i1 != -1) {
              localProperties1.put(i.a(((String)localObject1).substring(0, i1).trim()), ((String)localObject1).substring(i1 + 1).trim());
            }
            localObject1 = paramBufferedReader.readLine();
            continue;
          }
          if (localObject1 == null) {
            break label551;
          }
          String str1 = localProperties1.getProperty("content-disposition");
          if (str1 == null) {
            a("400 Bad Request", "BAD REQUEST: Content type is multipart/form-data but no content-disposition info found. Usage: GET /example/file.html");
          }
          StringTokenizer localStringTokenizer = new StringTokenizer(str1, "; ");
          localProperties2 = new Properties();
          if (localStringTokenizer.hasMoreTokens())
          {
            String str7 = localStringTokenizer.nextToken();
            int n = str7.indexOf('=');
            if (n == -1) {
              continue;
            }
            localProperties2.put(i.a(str7.substring(0, n).trim()), str7.substring(n + 1).trim());
            continue;
          }
        }
        else
        {
          return;
        }
      }
      catch (IOException localIOException)
      {
        a("500 Internal Server Error", "SERVER INTERNAL ERROR: IOException: " + localIOException.getMessage());
      }
      String str2 = localProperties2.getProperty("name");
      String str3 = str2.substring(1, -1 + str2.length());
      Object localObject2;
      if (localProperties1.getProperty("content-type") == null)
      {
        localObject2 = localObject1;
        str4 = "";
        while ((localObject2 != null) && (((String)localObject2).indexOf(paramString) == -1))
        {
          localObject2 = paramBufferedReader.readLine();
          if (localObject2 != null)
          {
            int k = ((String)localObject2).indexOf(paramString);
            if (k == -1) {
              str4 = str4 + (String)localObject2;
            } else {
              str4 = str4 + ((String)localObject2).substring(0, k - 2);
            }
          }
        }
      }
      if (j > arrayOfInt.length) {
        a("500 Internal Server Error", "Error processing request");
      }
      int m = b(paramArrayOfByte, arrayOfInt[(j - 2)]);
      paramProperties2.put(str3, a(paramArrayOfByte, m, -4 + (arrayOfInt[(j - 1)] - m)));
      String str6 = localProperties2.getProperty("filename");
      String str4 = str6.substring(1, -1 + str6.length());
      do
      {
        localObject2 = paramBufferedReader.readLine();
      } while ((localObject2 != null) && (((String)localObject2).indexOf(paramString) == -1));
      String str5 = str4;
      Object localObject1 = localObject2;
      paramProperties1.put(str3, str5);
      label551:
      int i = j;
    }
  }
  
  private int b(byte[] paramArrayOfByte, int paramInt)
  {
    for (;;)
    {
      if (paramInt < paramArrayOfByte.length)
      {
        if (paramArrayOfByte[paramInt] == 13)
        {
          paramInt++;
          if (paramArrayOfByte[paramInt] == 10)
          {
            paramInt++;
            if (paramArrayOfByte[paramInt] == 13)
            {
              paramInt++;
              if (paramArrayOfByte[paramInt] != 10) {}
            }
          }
        }
      }
      else {
        return paramInt + 1;
      }
      paramInt++;
    }
  }
  
  public int[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int i = 0;
    ArrayList localArrayList = new ArrayList();
    int j = 0;
    int k = -1;
    int m = 0;
    if (j < paramArrayOfByte1.length)
    {
      if (paramArrayOfByte1[j] == paramArrayOfByte2[m])
      {
        if (m == 0) {
          k = j;
        }
        m++;
        if (m == paramArrayOfByte2.length)
        {
          localArrayList.add(Integer.valueOf(k));
          k = -1;
        }
      }
      for (m = 0;; m = 0)
      {
        j++;
        break;
        j -= m;
        k = -1;
      }
    }
    int[] arrayOfInt = new int[localArrayList.size()];
    while (i < arrayOfInt.length)
    {
      arrayOfInt[i] = ((Integer)localArrayList.get(i)).intValue();
      i++;
    }
    return arrayOfInt;
  }
  
  public void run()
  {
    try
    {
      localInputStream = this.b.getInputStream();
      if (localInputStream == null) {
        return;
      }
      arrayOfByte1 = new byte[8192];
      i = 0;
      int j = localInputStream.read(arrayOfByte1, 0, 8192);
      k = 0;
      m = j;
    }
    catch (IOException localIOException)
    {
      InputStream localInputStream;
      Properties localProperties3;
      Properties localProperties4;
      String str1;
      String str2;
      for (;;)
      {
        byte[] arrayOfByte1;
        try
        {
          BufferedReader localBufferedReader1;
          Properties localProperties1;
          String str3;
          a("500 Internal Server Error", "SERVER INTERNAL ERROR: IOException: " + localIOException.getMessage());
          return;
        }
        catch (Throwable localThrowable2)
        {
          return;
        }
        i3 = 8192 - i;
        int m = localInputStream.read(arrayOfByte1, i, i3);
      }
      arrayOfByte3 = localByteArrayOutputStream.toByteArray();
      localBufferedReader2 = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(arrayOfByte3)));
      if (!str1.equalsIgnoreCase("POST")) {
        break label520;
      }
      str4 = "";
      localStringTokenizer1 = new StringTokenizer(localProperties3.getProperty("content-type"), "; ");
      if (!localStringTokenizer1.hasMoreTokens()) {
        break label434;
      }
      str4 = localStringTokenizer1.nextToken();
      if (!str4.equalsIgnoreCase("multipart/form-data")) {
        break label629;
      }
      if (localStringTokenizer1.hasMoreTokens()) {
        break label462;
      }
      a("400 Bad Request", "BAD REQUEST: Content type is multipart/form-data but boundary missing. Usage: GET /example/file.html");
      localStringTokenizer2 = new StringTokenizer(localStringTokenizer1.nextToken(), "=");
      if (localStringTokenizer2.countTokens() == 2) {
        break label497;
      }
      a("400 Bad Request", "BAD REQUEST: Content type is multipart/form-data but boundary syntax error. Usage: GET /example/file.html");
      localStringTokenizer2.nextToken();
      a(localStringTokenizer2.nextToken(), arrayOfByte3, localBufferedReader2, localProperties2, localProperties4);
      if (!str1.equalsIgnoreCase("PUT")) {
        break label552;
      }
      localProperties4.put("content", a(arrayOfByte3, 0, localByteArrayOutputStream.size()));
      localg = this.a.a(str2, str1, localProperties3, localProperties2, localProperties4);
      if (localg != null) {
        break label718;
      }
      a("500 Internal Server Error", "SERVER INTERNAL ERROR: Serve() returned a null response.");
      localBufferedReader2.close();
      localInputStream.close();
      return;
    }
    catch (NullPointerException localNullPointerException)
    {
      for (;;)
      {
        int i;
        int k;
        Properties localProperties2;
        long l;
        try
        {
          label202:
          label462:
          label497:
          a("500 Internal Server Error", "SERVER INTERNAL ERROR: NullPointerException: " + localNullPointerException.getMessage());
          label434:
          return;
        }
        catch (Throwable localThrowable1)
        {
          label520:
          label552:
          return;
        }
        label629:
        str5 = "";
        arrayOfChar = new char[512];
        for (i1 = localBufferedReader2.read(arrayOfChar); (i1 >= 0) && (!str5.endsWith("\r\n")); i1 = localBufferedReader2.read(arrayOfChar)) {
          str5 = str5 + String.valueOf(arrayOfChar, 0, i1);
        }
        a(str5.trim(), localProperties2);
        continue;
        label718:
        a(localg.a, localg.b, localg.e, localg.c, localg.d);
        continue;
        int n = k;
        continue;
        label762:
        if (n < i) {
          l -= 1 + (i - n);
        } else if ((n == 0) || (l == 9223372036854775807L)) {
          l = 0L;
        }
      }
    }
    catch (InterruptedException localInterruptedException) {}
    if (m > 0)
    {
      i += m;
      k = a(arrayOfByte1, i);
      if (k > 0)
      {
        n = k;
        localBufferedReader1 = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(arrayOfByte1, 0, i)));
        localProperties1 = new Properties();
        localProperties2 = new Properties();
        localProperties3 = new Properties();
        localProperties4 = new Properties();
        a(localBufferedReader1, localProperties1, localProperties2, localProperties3);
        str1 = localProperties1.getProperty("method");
        str2 = localProperties1.getProperty("uri");
        l = 9223372036854775807L;
        str3 = localProperties3.getProperty("content-length");
        if (str3 == null) {}
      }
      try
      {
        int i2 = Integer.parseInt(str3);
        l = i2;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        ByteArrayOutputStream localByteArrayOutputStream;
        byte[] arrayOfByte2;
        int i3;
        byte[] arrayOfByte3;
        BufferedReader localBufferedReader2;
        String str4;
        StringTokenizer localStringTokenizer1;
        StringTokenizer localStringTokenizer2;
        g localg;
        String str5;
        char[] arrayOfChar;
        int i1;
        break label202;
      }
      localByteArrayOutputStream = new ByteArrayOutputStream();
      if (n >= i) {
        break label762;
      }
      localByteArrayOutputStream.write(arrayOfByte1, n, i - n);
      break label762;
      arrayOfByte2 = new byte[512];
      while ((i >= 0) && (l > 0L))
      {
        i = localInputStream.read(arrayOfByte2, 0, 512);
        l -= i;
        if (i > 0) {
          localByteArrayOutputStream.write(arrayOfByte2, 0, i);
        }
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.upload.a.f
 * JD-Core Version:    0.7.0.1
 */