package com.viber.voip.messages.ui.media;

import android.content.Intent;
import android.widget.ProgressBar;
import com.viber.voip.messages.extras.image.b;
import com.viber.voip.messages.extras.image.e;
import com.viber.voip.util.upload.ac;

class ag
  implements e
{
  ag(SendMediaActivity paramSendMediaActivity, int paramInt, Intent paramIntent, String paramString) {}
  
  public void a(int paramInt1, SendMediaDataContainer paramSendMediaDataContainer, int paramInt2, int paramInt3) {}
  
  public void a(int paramInt, SendMediaDataContainer[] paramArrayOfSendMediaDataContainer)
  {
    if (this.a != paramInt) {}
    do
    {
      return;
      b.a().b(this);
      SendMediaActivity.a(this.d, paramArrayOfSendMediaDataContainer[0]);
      SendMediaActivity.a(this.d, "onAllFilesReady: " + SendMediaActivity.d(this.d));
      if ((SendMediaActivity.d(this.d) == null) || (SendMediaActivity.d(this.d).b == null))
      {
        this.d.setResult(-1);
        this.d.finish();
        return;
      }
      if (SendMediaActivity.e(this.d) == 3) {
        SendMediaActivity.a(this.d, SendMediaActivity.d(this.d).c, true);
      }
      for (;;)
      {
        SendMediaActivity.f(this.d).setVisibility(8);
        if (!SendMediaActivity.a(this.d)) {
          break;
        }
        SendMediaActivity.g(this.d);
        return;
        SendMediaActivity.a(this.d, SendMediaActivity.d(this.d).b, false);
      }
    } while (ac.a(this.d));
    if (this.b.getBooleanExtra("is_public_group", false))
    {
      SendMediaActivity.a(this.d, "handleIntent(), uri is from public group, skipping pre-upload");
      return;
    }
    ac.a(SendMediaActivity.d(this.d).b, "check this value", this.c, null);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.ag
 * JD-Core Version:    0.7.0.1
 */