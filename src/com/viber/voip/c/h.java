package com.viber.voip.c;

import android.content.Context;
import android.content.res.AssetManager;
import com.viber.voip.ViberApplication;
import com.viber.voip.process.k;
import dalvik.system.DexClassLoader;
import dalvik.system.DexFile;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipInputStream;

class h
{
  public static final String a = "Dexter[" + k.a() + "]";
  
  private ClassLoader a(Context paramContext, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    Object localObject1 = null;
    b("internalAddDexFromAssets dex container fileName=" + paramString + ", isSystem:" + paramBoolean1 + ", forceExtract:" + paramBoolean2);
    long l = System.currentTimeMillis();
    File localFile1 = paramContext.getDir("working", 0);
    File localFile2 = new File(localFile1, paramString + System.currentTimeMillis());
    File localFile3 = new File(localFile1, paramString);
    if ((paramBoolean2) || (a(paramContext, paramString, localFile3, "classes.dex")))
    {
      b("extracting dex container");
      b("temp output file: " + localFile2);
      localFile2.deleteOnExit();
    }
    for (;;)
    {
      ClassLoader localClassLoader;
      File localFile4;
      try
      {
        InputStream localInputStream = paramContext.getAssets().open(paramString);
        FileOutputStream localFileOutputStream = new FileOutputStream(localFile2);
        byte[] arrayOfByte = new byte[4096];
        int i = localInputStream.read(arrayOfByte);
        if (i == -1)
        {
          localFileOutputStream.close();
          localInputStream.close();
          b("renaming " + localFile2 + " to " + localFile3);
          localFile2.renameTo(localFile3);
          localFile2.delete();
          b("internalAddDexFromAssets dex container extracted");
          localClassLoader = h.class.getClassLoader();
          localFile4 = paramContext.getDir("optimized", 0);
          b("optimizedDir: " + localFile4);
          if (!paramBoolean1) {
            break label418;
          }
          a(localClassLoader, localFile3.getAbsolutePath(), localFile4.getAbsolutePath());
          b("internalAddDexFromAssets for " + paramString + " finished in " + (System.currentTimeMillis() - l) + "ms");
          return localObject1;
        }
        localFileOutputStream.write(arrayOfByte, 0, i);
        continue;
        b("dex container already extracted: " + localFile3);
      }
      finally
      {
        localFile2.delete();
      }
      continue;
      label418:
      localObject1 = new DexClassLoader(localFile3.getAbsolutePath(), localFile4.getAbsolutePath(), null, localClassLoader);
    }
  }
  
  private Object a(String paramString1, String paramString2, Class<?> paramClass)
  {
    int i = 0;
    localFile = new File(paramString1);
    b("createDexPathListElement, dexFilePath:" + paramString1);
    b("createDexPathListElement, optimizedDexFilePath:" + paramString2);
    b("loadDex done");
    localDexFile = DexFile.loadDex(paramString1, paramString2, 0);
    b("Constructors of " + paramClass);
    Constructor[] arrayOfConstructor = paramClass.getConstructors();
    int j = arrayOfConstructor.length;
    while (i < j)
    {
      Constructor localConstructor4 = arrayOfConstructor[i];
      b("constructor " + localConstructor4.getName() + ", params: " + Arrays.toString(localConstructor4.getParameterTypes()));
      i++;
    }
    b("Constructors end");
    try
    {
      Class[] arrayOfClass = new Class[4];
      arrayOfClass[0] = File.class;
      arrayOfClass[1] = Boolean.TYPE;
      arrayOfClass[2] = File.class;
      arrayOfClass[3] = DexFile.class;
      Constructor localConstructor3 = a(paramClass, arrayOfClass);
      localConstructor3.setAccessible(true);
      Object[] arrayOfObject = new Object[4];
      arrayOfObject[0] = localFile;
      arrayOfObject[1] = Boolean.valueOf(false);
      arrayOfObject[2] = localFile;
      arrayOfObject[3] = localDexFile;
      Object localObject4 = localConstructor3.newInstance(arrayOfObject);
      localObject2 = localObject4;
    }
    catch (Exception localException1)
    {
      for (;;)
      {
        Object localObject2;
        b("Invoking constructor 1 failed: " + localException1);
        try
        {
          Constructor localConstructor2 = a(paramClass, new Class[] { File.class, ZipFile.class, DexFile.class });
          localConstructor2.setAccessible(true);
          Object localObject3 = localConstructor2.newInstance(new Object[] { localFile, null, localDexFile });
          localObject2 = localObject3;
        }
        catch (Exception localException2)
        {
          b("Invoking constructor 2 failed: " + localException2);
          try
          {
            Constructor localConstructor1 = a(paramClass, new Class[] { File.class, File.class, DexFile.class });
            localConstructor1.setAccessible(true);
            Object localObject1 = localConstructor1.newInstance(new Object[] { localFile, localFile, localDexFile });
            localObject2 = localObject1;
          }
          catch (Exception localException3)
          {
            b("Invoking constructor 3 failed: " + localException2);
            throw localException3;
          }
        }
      }
    }
    b("Dex element created: " + localObject2);
    return localObject2;
  }
  
  private String a(String paramString)
  {
    String str1 = new File(paramString).getName();
    String str2 = str1.substring(0, str1.lastIndexOf('.'));
    return str2 + ".dex";
  }
  
  private Constructor<?> a(Class<?> paramClass, Class<?>... paramVarArgs)
  {
    b("Trying constructor " + Arrays.toString(paramVarArgs));
    return paramClass.getConstructor(paramVarArgs);
  }
  
  private Field a(Class<?> paramClass, String paramString, boolean paramBoolean)
  {
    try
    {
      b("Getting field " + paramString + " from class " + paramClass);
      Field localField2 = paramClass.getDeclaredField(paramString);
      return localField2;
    }
    catch (Exception localException)
    {
      b("Error getting field " + paramString + " from class " + paramClass + ", available fields...");
      for (Field localField1 : paramClass.getDeclaredFields()) {
        b("field " + localField1.getName() + ", class: " + localField1.getType());
      }
      b("End");
      if (paramBoolean) {
        throw localException;
      }
    }
    return null;
  }
  
  private void a(int paramInt, Object paramObject)
  {
    try
    {
      Field localField1 = paramObject.getClass().getDeclaredField("file");
      Field localField2 = paramObject.getClass().getDeclaredField("zipFile");
      Field localField3 = paramObject.getClass().getDeclaredField("dexFile");
      localField1.setAccessible(true);
      localField2.setAccessible(true);
      localField3.setAccessible(true);
      File localFile = (File)localField1.get(paramObject);
      ZipFile localZipFile = (ZipFile)localField2.get(paramObject);
      DexFile localDexFile = (DexFile)localField3.get(paramObject);
      StringBuilder localStringBuilder1 = new StringBuilder().append("DexPathList.Element ").append(paramInt).append(" file:");
      String str1;
      String str2;
      label143:
      StringBuilder localStringBuilder3;
      if (localFile == null)
      {
        str1 = null;
        StringBuilder localStringBuilder2 = localStringBuilder1.append(str1).append(", zipFile:");
        if (localZipFile != null) {
          break label191;
        }
        str2 = null;
        localStringBuilder3 = localStringBuilder2.append(str2).append(", dexFile:");
        if (localDexFile != null) {
          break label201;
        }
      }
      label191:
      label201:
      String str3;
      for (Object localObject = null;; localObject = str3)
      {
        b((String)localObject);
        return;
        str1 = localFile.getAbsolutePath();
        break;
        str2 = localZipFile.getName();
        break label143;
        str3 = localDexFile.getName();
      }
      return;
    }
    catch (Exception localException)
    {
      b("logDexElement exception: " + localException);
    }
  }
  
  private void a(ClassLoader paramClassLoader, String paramString1, String paramString2)
  {
    String str = new File(paramString2, a(paramString1)).getAbsolutePath();
    b("optimizedDexFile: " + str);
    try
    {
      b(paramClassLoader, paramString1, str);
      return;
    }
    catch (Throwable localThrowable1)
    {
      a("ERROR " + localThrowable1, localThrowable1);
      localThrowable1.printStackTrace();
      try
      {
        c(paramClassLoader, paramString1, str);
        return;
      }
      catch (Throwable localThrowable2)
      {
        a("ERROR " + localThrowable2, localThrowable2);
        localThrowable2.printStackTrace();
        b("Error adjusting system ClassLoader!!!");
      }
    }
  }
  
  private void a(Object paramObject1, Field paramField, Object paramObject2)
  {
    int i = 0;
    Object[] arrayOfObject1 = (Object[])paramField.get(paramObject1);
    Object[] arrayOfObject2 = (Object[])Array.newInstance(arrayOfObject1[0].getClass(), 1 + arrayOfObject1.length);
    while (i < arrayOfObject1.length)
    {
      arrayOfObject2[i] = arrayOfObject1[i];
      i++;
    }
    arrayOfObject2[(-1 + arrayOfObject2.length)] = paramObject2;
    paramField.set(paramObject1, arrayOfObject2);
  }
  
  private void a(String paramString, Throwable paramThrowable)
  {
    ViberApplication.log(3, a, paramString, paramThrowable);
  }
  
  private boolean a(Context paramContext, String paramString1, File paramFile, String paramString2)
  {
    b("apkNeedsExtraction, comparing asset " + paramString1 + " and " + paramFile);
    if (!paramFile.exists()) {
      b("apkNeedsExtraction, " + paramFile + " does not exist, extraction necessary");
    }
    long l1;
    long l2;
    do
    {
      return true;
      l1 = 0L;
      try
      {
        ZipInputStream localZipInputStream = new ZipInputStream(paramContext.getAssets().open(paramString1));
        ZipEntry localZipEntry1;
        do
        {
          localZipEntry1 = localZipInputStream.getNextEntry();
          if (localZipEntry1 == null) {
            break;
          }
        } while (!paramString2.equals(localZipEntry1.getName()));
        b("apkNeedsExtraction, asset entry:" + localZipEntry1.getName() + ", crc:" + localZipEntry1.getCrc());
        l1 = localZipEntry1.getCrc();
        localZipInputStream.close();
        if (l1 == -1L)
        {
          b("asset crc = -1, forcing extraction");
          return true;
        }
      }
      catch (IOException localIOException)
      {
        b("apkNeedsExtraction exception: " + localIOException);
        return true;
      }
      ZipFile localZipFile = new ZipFile(paramFile);
      ZipEntry localZipEntry2 = localZipFile.getEntry(paramString2);
      localZipFile.close();
      if (localZipEntry2 == null)
      {
        b("Error finding entry " + paramString2 + " in " + paramFile + ", forcing extraction");
        return true;
      }
      b("apkNeedsExtraction, extracted entry:" + localZipEntry2.getName() + ", crc:" + localZipEntry2.getCrc());
      l2 = localZipEntry2.getCrc();
      if (l2 == -1L)
      {
        b("extracted crc = -1, forcing extraction");
        return true;
      }
      if (l1 != l2) {
        b("CRC's of " + localZipEntry2.getName() + " differ, extraction necessary");
      } else {
        b("CRC's of " + localZipEntry2.getName() + " are the same, extraction not necessary");
      }
    } while (l1 != l2);
    return false;
  }
  
  private void b(ClassLoader paramClassLoader, String paramString1, String paramString2)
  {
    int i = 0;
    b("trying new style api");
    b("Searching for ClassLoader ancestor with pathList field");
    Class localClass = paramClassLoader.getClass();
    Field localField1 = null;
    while ((localClass != null) && (localField1 == null))
    {
      b("Trying class: " + localClass);
      localField1 = a(localClass, "pathList", false);
      if (localField1 == null) {
        localClass = localClass.getSuperclass();
      }
    }
    if (localField1 == null)
    {
      b("pathList field not found, giving up");
      throw new Exception("pathList field not found");
    }
    localField1.setAccessible(true);
    Object localObject1 = localField1.get(paramClassLoader);
    Field localField2 = a(localObject1.getClass(), "dexElements", true);
    localField2.setAccessible(true);
    Object[] arrayOfObject1 = (Object[])localField2.get(localObject1);
    Object[] arrayOfObject2 = (Object[])Array.newInstance(arrayOfObject1[0].getClass(), 1 + arrayOfObject1.length);
    b("Current dexElements " + arrayOfObject1);
    for (int j = 0; j < arrayOfObject1.length; j++)
    {
      a(j, arrayOfObject1[j]);
      arrayOfObject2[j] = arrayOfObject1[j];
    }
    b("Current dexElements end");
    Object localObject2 = a(paramString1, paramString2, arrayOfObject1[0].getClass());
    arrayOfObject2[(-1 + arrayOfObject2.length)] = localObject2;
    b("New dexElements " + arrayOfObject2);
    while (i < arrayOfObject2.length)
    {
      a(i, arrayOfObject2[i]);
      i++;
    }
    b("New dexElements end");
    localField2.set(localObject1, arrayOfObject2);
    b("Successfully replaced dexElements");
  }
  
  private void b(String paramString)
  {
    ViberApplication.log(3, a, paramString);
  }
  
  private void c(ClassLoader paramClassLoader, String paramString1, String paramString2)
  {
    b("trying old style api");
    b("Searching for ClassLoader ancestor with mDexs field");
    Class localClass = paramClassLoader.getClass();
    Field localField1 = null;
    while ((localClass != null) && (localField1 == null))
    {
      b("Trying class: " + localClass);
      localField1 = a(localClass, "mDexs", false);
      if (localField1 == null) {
        localClass = localClass.getSuperclass();
      }
    }
    if (localField1 == null)
    {
      b("mDexs field not found, giving up new style api");
      throw new Exception("mDexs field not found");
    }
    Field localField2 = a(localClass, "mPaths", true);
    Field localField3 = a(localClass, "mFiles", true);
    Field localField4 = a(localClass, "mZips", true);
    localField1.setAccessible(true);
    localField2.setAccessible(true);
    localField3.setAccessible(true);
    localField4.setAccessible(true);
    b("creating DexFile, dexFilePath:" + paramString1);
    b("creating DexFile, optimizedDexFilePath:" + paramString2);
    DexFile localDexFile = DexFile.loadDex(paramString1, paramString2, 0);
    File localFile = new File(paramString1);
    b("appending/replacing mFiles array with " + localFile);
    a(paramClassLoader, localField3, localFile);
    ZipFile localZipFile = new ZipFile(paramString1);
    b("appending/replacing mZips array with " + localZipFile);
    a(paramClassLoader, localField4, localZipFile);
    b("appending/replacing mDexs array with " + localDexFile);
    a(paramClassLoader, localField1, localDexFile);
    b("appending/replacing mPaths array with " + paramString1);
    a(paramClassLoader, localField2, paramString1);
    b("Successfully appended/replaced arrays");
  }
  
  public ClassLoader a(Context paramContext, String paramString1, String paramString2)
  {
    if (paramString2 != null)
    {
      b("loadDexFromAssets " + paramString1 + ", testClass:" + paramString2);
      try
      {
        b("loadDexFromAssets first attempt...");
        ClassLoader localClassLoader2 = a(paramContext, paramString1, false, false);
        localClassLoader2.loadClass(paramString2);
        b("loadDexFromAssets, first attempt succeeded");
        return localClassLoader2;
      }
      catch (Exception localException)
      {
        a("loadDexFromAssets first attempt failed", localException);
        b("loadDexFromAssets second attempt...");
        ClassLoader localClassLoader1 = a(paramContext, paramString1, false, true);
        b("loadDexFromAssets, second attempt succeeded");
        return localClassLoader1;
      }
    }
    b("loadDexFromAssets " + paramString1);
    return a(paramContext, paramString1, false, false);
  }
  
  public void a(Context paramContext, String paramString)
  {
    a(paramContext, paramString, true, false);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.c.h
 * JD-Core Version:    0.7.0.1
 */