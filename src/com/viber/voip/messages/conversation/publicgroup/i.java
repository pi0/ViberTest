package com.viber.voip.messages.conversation.publicgroup;

import android.os.Handler;
import android.text.InputFilter;
import android.text.Spanned;
import com.viber.voip.util.gj;

class i
  implements InputFilter
{
  i(CreatePublicGroupActivity paramCreatePublicGroupActivity) {}
  
  public CharSequence filter(CharSequence paramCharSequence, int paramInt1, int paramInt2, Spanned paramSpanned, int paramInt3, int paramInt4)
  {
    String str = paramCharSequence.toString().toLowerCase().replaceAll("[ ]", "");
    CharSequence localCharSequence = str.subSequence(0, str.length());
    if (paramSpanned.length() + str.length() > 0)
    {
      if (paramSpanned.length() == 0) {}
      CreatePublicGroupActivity.g(this.a).removeCallbacks(CreatePublicGroupActivity.f(this.a));
      CreatePublicGroupActivity.g(this.a).postDelayed(CreatePublicGroupActivity.f(this.a), 2000L);
      if (!gj.a(CreatePublicGroupActivity.d(this.a), str))
      {
        CreatePublicGroupActivity.b(this.a, 65793);
        CreatePublicGroupActivity.a(this.a, 65793);
        if (paramInt1 == paramInt2) {
          CreatePublicGroupActivity.e(this.a, CreatePublicGroupActivity.d(this.a).substring(0, -1 + CreatePublicGroupActivity.d(this.a).length()));
        }
      }
      else
      {
        return localCharSequence;
      }
      CreatePublicGroupActivity.e(this.a, paramSpanned.toString() + str);
      return localCharSequence;
    }
    CreatePublicGroupActivity.b(this.a, 65793);
    CreatePublicGroupActivity.a(this.a, 65793);
    return localCharSequence;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.i
 * JD-Core Version:    0.7.0.1
 */