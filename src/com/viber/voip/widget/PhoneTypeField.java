package com.viber.voip.widget;

import android.content.Context;
import android.os.Build.VERSION;
import android.telephony.PhoneNumberUtils;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import com.viber.voip.ViberApplication;
import com.viber.voip.registration.CountryCode;
import com.viber.voip.ui.ViberEditText;
import java.util.ArrayList;
import java.util.List;

public class PhoneTypeField
  extends ViberEditText
  implements TextWatcher
{
  private static final boolean a;
  private String b;
  private String c;
  private p d;
  private List<CountryCode> e = new ArrayList();
  private CountryCode f = null;
  private o g;
  private q h;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 11) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  public PhoneTypeField(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    if (!isInEditMode()) {
      this.d = new p(this, paramContext.getContentResolver());
    }
    d();
  }
  
  private void d()
  {
    addTextChangedListener(this);
    if (a) {
      setOnLongClickListener(new n(this));
    }
  }
  
  public boolean a()
  {
    return getText().toString().trim().length() == 0;
  }
  
  public void afterTextChanged(Editable paramEditable)
  {
    b();
  }
  
  public void b()
  {
    String str = PhoneNumberUtils.stripSeparators(getText().toString());
    ViberApplication.log(3, "PhoneTypeField", "notifyChanged number: " + str);
    if (!TextUtils.isEmpty(str)) {}
    for (;;)
    {
      if (this.h != null) {
        this.h.f();
      }
      return;
      this.b = "";
      this.c = "";
      this.f = null;
    }
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void c()
  {
    if (a)
    {
      setCursorVisible(false);
      setInputType(0);
    }
  }
  
  public String getHiddenName()
  {
    return this.c;
  }
  
  public Editable getPhoneFieldEditable()
  {
    return getText();
  }
  
  public int getPhoneFieldLength()
  {
    return length();
  }
  
  public String getPhoneTypeText()
  {
    return getText().toString();
  }
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    c();
  }
  
  public void setContactLookupListener(o paramo)
  {
    this.g = paramo;
  }
  
  public void setPhoneFieldText(String paramString)
  {
    setText(paramString);
  }
  
  public void setPhoneFieldTextChangeListener(q paramq)
  {
    this.h = paramq;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.widget.PhoneTypeField
 * JD-Core Version:    0.7.0.1
 */