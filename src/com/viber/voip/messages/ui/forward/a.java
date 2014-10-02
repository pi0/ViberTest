package com.viber.voip.messages.ui.forward;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.viber.voip.messages.extras.image.h;

public class a
  extends ArrayAdapter<String>
  implements SpinnerAdapter
{
  private static final int a = h.a(10.0F);
  private String b;
  private int c;
  private boolean d;
  private ColorStateList e;
  private LayoutInflater f;
  
  public a(Context paramContext, int paramInt, String paramString, String[] paramArrayOfString, boolean paramBoolean)
  {
    super(paramContext, paramInt, paramArrayOfString);
    this.f = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    this.d = paramBoolean;
    this.b = paramString;
    this.c = paramContext.getResources().getColor(2131296418);
    this.e = paramContext.getResources().getColorStateList(2131296505);
  }
  
  private View a(int paramInt, View paramView, ViewGroup paramViewGroup, boolean paramBoolean)
  {
    if (paramView == null) {
      paramView = this.f.inflate(2130903194, paramViewGroup, false);
    }
    TextView localTextView1 = (TextView)paramView.findViewById(2131165357);
    TextView localTextView2 = (TextView)paramView.findViewById(2131165631);
    if (paramBoolean)
    {
      localTextView1.setTextColor(this.e);
      localTextView1.setPadding(localTextView1.getPaddingLeft(), a, localTextView1.getPaddingRight(), a);
      localTextView1.setText((CharSequence)getItem(paramInt));
      localTextView2.setVisibility(8);
      return paramView;
    }
    localTextView1.setTextColor(this.c);
    localTextView1.setPadding(localTextView1.getPaddingLeft(), 0, localTextView1.getPaddingRight(), 0);
    localTextView2.setPadding(localTextView2.getPaddingLeft(), 0, localTextView2.getPaddingRight(), 0);
    if (this.d)
    {
      localTextView1.setText(this.b);
      localTextView2.setVisibility(0);
      localTextView2.setText((CharSequence)getItem(paramInt));
      return paramView;
    }
    localTextView1.setText((CharSequence)getItem(paramInt));
    localTextView2.setVisibility(8);
    return paramView;
  }
  
  public View getDropDownView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return a(paramInt, paramView, paramViewGroup, true);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return a(paramInt, paramView, paramViewGroup, false);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.forward.a
 * JD-Core Version:    0.7.0.1
 */