package com.viber.voip.registration;

import android.os.Environment;
import android.text.TextUtils;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;
import com.viber.voip.util.aj;
import com.viber.voip.w;
import java.io.File;
import java.io.FileOutputStream;

public class bk
{
  /* Error */
  private static bm a(String paramString)
  {
    // Byte code:
    //   0: new 12	java/io/FileInputStream
    //   3: dup
    //   4: getstatic 18	com/viber/voip/w:o	Ljava/lang/String;
    //   7: invokespecial 22	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   10: astore_1
    //   11: sipush 1024
    //   14: newarray byte
    //   16: astore 7
    //   18: aload_1
    //   19: aload 7
    //   21: invokevirtual 26	java/io/FileInputStream:read	([B)I
    //   24: istore 8
    //   26: iload 8
    //   28: newarray byte
    //   30: astore 9
    //   32: aload 7
    //   34: iconst_0
    //   35: aload 9
    //   37: iconst_0
    //   38: iload 8
    //   40: invokestatic 32	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   43: aload_0
    //   44: new 34	java/lang/String
    //   47: dup
    //   48: aload 9
    //   50: invokespecial 37	java/lang/String:<init>	([B)V
    //   53: invokestatic 43	com/viber/voip/util/aj:c	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   56: astore 10
    //   58: new 45	java/lang/StringBuilder
    //   61: dup
    //   62: invokespecial 48	java/lang/StringBuilder:<init>	()V
    //   65: ldc 50
    //   67: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   70: aload 10
    //   72: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   75: invokevirtual 58	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   78: invokestatic 61	com/viber/voip/registration/bk:b	(Ljava/lang/String;)V
    //   81: aload 10
    //   83: invokestatic 65	com/viber/voip/registration/bm:a	(Ljava/lang/String;)Lcom/viber/voip/registration/bm;
    //   86: astore 11
    //   88: aload 11
    //   90: astore 5
    //   92: aload_1
    //   93: ifnull +7 -> 100
    //   96: aload_1
    //   97: invokevirtual 68	java/io/FileInputStream:close	()V
    //   100: aload 5
    //   102: areturn
    //   103: astore 12
    //   105: aload 12
    //   107: invokevirtual 71	java/io/IOException:printStackTrace	()V
    //   110: aload 5
    //   112: areturn
    //   113: astore_2
    //   114: aconst_null
    //   115: astore_1
    //   116: iconst_5
    //   117: new 45	java/lang/StringBuilder
    //   120: dup
    //   121: invokespecial 48	java/lang/StringBuilder:<init>	()V
    //   124: ldc 73
    //   126: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   129: aload_2
    //   130: invokevirtual 76	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   133: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   136: invokevirtual 58	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   139: invokestatic 79	com/viber/voip/registration/bk:a	(ILjava/lang/String;)V
    //   142: aconst_null
    //   143: astore 5
    //   145: aload_1
    //   146: ifnull -46 -> 100
    //   149: aload_1
    //   150: invokevirtual 68	java/io/FileInputStream:close	()V
    //   153: aconst_null
    //   154: areturn
    //   155: astore 6
    //   157: aload 6
    //   159: invokevirtual 71	java/io/IOException:printStackTrace	()V
    //   162: aconst_null
    //   163: areturn
    //   164: astore 13
    //   166: aconst_null
    //   167: astore_1
    //   168: aload 13
    //   170: astore_3
    //   171: aload_1
    //   172: ifnull +7 -> 179
    //   175: aload_1
    //   176: invokevirtual 68	java/io/FileInputStream:close	()V
    //   179: aload_3
    //   180: athrow
    //   181: astore 4
    //   183: aload 4
    //   185: invokevirtual 71	java/io/IOException:printStackTrace	()V
    //   188: goto -9 -> 179
    //   191: astore_3
    //   192: goto -21 -> 171
    //   195: astore_2
    //   196: goto -80 -> 116
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	199	0	paramString	String
    //   10	166	1	localFileInputStream	java.io.FileInputStream
    //   113	17	2	localException1	Exception
    //   195	1	2	localException2	Exception
    //   170	10	3	localObject1	Object
    //   191	1	3	localObject2	Object
    //   181	3	4	localIOException1	java.io.IOException
    //   90	54	5	localbm1	bm
    //   155	3	6	localIOException2	java.io.IOException
    //   16	17	7	arrayOfByte1	byte[]
    //   24	15	8	i	int
    //   30	19	9	arrayOfByte2	byte[]
    //   56	26	10	str	String
    //   86	3	11	localbm2	bm
    //   103	3	12	localIOException3	java.io.IOException
    //   164	5	13	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   96	100	103	java/io/IOException
    //   0	11	113	java/lang/Exception
    //   149	153	155	java/io/IOException
    //   0	11	164	finally
    //   175	179	181	java/io/IOException
    //   11	88	191	finally
    //   116	142	191	finally
    //   11	88	195	java/lang/Exception
  }
  
  public static String a(dl paramdl)
  {
    String str1 = "";
    String str2 = Environment.getExternalStorageState();
    String str3 = b();
    if (("mounted".equals(str2)) && (!TextUtils.isEmpty(str3)))
    {
      bm localbm = a(str3);
      if ((localbm != null) && (localbm.a.equals(str3))) {
        str1 = localbm.a(paramdl);
      }
    }
    b("get() type=" + paramdl + ", key=" + str1 + ", state=" + str2 + ", number=" + str3);
    return str1;
  }
  
  public static void a()
  {
    File localFile = new File(w.o);
    if (localFile.delete())
    {
      b(localFile.getName() + " is deleted!");
      return;
    }
    b("Delete operation is failed.");
  }
  
  private static void a(int paramInt, String paramString) {}
  
  public static void a(dl paramdl, String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      paramString = "";
    }
    String str1 = Environment.getExternalStorageState();
    String str2 = b();
    b("set() type=" + paramdl + ", key=" + paramString + ", state=" + str1 + ", number=" + str2);
    if (("mounted".equals(str1)) && (!TextUtils.isEmpty(str2)))
    {
      bm localbm = a(str2);
      if ((localbm == null) || (!localbm.a.equals(str2)))
      {
        File localFile = new File(w.d);
        if (!localFile.exists()) {
          localFile.mkdirs();
        }
        localbm = new bm(str2);
      }
      localbm.a(paramdl, paramString);
      a(str2, localbm);
    }
  }
  
  private static void a(String paramString, bm parambm)
  {
    try
    {
      String str1 = bm.a(parambm);
      b("writeKeychain() json=" + str1);
      String str2 = aj.b(paramString, str1);
      FileOutputStream localFileOutputStream = new FileOutputStream(w.o);
      localFileOutputStream.write(str2.getBytes());
      localFileOutputStream.flush();
      localFileOutputStream.close();
      return;
    }
    catch (Exception localException)
    {
      a(5, "writeKeychain() exception=" + localException.getMessage());
    }
  }
  
  private static String b()
  {
    ViberApplication localViberApplication = ViberApplication.getInstance();
    cp localcp = localViberApplication.getRegistrationValues();
    String str1 = localcp.e();
    String str4;
    if (str1 == null)
    {
      String str2 = localcp.a();
      String str3 = localcp.d();
      if ((!TextUtils.isEmpty(str2)) && (!"0".equals(str2)) && (!TextUtils.isEmpty(str3)) && (!"0".equals(str3)))
      {
        str4 = str2 + str3;
        str1 = localViberApplication.getPhoneController(true).canonizePhoneNumberForCountryCode(Integer.valueOf(str2).intValue(), str3);
        if (TextUtils.isEmpty(str1)) {
          break label111;
        }
      }
    }
    return str1;
    label111:
    return str4;
  }
  
  private static void b(String paramString)
  {
    a(3, paramString);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.registration.bk
 * JD-Core Version:    0.7.0.1
 */