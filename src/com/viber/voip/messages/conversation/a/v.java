package com.viber.voip.messages.conversation.a;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.viber.voip.backgrounds.n;
import com.viber.voip.gallery.b;
import com.viber.voip.messages.conversation.an;
import com.viber.voip.messages.conversation.r;
import com.viber.voip.messages.conversation.s;
import com.viber.voip.messages.conversation.u;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.messages.extras.image.j;
import com.viber.voip.ui.ak;
import com.viber.voip.util.b.ad;
import com.viber.voip.util.b.z;
import java.io.File;
import java.util.Set;

public class v
  extends b
{
  private ad b;
  private com.viber.voip.util.b.x c;
  private r d;
  private int e;
  private int f;
  private int g;
  private Set<Long> h;
  private View.OnLongClickListener i;
  private View.OnClickListener j;
  
  public v(Context paramContext, ad paramad, int paramInt, r paramr, Set<Long> paramSet)
  {
    this.d = paramr;
    this.e = (n.b(paramContext) + (int)paramContext.getResources().getDimension(2131362220));
    this.g = h.a(paramContext, 11.0F);
    int k = paramContext.getResources().getInteger(2131427348);
    int m = h.a(paramContext, j.a) / k;
    this.b = paramad;
    this.c = new z().b(2130838257, paramContext).a(2130837971, paramContext).a(m, m).b();
    this.f = paramInt;
    this.h = paramSet;
  }
  
  private View a(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    TextView localTextView2;
    if (paramView == null)
    {
      paramView = View.inflate(paramViewGroup.getContext(), 2130903170, null);
      localTextView2 = (TextView)paramView.findViewById(2131165705);
      paramView.setTag(localTextView2);
      paramView.setTag(2131165340, new ak());
    }
    for (TextView localTextView1 = localTextView2;; localTextView1 = (TextView)paramView.getTag())
    {
      String str = a(paramInt)[0].K().toUpperCase();
      ak localak = (ak)paramView.getTag(2131165340);
      localak.b(true);
      localak.a(true);
      localak.a(str);
      localTextView1.setText(str);
      return paramView;
    }
  }
  
  private View b(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    LinearLayout localLinearLayout1 = (LinearLayout)paramView;
    an[] arrayOfan = a(paramInt);
    LinearLayout localLinearLayout3;
    if (paramView == null)
    {
      Context localContext = paramViewGroup.getContext();
      localLinearLayout3 = new LinearLayout(localContext);
      localLinearLayout3.setOrientation(0);
      x[] arrayOfx2 = new x[this.f];
      for (int i5 = 0; i5 < this.f; i5++)
      {
        View localView3 = View.inflate(localContext, 2130903171, null);
        LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(0, this.e);
        localLayoutParams.weight = 1.0F;
        localView3.setLayoutParams(localLayoutParams);
        arrayOfx2[i5] = new x(this, (ImageView)localView3.findViewById(2131165706), localView3.findViewById(2131165708), localView3, localView3.findViewById(2131165707), null);
        localLinearLayout3.addView(localView3);
      }
      localLinearLayout3.setTag(arrayOfx2);
      localLinearLayout3.setTag(2131165340, new ak());
    }
    for (LinearLayout localLinearLayout2 = localLinearLayout3;; localLinearLayout2 = localLinearLayout1)
    {
      x[] arrayOfx1 = (x[])localLinearLayout2.getTag();
      int k = 0;
      if (k < this.f)
      {
        x localx = arrayOfx1[k];
        if (k < arrayOfan.length) {}
        for (an localan = arrayOfan[k];; localan = null)
        {
          if (localan != null) {
            break label249;
          }
          localx.c.setVisibility(4);
          k++;
          break;
        }
        label249:
        localx.a.setPressed(a(Long.valueOf(localan.a())));
        localx.a.setOnClickListener(this.j);
        localx.a.setOnLongClickListener(this.i);
        localx.a.setTag(Long.valueOf(localan.a()));
        int i2;
        label338:
        Uri localUri;
        label352:
        int i3;
        label416:
        View localView2;
        if (("video".equals(localan.e())) || ("animated_message".equals(localan.e())))
        {
          i2 = 1;
          if (!TextUtils.isEmpty(localan.p())) {
            break label477;
          }
          localUri = null;
          this.b.a(localUri, localx.a, this.c);
          localx.c.setVisibility(0);
          View localView1 = localx.b;
          if ((this.h == null) || (!this.h.contains(Long.valueOf(localan.a())))) {
            break label490;
          }
          i3 = 0;
          localView1.setVisibility(i3);
          localView2 = localx.d;
          if ((i2 == 0) || (localUri == null) || (!new File(localUri.getPath()).exists())) {
            break label497;
          }
        }
        label477:
        label490:
        label497:
        for (int i4 = 0;; i4 = 8)
        {
          localView2.setVisibility(i4);
          break;
          i2 = 0;
          break label338;
          localUri = Uri.parse(localan.p());
          break label352;
          i3 = 8;
          break label416;
        }
      }
      ak localak = (ak)localLinearLayout2.getTag(2131165340);
      localak.b(true);
      localak.a(false);
      localak.a(arrayOfan[0].K().toUpperCase());
      int m = h.a(1.5F);
      int n = h.a(1.5F);
      if (paramInt == -1 + getCount()) {}
      for (int i1 = this.g;; i1 = 0)
      {
        localLinearLayout2.setPadding(m, 0, n, i1);
        return localLinearLayout2;
      }
    }
  }
  
  public void a(View.OnClickListener paramOnClickListener)
  {
    this.j = paramOnClickListener;
  }
  
  public void a(View.OnLongClickListener paramOnLongClickListener)
  {
    this.i = paramOnLongClickListener;
  }
  
  public void a(Set<Long> paramSet)
  {
    this.h = paramSet;
    notifyDataSetChanged();
  }
  
  public an[] a(int paramInt)
  {
    return this.d.c_(paramInt).a();
  }
  
  public int getCount()
  {
    return this.d.m();
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public int getItemViewType(int paramInt)
  {
    if ((this.d.c_(paramInt) instanceof s)) {
      return 0;
    }
    return 1;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (getItemViewType(paramInt) == 0) {
      return a(paramInt, paramView, paramViewGroup);
    }
    return b(paramInt, paramView, paramViewGroup);
  }
  
  public int getViewTypeCount()
  {
    return 2;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.a.v
 * JD-Core Version:    0.7.0.1
 */