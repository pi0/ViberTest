package org.acra.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.RandomAccessFile;
import java.util.UUID;

public class Installation
{
  private static final String INSTALLATION = "ACRA-INSTALLATION";
  private static String sID = null;
  
  /* Error */
  public static String id(android.content.Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 13	org/acra/util/Installation:sID	Ljava/lang/String;
    //   6: ifnonnull +35 -> 41
    //   9: new 22	java/io/File
    //   12: dup
    //   13: aload_0
    //   14: invokevirtual 28	android/content/Context:getFilesDir	()Ljava/io/File;
    //   17: ldc 8
    //   19: invokespecial 31	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   22: astore_2
    //   23: aload_2
    //   24: invokevirtual 35	java/io/File:exists	()Z
    //   27: ifne +7 -> 34
    //   30: aload_2
    //   31: invokestatic 39	org/acra/util/Installation:writeInstallationFile	(Ljava/io/File;)V
    //   34: aload_2
    //   35: invokestatic 43	org/acra/util/Installation:readInstallationFile	(Ljava/io/File;)Ljava/lang/String;
    //   38: putstatic 13	org/acra/util/Installation:sID	Ljava/lang/String;
    //   41: getstatic 13	org/acra/util/Installation:sID	Ljava/lang/String;
    //   44: astore 4
    //   46: ldc 2
    //   48: monitorexit
    //   49: aload 4
    //   51: areturn
    //   52: astore_3
    //   53: new 45	java/lang/RuntimeException
    //   56: dup
    //   57: aload_3
    //   58: invokespecial 48	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   61: athrow
    //   62: astore_1
    //   63: ldc 2
    //   65: monitorexit
    //   66: aload_1
    //   67: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	68	0	paramContext	android.content.Context
    //   62	5	1	localObject	Object
    //   22	13	2	localFile	File
    //   52	6	3	localException	java.lang.Exception
    //   44	6	4	str	String
    // Exception table:
    //   from	to	target	type
    //   23	34	52	java/lang/Exception
    //   34	41	52	java/lang/Exception
    //   3	23	62	finally
    //   23	34	62	finally
    //   34	41	62	finally
    //   41	46	62	finally
    //   53	62	62	finally
  }
  
  private static String readInstallationFile(File paramFile)
  {
    RandomAccessFile localRandomAccessFile = new RandomAccessFile(paramFile, "r");
    byte[] arrayOfByte = new byte[(int)localRandomAccessFile.length()];
    try
    {
      localRandomAccessFile.readFully(arrayOfByte);
      return new String(arrayOfByte);
    }
    finally
    {
      localRandomAccessFile.close();
    }
  }
  
  private static void writeInstallationFile(File paramFile)
  {
    FileOutputStream localFileOutputStream = new FileOutputStream(paramFile);
    try
    {
      localFileOutputStream.write(UUID.randomUUID().toString().getBytes());
      return;
    }
    finally
    {
      localFileOutputStream.close();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     org.acra.util.Installation
 * JD-Core Version:    0.7.0.1
 */