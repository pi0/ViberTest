package com.viber.voip.messages.ui;

import android.text.Editable;
import android.text.Selection;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.widget.EditText;
import com.viber.voip.a.ac;
import com.viber.voip.a.bc;
import com.viber.voip.a.m;

public class bg
  implements TextWatcher
{
  private bf a;
  private String b;
  private bd c;
  private EditText d;
  private m e;
  
  public bg(bd parambd, EditText paramEditText, m paramm)
  {
    this.c = parambd;
    this.d = paramEditText;
    this.e = paramm;
  }
  
  public void afterTextChanged(Editable paramEditable)
  {
    int i = Selection.getSelectionStart(this.d.getText());
    String str = paramEditable.toString();
    int j = this.b.length() - str.length();
    if ((this.a != null) && (j > 0) && (j < this.a.a().length()))
    {
      int k = this.a.a().length() - j;
      if (i >= k) {
        paramEditable.delete(i - k, i);
      }
    }
    if ((this.a != null) && (j > 0) && (this.e != null)) {
      bc.a().a(this.e.b.e());
    }
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    int i = 0;
    this.b = this.d.getText().toString();
    this.a = null;
    Editable localEditable = this.d.getText();
    int j = Selection.getSelectionStart(localEditable);
    String str;
    bf[] arrayOfbf;
    int k;
    if ((j == Selection.getSelectionEnd(localEditable)) && (j > 0))
    {
      str = this.b.substring(0, j);
      arrayOfbf = this.c.e();
      k = arrayOfbf.length;
    }
    for (;;)
    {
      if (i < k)
      {
        bf localbf = arrayOfbf[i];
        if (!str.endsWith(localbf.a())) {
          break label150;
        }
        if (((ImageSpan[])localEditable.getSpans(str.length() - localbf.a().length(), -1 + str.length(), ImageSpan.class)).length > 0) {
          this.a = localbf;
        }
      }
      return;
      label150:
      i++;
    }
  }
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.bg
 * JD-Core Version:    0.7.0.1
 */