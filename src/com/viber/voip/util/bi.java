package com.viber.voip.util;

import com.viber.voip.ViberApplication;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

public class bi
{
  private static final String a = bi.class.getSimpleName();
  private HashSet<String> b = new HashSet();
  private boolean c;
  
  private void a(List<File> paramList, File paramFile, int paramInt)
  {
    File[] arrayOfFile = paramFile.listFiles();
    if (arrayOfFile == null) {
      return;
    }
    int i = arrayOfFile.length;
    int j = 0;
    label20:
    File localFile;
    if (j < i)
    {
      localFile = arrayOfFile[j];
      if ((!"..".equals(localFile.getName())) && (!".".equals(localFile.getName()))) {
        break label66;
      }
    }
    for (;;)
    {
      j++;
      break label20;
      break;
      label66:
      if (localFile.isDirectory()) {
        if (this.c)
        {
          if (paramInt >= 20) {
            break label114;
          }
          a(paramList, localFile, paramInt + 1);
        }
      }
      while (paramList.size() >= 50)
      {
        c("findGarbage: Too match files were collected. return to prevent OOM");
        return;
        label114:
        c("findGarbage: It is too deep to check folder");
        continue;
        if ((!this.b.contains(localFile.getAbsolutePath())) && (a(localFile))) {
          paramList.add(localFile);
        }
      }
    }
  }
  
  private static void c(String paramString)
  {
    ViberApplication.log(3, a, paramString);
  }
  
  public void a(String paramString)
  {
    if (paramString != null) {
      this.b.add(paramString);
    }
  }
  
  public void a(List<File> paramList)
  {
    if ((paramList != null) && (paramList.size() > 0))
    {
      c("Garbage: ================");
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        File localFile = (File)localIterator.next();
        c("Deleting " + localFile.getAbsolutePath());
        localFile.delete();
        try
        {
          c("ZZzZZzz....");
          Thread.sleep(200L);
        }
        catch (InterruptedException localInterruptedException)
        {
          localInterruptedException.printStackTrace();
        }
      }
      c("=========================");
      return;
    }
    c("No garbage detected");
  }
  
  public void a(boolean paramBoolean)
  {
    this.c = paramBoolean;
  }
  
  protected boolean a(File paramFile)
  {
    return true;
  }
  
  public List<File> b(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    a(localArrayList, new File(paramString), 0);
    return localArrayList;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.bi
 * JD-Core Version:    0.7.0.1
 */