package com.viber.voip.util;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.CharArrayBuffer;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.support.v4.text.BidiFormatter;
import android.text.Editable;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.TextView;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.conversation.ap;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;

public class gj
{
  private static final Pattern a = Pattern.compile("((?:%\\d+\\$s)|(?:%s))");
  private static final int[][] b = { { 3 }, { 3 }, { 4 }, { 3, 6 }, { 3, 6 }, { 3, 7 }, { 4, 8 }, { 3, 6, 9 }, { 3, 6, 10 }, { 3, 7, 11 }, { 4, 8, 12 } };
  private static Map<String, Typeface> c = new HashMap();
  
  public static int a(TextView paramTextView, String paramString)
  {
    return (int)paramTextView.getPaint().measureText(paramString);
  }
  
  private static Typeface a(Context paramContext, String paramString)
  {
    if ((paramString != null) && (paramString.equals("sans-serif-light"))) {}
    for (String str = "fonts/Roboto-Light.ttf";; str = "fonts/Roboto-Regular.ttf")
    {
      if (!c.containsKey(str))
      {
        Typeface localTypeface = Typeface.createFromAsset(paramContext.getAssets(), str);
        c.put(str, localTypeface);
      }
      return (Typeface)c.get(str);
    }
  }
  
  public static String a(int paramInt, ap paramap)
  {
    if (paramap != null)
    {
      BidiFormatter localBidiFormatter = BidiFormatter.getInstance();
      StringBuilder localStringBuilder = new StringBuilder();
      CharArrayBuffer localCharArrayBuffer = new CharArrayBuffer(new char[100]);
      int i = 0;
      while (paramInt < paramap.getCount())
      {
        paramap.a(paramInt, localCharArrayBuffer);
        if (localCharArrayBuffer.sizeCopied == 0)
        {
          paramInt++;
        }
        else
        {
          if (localStringBuilder.length() <= 100) {
            break label122;
          }
          localStringBuilder.append(' ').append('.').append('.').append('.');
        }
      }
      ViberApplication.log("getGroupConversationparticipantNames; at last: " + localStringBuilder.toString());
      return localStringBuilder.toString();
      label122:
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append(',').append(' ');
      }
      int j = 0;
      label144:
      char c1;
      label177:
      String str;
      if (j < localCharArrayBuffer.sizeCopied)
      {
        c1 = localCharArrayBuffer.data[j];
        if ((j <= 2) || (c1 != ' ')) {}
      }
      else
      {
        if (i > localStringBuilder.length()) {
          break label341;
        }
        str = localStringBuilder.toString().substring(i, localStringBuilder.length());
        label201:
        ViberApplication.log("getGroupConversationparticipantNames; buffer: " + str);
        if (!localBidiFormatter.isRtl(str)) {
          break label348;
        }
        localStringBuilder.insert(i, "‏");
        ViberApplication.log("getGroupConversationparticipantNames; string is rtl,insert pos: " + i);
      }
      for (;;)
      {
        ViberApplication.log("getGroupConversationparticipantNames; after changing: " + localStringBuilder.toString());
        i = 2 + localStringBuilder.length();
        break;
        if (j > 14)
        {
          localStringBuilder.append('.').append('.').append('.');
          break label177;
        }
        localStringBuilder.append(c1);
        j++;
        break label144;
        label341:
        str = "";
        break label201;
        label348:
        localStringBuilder.insert(i, "‎");
        ViberApplication.log("getGroupConversationparticipantNames; string is ltr,insert pos: " + i);
      }
    }
    return "";
  }
  
  public static String a(long paramLong)
  {
    if ((paramLong > 999L) && (paramLong < 10000L))
    {
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = Long.valueOf(paramLong / 1000L);
      return String.format("%dK", arrayOfObject3);
    }
    if ((paramLong > 99999L) && (paramLong < 1000000L))
    {
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Long.valueOf(paramLong / 1000L);
      return String.format("%dk", arrayOfObject2);
    }
    if (paramLong > 999999L)
    {
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Long.valueOf(paramLong / 1000000L);
      return String.format("%dm", arrayOfObject1);
    }
    return String.valueOf(paramLong);
  }
  
  public static String a(String paramString)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(paramString.getBytes());
      byte[] arrayOfByte = localMessageDigest.digest();
      StringBuffer localStringBuffer = new StringBuffer();
      for (int i = 0; i < arrayOfByte.length; i++) {
        localStringBuffer.append(Integer.toHexString(0xFF & arrayOfByte[i]));
      }
      String str = localStringBuffer.toString();
      return str;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      localNoSuchAlgorithmException.printStackTrace();
    }
    return "";
  }
  
  public static String a(String paramString, int paramInt)
  {
    int i = paramString.indexOf(' ', 2);
    if ((paramInt != -1) && ((i > paramInt) || ((i == -1) && (paramString.length() > paramInt)))) {
      paramString = paramString.substring(0, paramInt);
    }
    while ((i == -1) || ((paramInt != -1) && (i > paramInt))) {
      return paramString;
    }
    return paramString.substring(0, i);
  }
  
  public static void a(Editable paramEditable)
  {
    int i = paramEditable.length();
    if (i > b.length) {}
    for (;;)
    {
      return;
      if (i > 5)
      {
        b(paramEditable);
        int j = paramEditable.length();
        for (int i1 : b[(j - 6)]) {
          paramEditable.replace(i1 + ???, i1 + ???, "-");
        }
        for (int n = paramEditable.length(); (n > 0) && (paramEditable.charAt(n - 1) == '-'); n--) {
          paramEditable.delete(n - 1, n);
        }
      }
    }
  }
  
  public static void a(TextView paramTextView)
  {
    Layout localLayout = paramTextView.getLayout();
    if (localLayout != null)
    {
      int i = paramTextView.getWidth();
      float f1 = 0.0F;
      for (int j = 0; j < localLayout.getLineCount(); j++)
      {
        float f2 = localLayout.getLineWidth(j);
        if (f2 > f1) {
          f1 = f2;
        }
      }
      int k = (int)f1;
      if (i < k) {
        paramTextView.setWidth(k);
      }
    }
  }
  
  public static void a(TextView paramTextView, AttributeSet paramAttributeSet)
  {
    if ((paramTextView.isInEditMode()) || (gl.g())) {}
    Typeface localTypeface1;
    int j;
    do
    {
      return;
      localTypeface1 = null;
      if (paramAttributeSet != null)
      {
        int[] arrayOfInt = { 16843692 };
        TypedArray localTypedArray = paramTextView.getContext().obtainStyledAttributes(paramAttributeSet, arrayOfInt);
        int i = localTypedArray.length();
        localTypeface1 = null;
        if (i > 0)
        {
          localTypeface1 = a(paramTextView.getContext(), localTypedArray.getString(0));
          localTypedArray.recycle();
        }
      }
      Typeface localTypeface2 = paramTextView.getTypeface();
      j = 0;
      if (localTypeface2 != null) {
        j = paramTextView.getTypeface().getStyle();
      }
    } while (localTypeface1 == null);
    paramTextView.setTypeface(localTypeface1, j);
  }
  
  public static boolean a(String paramString1, String paramString2)
  {
    boolean bool;
    if (paramString1 == paramString2) {
      bool = true;
    }
    do
    {
      do
      {
        return bool;
        if (paramString1 != null) {
          break;
        }
        bool = false;
      } while (paramString2 != null);
      if (paramString1 == null) {
        break;
      }
      bool = false;
    } while (paramString2 == null);
    return paramString1.equals(paramString2);
  }
  
  public static String b(String paramString)
  {
    if ((paramString != null) && (paramString.length() > 3)) {
      paramString = paramString.substring(0, 3) + "***";
    }
    return paramString;
  }
  
  private static void b(Editable paramEditable)
  {
    int i = 0;
    while (i < paramEditable.length()) {
      if (paramEditable.charAt(i) == '-') {
        paramEditable.delete(i, i + 1);
      } else {
        i++;
      }
    }
  }
  
  public static boolean c(String paramString)
  {
    return TextUtils.isEmpty(paramString);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.gj
 * JD-Core Version:    0.7.0.1
 */