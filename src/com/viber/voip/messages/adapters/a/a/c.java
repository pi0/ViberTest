package com.viber.voip.messages.adapters.a.a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.BackgroundColorSpan;
import android.text.style.TextAppearanceSpan;
import android.util.Pair;
import android.view.View;
import android.widget.TextView;
import android.widget.TextView.BufferType;
import com.viber.voip.ViberApplication;
import com.viber.voip.e.u;
import com.viber.voip.messages.h;
import com.viber.voip.messages.j;
import com.viber.voip.messages.ui.bb;
import com.viber.voip.messages.ui.bd;
import com.viber.voip.phone.v;
import com.viber.voip.util.ak;
import com.viber.voip.util.fq;
import com.viber.voip.util.hd;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class c<T extends com.viber.voip.messages.adapters.a.a>
  extends com.viber.voip.ui.b.a<T, com.viber.voip.messages.adapters.a.b.a>
{
  protected final TextView a;
  protected final TextView b;
  protected final TextView c;
  protected final TextView d;
  protected final h e;
  protected final bb f;
  protected final SpannableStringBuilder g;
  
  protected c(View paramView, h paramh, bb parambb)
  {
    super(paramView);
    this.e = paramh;
    this.f = parambb;
    this.g = new SpannableStringBuilder();
    this.a = ((TextView)paramView.findViewById(2131165410));
    this.c = ((TextView)paramView.findViewById(2131165415));
    this.b = ((TextView)paramView.findViewById(2131166151));
    if (this.b != null) {
      this.b.setVisibility(8);
    }
    this.d = ((TextView)paramView.findViewById(2131165411));
  }
  
  private void a(int paramInt, T paramT, String paramString1, String paramString2, com.viber.voip.messages.adapters.a.b.a parama, boolean paramBoolean)
  {
    String str1 = this.e.a(paramInt, paramString1, paramT.t(), true);
    boolean bool = TextUtils.isEmpty(str1);
    StringBuilder localStringBuilder = new StringBuilder().append(paramString2);
    String str2;
    String str3;
    String str4;
    label90:
    SpannableStringBuilder localSpannableStringBuilder2;
    Context localContext;
    if ("animated_message".equals(j.a(paramInt)))
    {
      str2 = " ";
      str3 = str2;
      SpannableStringBuilder localSpannableStringBuilder1 = this.g.append(str3);
      if (!bool) {
        break label190;
      }
      str4 = parama.c();
      localSpannableStringBuilder1.append(str4);
      localSpannableStringBuilder2 = this.g;
      localContext = this.c.getContext();
      if (!paramBoolean) {
        break label197;
      }
    }
    label190:
    label197:
    for (int i = 2131558706;; i = 2131558707)
    {
      localSpannableStringBuilder2.setSpan(new TextAppearanceSpan(localContext, i), 0, str3.length(), 33);
      this.c.setText(this.g);
      this.f.a(this.c, bd.d, str3.length(), true, parama.g());
      return;
      str2 = ": ";
      break;
      str4 = str1;
      break label90;
    }
  }
  
  private void a(T paramT, com.viber.voip.messages.adapters.a.b.a parama, boolean paramBoolean1, boolean paramBoolean2, String paramString)
  {
    String str1 = paramT.n();
    int i = parama.f();
    String str2 = parama.g();
    String str3;
    int j;
    if (!TextUtils.isEmpty(str2))
    {
      str3 = str2.trim();
      if ((str1 != null) && (!"text".equals(str1))) {
        break label195;
      }
      j = 1;
      boolean bool = fq.g.matcher(str3).matches();
      String str4 = null;
      if (bool) {
        str4 = hd.a(ViberApplication.getInstance(), str3, null);
      }
      if ((!a(this.a, str3, 20, i)) && (str4 != null)) {
        a(this.a, str4, 20, i);
      }
      if (!paramBoolean2) {
        break label201;
      }
      if ((!a(this.c, str3, 20, i)) && (str4 != null)) {
        a(this.c, str4, 20, i);
      }
      if ((j != 0) && (!paramBoolean1)) {
        a(this.c, str3, 27 - paramString.length(), i);
      }
    }
    label195:
    label201:
    while (j == 0)
    {
      return;
      j = 0;
      break;
    }
    a(this.c, str3, 60, i);
  }
  
  private boolean a(TextView paramTextView, String paramString, int paramInt1, int paramInt2)
  {
    if ((paramTextView.getText() == null) || (paramTextView.getText().length() == 0)) {
      return false;
    }
    String str1 = paramTextView.getText().toString();
    int i = str1.toLowerCase().indexOf(paramString.toLowerCase());
    if (i == -1) {
      return false;
    }
    int j = i + paramString.length();
    int k;
    if (j > paramInt1)
    {
      k = i - paramInt1 / 3;
      if (j - k > paramInt1)
      {
        k += j - k - paramInt1;
        if (k > i)
        {
          if (i != 0) {
            str1 = "..." + str1.substring(i);
          }
          paramTextView.setText(str1);
          str1.toLowerCase().indexOf(paramString.toLowerCase());
        }
      }
    }
    for (String str2 = str1;; str2 = str1)
    {
      if (!(paramTextView.getText() instanceof Spannable)) {
        paramTextView.setText(paramTextView.getText(), TextView.BufferType.SPANNABLE);
      }
      Spannable localSpannable = (Spannable)paramTextView.getText();
      Matcher localMatcher = Pattern.compile(Pattern.quote(paramString.toLowerCase())).matcher(str2.toLowerCase());
      while (localMatcher.find()) {
        localSpannable.setSpan(new BackgroundColorSpan(paramInt2), localMatcher.start(), localMatcher.end(), 0);
      }
      paramTextView.setText(localSpannable);
      return true;
      i = k;
      break;
    }
  }
  
  @SuppressLint({"InlinedApi"})
  public void a(T paramT, com.viber.voip.messages.adapters.a.b.a parama)
  {
    boolean bool1 = paramT.e();
    boolean bool2 = paramT.l();
    boolean bool3 = paramT.d();
    int i;
    boolean bool4;
    int j;
    label89:
    boolean bool6;
    label112:
    boolean bool7;
    label130:
    String str1;
    String str2;
    int k;
    String str4;
    int m;
    String str5;
    label227:
    String str6;
    label269:
    String str7;
    label287:
    int i2;
    label305:
    Object localObject2;
    label360:
    int i4;
    label384:
    boolean bool9;
    label422:
    Object localObject1;
    boolean bool8;
    label430:
    TextView localTextView1;
    Resources localResources;
    if (!TextUtils.isEmpty(parama.g()))
    {
      i = 1;
      bool4 = paramT.m();
      boolean bool5 = ViberApplication.getInstance().getPhoneApp().a().f(paramT.a());
      if ((!paramT.A()) || (!ViberApplication.isTablet()) || (parama.k())) {
        break label513;
      }
      j = 1;
      if (!(paramT instanceof com.viber.voip.messages.adapters.a.b)) {
        break label525;
      }
      if (((com.viber.voip.messages.adapters.a.b)paramT).D() != 3) {
        break label519;
      }
      bool6 = true;
      if ((bool3) && (j == 0) && (!bool5)) {
        break label531;
      }
      bool7 = true;
      str1 = parama.g();
      str2 = parama.c();
      k = paramT.t();
      String str3 = paramT.i();
      str4 = paramT.j();
      m = paramT.k();
      str5 = paramT.n();
      this.c.setText("");
      this.g.clear();
      if ((Build.VERSION.SDK_INT < 11) || (this.c.getLayerType() == 1)) {
        break label537;
      }
      this.c.setLayerType(1, null);
      if (!bool1) {
        break label848;
      }
      TextView localTextView2 = this.a;
      if (TextUtils.isEmpty(str3)) {
        str3 = parama.j();
      }
      localTextView2.setText(str3);
      if (m != 0) {
        break label558;
      }
      str6 = parama.i();
      if (!(paramT instanceof com.viber.voip.messages.adapters.a.b)) {
        break label565;
      }
      str7 = ((com.viber.voip.messages.adapters.a.b)paramT).K();
      if (!(paramT instanceof com.viber.voip.messages.adapters.a.b)) {
        break label573;
      }
      i2 = ((com.viber.voip.messages.adapters.a.b)paramT).J();
      if (bool2) {
        break label691;
      }
      if (!TextUtils.isEmpty(str7)) {
        break label603;
      }
      if (i == 0) {
        break label579;
      }
      localObject2 = str6 + ": ";
      this.g.append((CharSequence)localObject2).append(str2);
      SpannableStringBuilder localSpannableStringBuilder3 = this.g;
      Context localContext3 = this.c.getContext();
      if (!bool7) {
        break label596;
      }
      i4 = 2131558706;
      localSpannableStringBuilder3.setSpan(new TextAppearanceSpan(localContext3, i4), 0, ((String)localObject2).length(), 33);
      this.c.setText(this.g);
      bool9 = true;
      localObject1 = localObject2;
      bool8 = bool9;
      localTextView1 = this.d;
      localResources = this.d.getResources();
      if (!bool3) {
        break label995;
      }
    }
    label513:
    label519:
    label525:
    label531:
    label537:
    label558:
    label565:
    label573:
    label579:
    label596:
    label603:
    label995:
    for (int n = 2131296442;; n = 2131296450)
    {
      localTextView1.setTextColor(localResources.getColor(n));
      this.d.setText(ak.a(this.k.getContext(), paramT.r(), false, parama.p()));
      a(paramT, parama, bool8, bool1, (String)localObject1);
      return;
      i = 0;
      break;
      j = 0;
      break label89;
      bool6 = false;
      break label112;
      bool6 = false;
      break label112;
      bool7 = false;
      break label130;
      if (this.c.isDrawingCacheEnabled()) {
        break label227;
      }
      this.c.setDrawingCacheEnabled(true);
      break label227;
      str6 = str4;
      break label269;
      str7 = "";
      break label287;
      i2 = -1;
      break label305;
      this.g.append(str2);
      localObject2 = str2;
      break label360;
      i4 = 2131558707;
      break label384;
      String str9 = "";
      if ((paramT instanceof com.viber.voip.messages.adapters.a.b))
      {
        str9 = com.viber.voip.messages.a.b.d().a(((com.viber.voip.messages.adapters.a.b)paramT).L(), ((com.viber.voip.messages.adapters.a.b)paramT).D());
        if (TextUtils.isEmpty(str9)) {
          str9 = this.a.getContext().getString(2131493744);
        }
      }
      a(i2, paramT, str7, str9, parama, bool7);
      localObject2 = "";
      bool9 = false;
      break label422;
      if (bool4)
      {
        String str8 = ((Spanned)this.e.a(paramT.o(), str4, m, bool6).first).toString();
        this.g.append(str8);
        SpannableStringBuilder localSpannableStringBuilder2 = this.g;
        Context localContext2 = this.c.getContext();
        if (bool7) {}
        for (int i3 = 2131558706;; i3 = 2131558707)
        {
          localSpannableStringBuilder2.setSpan(new TextAppearanceSpan(localContext2, i3), 0, str8.length(), 33);
          this.c.setText(this.g);
          localObject2 = str8;
          bool9 = false;
          break;
        }
      }
      a(j.a(paramT.n()), paramT, paramT.o(), str6, parama, bool7);
      localObject2 = "";
      bool9 = false;
      break label422;
      this.a.setText(str4);
      if (bool2)
      {
        SpannableStringBuilder localSpannableStringBuilder1 = this.g;
        Context localContext1 = this.c.getContext();
        if (bool7) {}
        for (int i1 = 2131558706;; i1 = 2131558707)
        {
          localSpannableStringBuilder1.setSpan(new TextAppearanceSpan(localContext1, i1), 0, "".length(), 33);
          this.c.setText(this.e.b(str5, paramT.o(), k, bool1), TextView.BufferType.SPANNABLE);
          this.f.a(this.c, bd.d, true, str1);
          localObject1 = "";
          bool8 = false;
          break;
        }
      }
      this.c.setText(2131493976);
      localObject1 = "";
      bool8 = false;
      break label430;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.adapters.a.a.c
 * JD-Core Version:    0.7.0.1
 */