package com.viber.voip.gallery.preview;

import android.text.Editable;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.widget.EditText;
import com.viber.voip.messages.ui.bb;
import com.viber.voip.messages.ui.bd;

class y
  implements TextWatcher
{
  private boolean b;
  
  y(PhotoPreviewActivity paramPhotoPreviewActivity) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    if (!this.b)
    {
      this.b = true;
      int i = paramInt1 + paramInt3;
      PhotoPreviewActivity.h(this.a).a(this.a.f, bd.b, paramInt1, i, false);
      Editable localEditable = this.a.f.getText();
      ImageSpan[] arrayOfImageSpan = (ImageSpan[])localEditable.getSpans(i, i, ImageSpan.class);
      if ((arrayOfImageSpan != null) && (arrayOfImageSpan.length > 0))
      {
        ImageSpan localImageSpan = arrayOfImageSpan[0];
        if (localEditable.getSpanStart(localImageSpan) < i) {
          this.a.f.setSelection(localEditable.getSpanEnd(localImageSpan));
        }
      }
      this.b = false;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.gallery.preview.y
 * JD-Core Version:    0.7.0.1
 */