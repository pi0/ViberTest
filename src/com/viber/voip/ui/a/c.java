package com.viber.voip.ui.a;

import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;

public class c
{
  private final Context a;
  private CharSequence b;
  private CharSequence c;
  private CharSequence d;
  private CharSequence e;
  private CharSequence f;
  private boolean g = true;
  private DialogInterface.OnClickListener h;
  private DialogInterface.OnClickListener i;
  private DialogInterface.OnClickListener j;
  private DialogInterface.OnCancelListener k;
  
  public c(Context paramContext)
  {
    this.a = paramContext;
  }
  
  public a a()
  {
    a locala = new a();
    Bundle localBundle = new Bundle();
    localBundle.putCharSequence("title", this.b);
    localBundle.putCharSequence("message", this.c);
    localBundle.putCharSequence("positive_button", this.d);
    localBundle.putCharSequence("negative_button", this.e);
    localBundle.putCharSequence("neutral_button", this.f);
    locala.setArguments(localBundle);
    locala.b = this.g;
    locala.a = this.k;
    a.a(locala, this.h);
    a.b(locala, this.i);
    a.c(locala, this.j);
    return locala;
  }
  
  public c a(int paramInt)
  {
    return a(this.a.getText(paramInt));
  }
  
  public c a(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    return a(this.a.getText(paramInt), paramOnClickListener);
  }
  
  public c a(DialogInterface.OnCancelListener paramOnCancelListener)
  {
    this.k = paramOnCancelListener;
    return this;
  }
  
  public c a(CharSequence paramCharSequence)
  {
    this.b = paramCharSequence;
    return this;
  }
  
  public c a(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
  {
    this.d = paramCharSequence;
    this.h = paramOnClickListener;
    return this;
  }
  
  public c b(int paramInt)
  {
    return b(this.a.getText(paramInt));
  }
  
  public c b(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    return b(this.a.getText(paramInt), paramOnClickListener);
  }
  
  public c b(CharSequence paramCharSequence)
  {
    this.c = paramCharSequence;
    return this;
  }
  
  public c b(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
  {
    this.e = paramCharSequence;
    this.i = paramOnClickListener;
    return this;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.ui.a.c
 * JD-Core Version:    0.7.0.1
 */