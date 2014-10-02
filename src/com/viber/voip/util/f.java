package com.viber.voip.util;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Environment;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.widget.Toast;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.a;
import com.viber.voip.a.bc;
import com.viber.voip.a.u;
import com.viber.voip.messages.controller.c.as;
import com.viber.voip.messages.orm.entity.impl.ConversationEntityImpl;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.messages.orm.entity.impl.ParticipantInfoEntityImpl;
import com.viber.voip.registration.cp;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

public class f
  extends AsyncTask<Void, Void, Void>
{
  private static final String a = f.class.getSimpleName();
  private static final SimpleDateFormat b = new SimpleDateFormat("dd/MM/yyyy,hh:mm:ss aa");
  private static final SimpleDateFormat c = new SimpleDateFormat("dd/MM/yyyy,HH:mm:ss");
  private static String d;
  private static final String[] e = { "date", "type", "extra_mime", "body", "address" };
  private Context f;
  private int g;
  private ProgressDialog h;
  private List<String> i;
  private boolean j = true;
  private as k;
  private Map<String, Integer> l = new HashMap();
  
  public f(Context paramContext)
  {
    this.f = paramContext;
    this.i = Collections.synchronizedList(new ArrayList());
    d = Environment.getExternalStorageDirectory().getAbsolutePath() + "/" + this.f.getString(2131494094) + ".zip";
    this.j = DateFormat.is24HourFormat(this.f);
    this.k = as.a();
  }
  
  public static Uri a(String[] paramArrayOfString, String paramString)
  {
    File localFile;
    ZipOutputStream localZipOutputStream;
    for (int m = 0;; m++) {
      try
      {
        localFile = new File(paramString);
        if ((!localFile.createNewFile()) && (!localFile.exists())) {
          break label249;
        }
        localZipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(paramString)));
        byte[] arrayOfByte = new byte[2048];
        if (m >= paramArrayOfString.length) {
          break;
        }
        b("Compress adding: " + paramArrayOfString[m]);
        BufferedInputStream localBufferedInputStream = new BufferedInputStream(new FileInputStream(paramArrayOfString[m]), 2048);
        ZipEntry localZipEntry = new ZipEntry(paramArrayOfString[m].substring(1 + paramArrayOfString[m].lastIndexOf("/")));
        b("ZipEntry add: " + localZipEntry.getName());
        localZipOutputStream.putNextEntry(localZipEntry);
        for (;;)
        {
          int n = localBufferedInputStream.read(arrayOfByte, 0, 2048);
          if (n == -1) {
            break;
          }
          localZipOutputStream.write(arrayOfByte, 0, n);
        }
        localBufferedInputStream.close();
      }
      catch (Exception localException)
      {
        b("zip " + localException.toString());
        return null;
      }
    }
    localZipOutputStream.closeEntry();
    localZipOutputStream.close();
    label249:
    Uri localUri = Uri.fromFile(localFile);
    return localUri;
  }
  
  private String a(ConversationEntityImpl paramConversationEntityImpl)
  {
    String str1 = this.f.getString(2131493744);
    String str2;
    if (paramConversationEntityImpl.isConversationGroup()) {
      if (TextUtils.isEmpty(paramConversationEntityImpl.getGroupName()))
      {
        str2 = ViberApplication.getInstance().getString(2131494051);
        if (!this.l.containsKey(str2)) {
          break label221;
        }
        int m = ((Integer)this.l.get(str2)).intValue();
        Map localMap = this.l;
        int n = m + 1;
        localMap.put(str2, Integer.valueOf(n));
        str2 = str2 + "(" + n + ")";
      }
    }
    for (;;)
    {
      b("nameToCountCollection: " + this.l);
      return str2;
      str2 = paramConversationEntityImpl.getGroupName();
      break;
      ParticipantInfoEntityImpl localParticipantInfoEntityImpl = this.k.c(paramConversationEntityImpl.getNumber());
      if (localParticipantInfoEntityImpl == null)
      {
        str2 = str1;
        break;
      }
      if (!TextUtils.isEmpty(localParticipantInfoEntityImpl.getCommonContactName(false)))
      {
        str2 = localParticipantInfoEntityImpl.getCommonContactName(false);
        break;
      }
      str2 = localParticipantInfoEntityImpl.getNumber();
      break;
      label221:
      this.l.put(str2, Integer.valueOf(0));
    }
  }
  
  private String a(String paramString1, String paramString2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramString1.equals("image")) {
      localStringBuilder.append(this.f.getString(2131494090));
    }
    for (;;)
    {
      return localStringBuilder.toString();
      if (paramString1.equals("video")) {
        localStringBuilder.append(this.f.getString(2131494091));
      } else if (paramString1.equals("location")) {
        localStringBuilder.append(this.f.getString(2131494092));
      } else if (paramString1.equals("sticker")) {
        localStringBuilder.append(this.f.getString(2131493921));
      } else if (paramString1.equals("location")) {
        localStringBuilder.append(this.f.getString(2131494092));
      } else if (paramString1.equals("animated_message")) {
        localStringBuilder.append(this.f.getString(2131494160));
      } else {
        localStringBuilder.append(paramString2);
      }
    }
  }
  
  private void a(long paramLong, h paramh)
  {
    String str1 = a(this.k.c(paramLong));
    String str2 = Environment.getExternalStorageDirectory().getAbsolutePath() + "/" + str1 + ".csv";
    String str3 = ViberApplication.getInstance().getRegistrationValues().f();
    b("writeConversationToFile threadId = " + paramLong + ", conversationName = " + str1 + ", filePath = " + str2);
    String str4 = this.f.getString(2131494093);
    List localList = this.k.s(paramLong);
    b("msg count = " + localList.size() + " where thread id = " + paramLong);
    if (localList.isEmpty())
    {
      paramh.a(null);
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = localList.iterator();
    if (localIterator.hasNext())
    {
      MessageEntityImpl localMessageEntityImpl = (MessageEntityImpl)localIterator.next();
      long l1 = localMessageEntityImpl.getDate();
      String str5;
      label257:
      String str6;
      String str7;
      String str8;
      String str9;
      if (this.j)
      {
        str5 = c.format(new Date(l1));
        int m = localMessageEntityImpl.getType();
        str6 = localMessageEntityImpl.getMimeType();
        str7 = localMessageEntityImpl.getBody();
        str8 = localMessageEntityImpl.getRecipientNumber();
        if (m != 0) {
          break label463;
        }
        str9 = w.a(this.f, str8, "unknown");
        label304:
        if (m != 0) {
          break label470;
        }
      }
      for (;;)
      {
        localStringBuilder.append(str5);
        localStringBuilder.append(",");
        localStringBuilder.append(str9);
        localStringBuilder.append(",");
        localStringBuilder.append(str8);
        localStringBuilder.append(",");
        localStringBuilder.append(a(str6, str7));
        localStringBuilder.append("\r\n");
        b("append info: date = " + str5 + ", person = " + str9 + ", body = " + str7 + ", mimeType = " + str6);
        break;
        str5 = b.format(new Date(l1));
        break label257;
        label463:
        str9 = str4;
        break label304;
        label470:
        str8 = str3;
      }
    }
    try
    {
      b(str2, localStringBuilder.toString());
      paramh.a(str2);
      return;
    }
    catch (IOException localIOException)
    {
      b("createAndWriteToFile exception: " + localIOException);
      paramh.a(null);
    }
  }
  
  private void a(Uri paramUri)
  {
    b("sentEmailIntent with zip uri = " + paramUri);
    Intent localIntent = new Intent("android.intent.action.SEND");
    localIntent.setFlags(268435456);
    localIntent.setType("application/x-compressed");
    localIntent.putExtra("android.intent.extra.SUBJECT", this.f.getString(2131494095));
    localIntent.putExtra("android.intent.extra.TEXT", this.f.getString(2131494096));
    localIntent.putExtra("android.intent.extra.STREAM", paramUri);
    this.f.startActivity(Intent.createChooser(localIntent, this.f.getString(2131494106)));
  }
  
  private void a(String[] paramArrayOfString)
  {
    int m = paramArrayOfString.length;
    for (int n = 0; n < m; n++)
    {
      String str = paramArrayOfString[n];
      new File(str).delete();
      b("file was deleted! path = " + str);
    }
  }
  
  private static void b(String paramString)
  {
    ViberApplication.log(4, a, paramString);
  }
  
  private void b(String paramString1, String paramString2)
  {
    b("createAndWriteToFile filePath = " + paramString1);
    File localFile = new File(paramString1);
    if ((localFile.createNewFile()) || (localFile.exists()))
    {
      b("file was created!");
      FileOutputStream localFileOutputStream = new FileOutputStream(paramString1);
      localFileOutputStream.write(239);
      localFileOutputStream.write(187);
      localFileOutputStream.write(191);
      PrintWriter localPrintWriter = new PrintWriter(new OutputStreamWriter(localFileOutputStream, "UTF-8"));
      localPrintWriter.print(paramString2);
      localPrintWriter.flush();
      localPrintWriter.close();
    }
  }
  
  protected Void a(Void... paramVarArgs)
  {
    g localg;
    List localList;
    if (com.viber.voip.messages.extras.image.h.a())
    {
      localg = new g(this);
      localList = this.k.w();
      if (!localList.isEmpty()) {
        break label41;
      }
      localg.a(null);
    }
    for (;;)
    {
      return null;
      label41:
      this.g = localList.size();
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext()) {
        a(((ConversationEntityImpl)localIterator.next()).getId(), localg);
      }
    }
  }
  
  protected void onPreExecute()
  {
    super.onPreExecute();
    if (com.viber.voip.messages.extras.image.h.a())
    {
      this.h = ProgressDialog.show(this.f, null, this.f.getString(2131494089));
      return;
    }
    bc localbc = bc.a();
    u localu = a.z;
    a.z.getClass();
    localbc.a(localu.b("337"));
    Toast.makeText(this.f, this.f.getString(2131493941), 0).show();
    b("ERROR SDCARD is disable");
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.f
 * JD-Core Version:    0.7.0.1
 */