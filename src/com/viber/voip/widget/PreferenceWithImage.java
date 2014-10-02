package com.viber.voip.widget;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.preference.CheckBoxPreference;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.extras.image.h;

public class PreferenceWithImage
  extends CheckBoxPreference
{
  private String a;
  
  public PreferenceWithImage(Context paramContext)
  {
    super(paramContext);
    a(paramContext, null);
  }
  
  public PreferenceWithImage(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }
  
  public PreferenceWithImage(Context paramContext, String paramString)
  {
    super(paramContext);
    a(paramContext, null);
    this.a = paramString;
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    setLayoutResource(2130903234);
  }
  
  public void a(String paramString)
  {
    this.a = paramString;
    if (!TextUtils.isEmpty(this.a)) {}
    for (boolean bool = true;; bool = false)
    {
      setChecked(bool);
      return;
    }
  }
  
  protected void onBindView(View paramView)
  {
    super.onBindView(paramView);
    ViberApplication.log(3, "PreferenceWithImage", "onBindView mImagePath:" + this.a + ",isChecked:" + isChecked());
    ((TextView)paramView.findViewById(2131165352)).setText(getTitle());
    if (TextUtils.isEmpty(this.a))
    {
      paramView.findViewById(2131165354).setVisibility(8);
      paramView.findViewById(2131165351).setVisibility(8);
      return;
    }
    paramView.findViewById(2131165354).setVisibility(0);
    paramView.findViewById(2131165351).setVisibility(0);
    int i = h.a(getContext().getResources().getDimension(2131362140));
    try
    {
      ((ImageView)paramView.findViewById(2131165354)).setImageBitmap(h.a(getContext(), Uri.parse(this.a), i, i, false));
      return;
    }
    catch (Exception localException) {}
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.widget.PreferenceWithImage
 * JD-Core Version:    0.7.0.1
 */