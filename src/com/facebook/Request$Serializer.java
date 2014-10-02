package com.facebook;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.os.ParcelFileDescriptor;
import android.os.ParcelFileDescriptor.AutoCloseInputStream;
import com.facebook.internal.Logger;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;

class Request$Serializer
  implements Request.KeyValueSerializer
{
  private boolean firstWrite = true;
  private final Logger logger;
  private final BufferedOutputStream outputStream;
  
  public Request$Serializer(BufferedOutputStream paramBufferedOutputStream, Logger paramLogger)
  {
    this.outputStream = paramBufferedOutputStream;
    this.logger = paramLogger;
  }
  
  public void write(String paramString, Object... paramVarArgs)
  {
    if (this.firstWrite)
    {
      this.outputStream.write("--".getBytes());
      this.outputStream.write("3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f".getBytes());
      this.outputStream.write("\r\n".getBytes());
      this.firstWrite = false;
    }
    this.outputStream.write(String.format(paramString, paramVarArgs).getBytes());
  }
  
  public void writeBitmap(String paramString, Bitmap paramBitmap)
  {
    writeContentDisposition(paramString, paramString, "image/png");
    paramBitmap.compress(Bitmap.CompressFormat.PNG, 100, this.outputStream);
    writeLine("", new Object[0]);
    writeRecordBoundary();
    this.logger.appendKeyValue("    " + paramString, "<Image>");
  }
  
  public void writeBytes(String paramString, byte[] paramArrayOfByte)
  {
    writeContentDisposition(paramString, paramString, "content/unknown");
    this.outputStream.write(paramArrayOfByte);
    writeLine("", new Object[0]);
    writeRecordBoundary();
    Logger localLogger = this.logger;
    String str = "    " + paramString;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramArrayOfByte.length);
    localLogger.appendKeyValue(str, String.format("<Data: %d>", arrayOfObject));
  }
  
  public void writeContentDisposition(String paramString1, String paramString2, String paramString3)
  {
    write("Content-Disposition: form-data; name=\"%s\"", new Object[] { paramString1 });
    if (paramString2 != null) {
      write("; filename=\"%s\"", new Object[] { paramString2 });
    }
    writeLine("", new Object[0]);
    if (paramString3 != null) {
      writeLine("%s: %s", new Object[] { "Content-Type", paramString3 });
    }
    writeLine("", new Object[0]);
  }
  
  public void writeFile(String paramString, ParcelFileDescriptor paramParcelFileDescriptor)
  {
    localObject1 = null;
    writeContentDisposition(paramString, paramString, "content/unknown");
    try
    {
      localAutoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(paramParcelFileDescriptor);
      byte[] arrayOfByte;
      int i;
      label41:
      int j;
      Logger localLogger;
      String str;
      Object[] arrayOfObject;
      if (localBufferedInputStream == null) {
        break label184;
      }
    }
    finally
    {
      try
      {
        localBufferedInputStream = new BufferedInputStream(localAutoCloseInputStream);
      }
      finally
      {
        localObject1 = localAutoCloseInputStream;
        BufferedInputStream localBufferedInputStream = null;
      }
      try
      {
        arrayOfByte = new byte[8192];
        i = 0;
        j = localBufferedInputStream.read(arrayOfByte);
        if (j != -1)
        {
          this.outputStream.write(arrayOfByte, 0, j);
          i += j;
          break label41;
        }
        if (localBufferedInputStream != null) {
          localBufferedInputStream.close();
        }
        if (localAutoCloseInputStream != null) {
          localAutoCloseInputStream.close();
        }
        writeLine("", new Object[0]);
        writeRecordBoundary();
        localLogger = this.logger;
        str = "    " + paramString;
        arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(i);
        localLogger.appendKeyValue(str, String.format("<Data: %d>", arrayOfObject));
        return;
      }
      finally
      {
        localObject1 = localAutoCloseInputStream;
        break label174;
      }
      localObject2 = finally;
      localBufferedInputStream = null;
    }
    label174:
    localBufferedInputStream.close();
    label184:
    if (localObject1 != null) {
      localObject1.close();
    }
    throw localObject2;
  }
  
  public void writeLine(String paramString, Object... paramVarArgs)
  {
    write(paramString, paramVarArgs);
    write("\r\n", new Object[0]);
  }
  
  public void writeObject(String paramString, Object paramObject)
  {
    if (Request.access$100(paramObject))
    {
      writeString(paramString, Request.access$200(paramObject));
      return;
    }
    if ((paramObject instanceof Bitmap))
    {
      writeBitmap(paramString, (Bitmap)paramObject);
      return;
    }
    if ((paramObject instanceof byte[]))
    {
      writeBytes(paramString, (byte[])paramObject);
      return;
    }
    if ((paramObject instanceof ParcelFileDescriptor))
    {
      writeFile(paramString, (ParcelFileDescriptor)paramObject);
      return;
    }
    throw new IllegalArgumentException("value is not a supported type: String, Bitmap, byte[]");
  }
  
  public void writeRecordBoundary()
  {
    writeLine("--%s", new Object[] { "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f" });
  }
  
  public void writeString(String paramString1, String paramString2)
  {
    writeContentDisposition(paramString1, null, null);
    writeLine("%s", new Object[] { paramString2 });
    writeRecordBoundary();
    if (this.logger != null) {
      this.logger.appendKeyValue("    " + paramString1, paramString2);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.facebook.Request.Serializer
 * JD-Core Version:    0.7.0.1
 */