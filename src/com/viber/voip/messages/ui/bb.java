package com.viber.voip.messages.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ImageSpan;
import android.widget.TextView;
import com.viber.voip.messages.extras.image.h;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class bb
{
  public static final Pattern a = Pattern.compile("[޲-ࠇ]");
  private static final Pattern d = Pattern.compile(c() + "|" + b() + "|([-])|(" + a() + ")|(\\([0-9a-zA-Z_\\!\\$\\?]+?\\))");
  final int b;
  final int c;
  private Context e;
  private bd f;
  private boolean g = false;
  private boolean h;
  
  public bb(Context paramContext)
  {
    this.e = paramContext;
    this.f = bd.a();
    this.b = h.a(this.e, 2.0F);
    this.c = h.a(this.e, 1.0F);
  }
  
  public bb(Context paramContext, boolean paramBoolean)
  {
    this(paramContext);
    this.g = paramBoolean;
  }
  
  private Drawable a(bf parambf, int paramInt, boolean paramBoolean)
  {
    Bitmap localBitmap1 = this.f.a(parambf);
    Bitmap localBitmap2;
    if (paramBoolean)
    {
      localBitmap2 = Bitmap.createBitmap(localBitmap1.getWidth(), localBitmap1.getHeight(), Bitmap.Config.ARGB_8888);
      Canvas localCanvas = new Canvas(localBitmap2);
      localCanvas.drawColor(this.e.getResources().getColor(2131296339));
      localCanvas.drawBitmap(localBitmap1, 0.0F, 0.0F, null);
    }
    for (;;)
    {
      BitmapDrawable localBitmapDrawable = new BitmapDrawable(this.e.getResources(), localBitmap2);
      localBitmapDrawable.setBounds(0, 0, paramInt, paramInt);
      InsetDrawable localInsetDrawable = new InsetDrawable(localBitmapDrawable, this.b, 0, this.c, 0);
      localInsetDrawable.setBounds(0, 0, paramInt + this.b + this.c, paramInt);
      return localInsetDrawable;
      localBitmap2 = localBitmap1;
    }
  }
  
  private static String a()
  {
    String str1 = new String(Character.toChars(127744));
    String str2 = new String(Character.toChars(128767));
    return "[" + str1 + "-" + str2 + "]";
  }
  
  private void a(Spannable paramSpannable, int paramInt1, bf parambf, int paramInt2, int paramInt3, boolean paramBoolean1, boolean paramBoolean2)
  {
    Drawable localDrawable = a(parambf, paramInt1, paramBoolean2);
    Object localObject;
    if (paramBoolean1) {
      if (this.h) {
        localObject = new bc(localDrawable, 0, this.h);
      }
    }
    for (;;)
    {
      paramSpannable.setSpan(localObject, paramInt2, paramInt3, 33);
      return;
      localObject = new bc(localDrawable, 0);
      continue;
      localObject = new ImageSpan(localDrawable, 0);
    }
  }
  
  private static String b()
  {
    String str1 = new String(Character.toChars(9749));
    String str2 = new String(Character.toChars(10084));
    return "([" + str1 + "-" + str2 + "])";
  }
  
  private static String c()
  {
    StringBuilder localStringBuilder = new StringBuilder(3 * bd.a().b().size());
    localStringBuilder.append('(');
    Iterator localIterator = bd.a().b().keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localStringBuilder.append("(^|\\s)");
      localStringBuilder.append(Pattern.quote(str));
      localStringBuilder.append("(?!\\S)");
      localStringBuilder.append('|');
    }
    localStringBuilder.replace(-1 + localStringBuilder.length(), localStringBuilder.length(), ")");
    return localStringBuilder.toString();
  }
  
  public void a(TextView paramTextView, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    int i = 0;
    CharSequence localCharSequence = paramTextView.getText();
    if (localCharSequence.length() == 0) {}
    label66:
    label204:
    label350:
    label357:
    label371:
    for (;;)
    {
      return;
      int j = paramInt3 - paramInt2;
      int m;
      int k;
      if ((localCharSequence instanceof Spannable))
      {
        Spannable localSpannable = (Spannable)localCharSequence;
        m = paramInt2 - 1;
        if (m >= 0)
        {
          int i5 = Math.max(paramInt2 - this.f.c(), 0);
          int i2;
          if (m > i5)
          {
            int i6 = localCharSequence.charAt(m);
            if ((i6 != 40) && (i6 != 41)) {}
          }
          else
          {
            if (localCharSequence.charAt(m) != '(') {
              break label357;
            }
            if (paramInt3 <= 0) {
              break label350;
            }
            i2 = -1 + Math.min(paramInt3 + this.f.c(), localCharSequence.length());
          }
          int n;
          for (int i3 = paramInt3;; i3++) {
            if (i3 < i2)
            {
              int i4 = localCharSequence.charAt(i3);
              if ((i4 != 40) && (i4 != 41)) {}
            }
            else
            {
              if ((i3 > i2) || (localCharSequence.charAt(i3) != ')')) {
                break label350;
              }
              k = i3 + 1;
              n = k - m;
              if (n <= 0) {
                break;
              }
              ImageSpan[] arrayOfImageSpan = (ImageSpan[])localSpannable.getSpans(m, k, ImageSpan.class);
              int i1 = arrayOfImageSpan.length;
              while (i < i1)
              {
                ImageSpan localImageSpan = arrayOfImageSpan[i];
                if ((localSpannable.getSpanEnd(localImageSpan) > m) && (localSpannable.getSpanStart(localImageSpan) < k)) {
                  localSpannable.removeSpan(localImageSpan);
                }
                i++;
              }
              m--;
              break label66;
            }
          }
          j = n;
        }
      }
      for (;;)
      {
        if (j <= 0) {
          break label371;
        }
        if (this.g)
        {
          b(paramTextView, paramInt1, m, k, paramBoolean);
          return;
        }
        c(paramTextView, paramInt1, m, k, paramBoolean);
        return;
        k = paramInt3;
        break label204;
        m = paramInt2;
        break;
        k = paramInt3;
        m = paramInt2;
      }
    }
  }
  
  public void a(TextView paramTextView, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean, String paramString)
  {
    CharSequence localCharSequence = paramTextView.getText();
    int i;
    Object localObject;
    boolean[] arrayOfBoolean;
    if ((localCharSequence instanceof Spannable))
    {
      Spannable localSpannable = (Spannable)localCharSequence;
      i = 0;
      localObject = localSpannable;
      arrayOfBoolean = new boolean[localCharSequence.length()];
      if (paramString == null) {
        break label146;
      }
    }
    int i8;
    label146:
    for (String str1 = paramString.trim();; str1 = null)
    {
      if (TextUtils.isEmpty(str1)) {
        break label493;
      }
      Matcher localMatcher2 = Pattern.compile(Pattern.quote(str1)).matcher(paramTextView.getText().subSequence(paramInt2, paramInt3));
      i8 = 0;
      while (localMatcher2.find())
      {
        int i9 = localMatcher2.start();
        while (i9 < localMatcher2.end())
        {
          arrayOfBoolean[i9] = true;
          i9++;
          i8 = 1;
        }
      }
      localObject = new SpannableStringBuilder(paramTextView.getText());
      i = 1;
      break;
    }
    label340:
    label493:
    for (int j = i8;; j = 0)
    {
      Matcher localMatcher1 = d.matcher(paramTextView.getText().subSequence(paramInt2, paramInt3));
      int k = 0;
      while (localMatcher1.find())
      {
        String str2 = localMatcher1.group(0);
        if ((str2.length() == 1) || (str2.length() == 2))
        {
          if (str2.length() == 1) {}
          bf localbf1;
          int n;
          int i1;
          int i2;
          for (int m = str2.charAt(0);; m = Character.toCodePoint(str2.charAt(0), str2.charAt(1)))
          {
            localbf1 = this.f.a(m);
            if (localbf1 == null) {
              localbf1 = this.f.c(str2.trim());
            }
            if (localbf1 == null) {
              break;
            }
            n = paramInt2 + localMatcher1.start();
            i1 = paramInt2 + localMatcher1.end();
            i2 = 0;
            if (j == 0) {
              break label340;
            }
            for (int i3 = n; (i3 < i1) && (i2 == 0); i3++) {
              i2 = arrayOfBoolean[i3];
            }
          }
          a((Spannable)localObject, paramInt1, localbf1, n, i1, paramBoolean, i2);
          k = 1;
        }
        else
        {
          bf localbf2 = this.f.a(str2);
          if (localbf2 == null) {
            localbf2 = this.f.c(str2.trim());
          }
          if (localbf2 != null)
          {
            int i4 = paramInt2 + localMatcher1.start();
            int i5 = paramInt2 + localMatcher1.end();
            int i6 = 0;
            if (j != 0) {
              for (int i7 = i4; (i7 < i5) && (i6 == 0); i7++) {
                i6 = arrayOfBoolean[i7];
              }
            }
            a((Spannable)localObject, paramInt1, localbf2, i4, i5, paramBoolean, i6);
            k = 1;
          }
        }
      }
      if ((i != 0) && (k != 0)) {
        paramTextView.setText((CharSequence)localObject);
      }
      return;
    }
  }
  
  public void a(TextView paramTextView, int paramInt1, int paramInt2, boolean paramBoolean, String paramString)
  {
    a(paramTextView, paramInt1, paramInt2, paramTextView.getText().length(), paramBoolean, paramString);
  }
  
  public void a(TextView paramTextView, int paramInt, boolean paramBoolean)
  {
    a(paramTextView, paramInt, paramBoolean, null);
  }
  
  public void a(TextView paramTextView, int paramInt, boolean paramBoolean, String paramString)
  {
    a(paramTextView, paramInt, 0, paramBoolean, paramString);
  }
  
  public void a(boolean paramBoolean)
  {
    this.h = paramBoolean;
  }
  
  public void b(TextView paramTextView, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    CharSequence localCharSequence = paramTextView.getText();
    int i;
    Object localObject;
    if ((localCharSequence instanceof Spannable))
    {
      Spannable localSpannable = (Spannable)localCharSequence;
      i = 0;
      localObject = localSpannable;
    }
    int j;
    for (;;)
    {
      Matcher localMatcher = a.matcher(paramTextView.getText().subSequence(paramInt2, paramInt3));
      j = 0;
      while (localMatcher.find())
      {
        String str = localMatcher.group(0);
        bf localbf = this.f.b(str);
        if (str != null)
        {
          int k = paramInt2 + localMatcher.start();
          a((Spannable)localObject, paramInt1, localbf, k, k + 1, paramBoolean, false);
          j = 1;
        }
      }
      localObject = new SpannableStringBuilder(paramTextView.getText());
      i = 1;
    }
    if ((i != 0) && (j != 0)) {
      paramTextView.setText((CharSequence)localObject);
    }
  }
  
  public void c(TextView paramTextView, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    a(paramTextView, paramInt1, paramInt2, paramInt3, paramBoolean, null);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.bb
 * JD-Core Version:    0.7.0.1
 */