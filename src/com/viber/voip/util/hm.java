package com.viber.voip.util;

import android.text.Spannable;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.method.MovementMethod;
import android.webkit.WebView;
import android.widget.TextView;
import com.viber.voip.ViberApplication;
import com.viber.voip.ui.style.a;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class hm
{
  public static final hr a = new hn();
  public static final hr b = new ho();
  public static final ht c = new hp();
  
  private static final String a(String paramString, String[] paramArrayOfString, Matcher paramMatcher, ht paramht)
  {
    boolean bool = true;
    if (paramht != null) {}
    for (String str1 = paramht.a(paramMatcher, paramString);; str1 = paramString)
    {
      int i = 0;
      if (i < paramArrayOfString.length) {
        if (str1.regionMatches(bool, 0, paramArrayOfString[i], 0, paramArrayOfString[i].length()))
        {
          String str2 = paramArrayOfString[i];
          int j = paramArrayOfString[i].length();
          if (!str1.regionMatches(false, 0, str2, 0, j)) {
            str1 = paramArrayOfString[i] + str1.substring(paramArrayOfString[i].length());
          }
        }
      }
      for (;;)
      {
        if (!bool) {
          str1 = paramArrayOfString[0] + str1;
        }
        return str1;
        i++;
        break;
        bool = false;
      }
    }
  }
  
  private static final void a(TextView paramTextView)
  {
    MovementMethod localMovementMethod = paramTextView.getMovementMethod();
    if (((localMovementMethod == null) || (!(localMovementMethod instanceof LinkMovementMethod))) && (paramTextView.getLinksClickable())) {
      paramTextView.setMovementMethod(hu.a());
    }
  }
  
  public static void a(hs paramhs)
  {
    a.a(paramhs);
  }
  
  private static final void a(String paramString, int paramInt1, int paramInt2, Spannable paramSpannable)
  {
    paramSpannable.setSpan(new a(paramString, paramSpannable.toString()), paramInt1, paramInt2, 33);
  }
  
  private static final void a(ArrayList<bv> paramArrayList)
  {
    Collections.sort(paramArrayList, new hq());
    int i = paramArrayList.size();
    int j = 0;
    int k = i;
    bv localbv1;
    bv localbv2;
    int m;
    if (j < k - 1)
    {
      localbv1 = (bv)paramArrayList.get(j);
      localbv2 = (bv)paramArrayList.get(j + 1);
      if ((localbv1.b <= localbv2.b) && (localbv1.c > localbv2.b)) {
        if (localbv2.c <= localbv1.c) {
          m = j + 1;
        }
      }
    }
    for (;;)
    {
      if (m != -1)
      {
        paramArrayList.remove(m);
        k--;
        break;
        if (localbv1.c - localbv1.b > localbv2.c - localbv2.b)
        {
          m = j + 1;
          continue;
        }
        if (localbv1.c - localbv1.b >= localbv2.c - localbv2.b) {
          break label183;
        }
        m = j;
        continue;
      }
      j++;
      break;
      return;
      label183:
      m = -1;
    }
  }
  
  private static final void a(ArrayList<bv> paramArrayList, Spannable paramSpannable)
  {
    String str1 = paramSpannable.toString();
    int i = 0;
    for (;;)
    {
      String str2 = WebView.findAddress(str1);
      int j;
      if (str2 != null)
      {
        j = str1.indexOf(str2);
        if (j >= 0) {}
      }
      else
      {
        return;
      }
      bv localbv = new bv();
      int k = j + str2.length();
      localbv.b = (j + i);
      localbv.c = (i + k);
      str1 = str1.substring(k);
      i += k;
      try
      {
        String str3 = URLEncoder.encode(str2, "UTF-8");
        localbv.a = ("geo:0,0?q=" + str3);
        paramArrayList.add(localbv);
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException) {}
    }
  }
  
  private static final void a(ArrayList<bv> paramArrayList, Spannable paramSpannable, Pattern paramPattern, String[] paramArrayOfString, hr paramhr, ht paramht)
  {
    String str = paramSpannable.toString().toLowerCase();
    Matcher localMatcher = paramPattern.matcher(str);
    while (localMatcher.find())
    {
      int i = localMatcher.start();
      int j = localMatcher.end();
      if ((paramhr == null) || (paramhr.a(str, i, j)))
      {
        bv localbv = new bv();
        localbv.a = a(paramSpannable.subSequence(i, j).toString(), paramArrayOfString, localMatcher, paramht);
        localbv.b = i;
        localbv.c = j;
        paramArrayList.add(localbv);
      }
    }
  }
  
  public static final boolean a(Spannable paramSpannable, int paramInt)
  {
    if (paramInt == 0) {
      return false;
    }
    a[] arrayOfa = (a[])paramSpannable.getSpans(0, paramSpannable.length(), a.class);
    for (int i = -1 + arrayOfa.length; i >= 0; i--) {
      paramSpannable.removeSpan(arrayOfa[i]);
    }
    ArrayList localArrayList = new ArrayList();
    if ((paramInt & 0x1) != 0) {
      a(localArrayList, paramSpannable, fq.c, new String[] { "http://", "https://", "rtsp://" }, a, null);
    }
    if ((paramInt & 0x2) != 0) {
      a(localArrayList, paramSpannable, fq.f, new String[] { "mailto:" }, null, null);
    }
    if ((paramInt & 0x4) != 0) {
      a(localArrayList, paramSpannable, fq.g, new String[] { "tel:" }, b, c);
    }
    if ((paramInt & 0x8) != 0) {
      a(localArrayList, paramSpannable);
    }
    if ((paramInt & 0x16) != 0) {
      a(localArrayList, paramSpannable, fq.b, new String[] { "viber://" }, a, null);
    }
    a(localArrayList);
    if (localArrayList.size() == 0) {
      return false;
    }
    ViberApplication.log(3, "ViberLinkify", "addLinks text:" + paramSpannable + ", links.size:" + localArrayList.size());
    Iterator localIterator = localArrayList.iterator();
    while (localIterator.hasNext())
    {
      bv localbv = (bv)localIterator.next();
      a(localbv.a, localbv.b, localbv.c, paramSpannable);
    }
    localArrayList.clear();
    return true;
  }
  
  public static final boolean a(TextView paramTextView, int paramInt)
  {
    if (paramInt == 0) {
      return false;
    }
    CharSequence localCharSequence = paramTextView.getText();
    if ((localCharSequence instanceof Spannable))
    {
      if (a((Spannable)localCharSequence, paramInt))
      {
        a(paramTextView);
        return true;
      }
      return false;
    }
    SpannableString localSpannableString = SpannableString.valueOf(localCharSequence);
    if (a(localSpannableString, paramInt))
    {
      a(paramTextView);
      paramTextView.setText(localSpannableString);
      return true;
    }
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.hm
 * JD-Core Version:    0.7.0.1
 */