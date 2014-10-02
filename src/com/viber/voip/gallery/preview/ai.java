package com.viber.voip.gallery.preview;

import com.viber.voip.messages.conversation.ui.ConversationData;
import com.viber.voip.messages.extras.image.b;
import com.viber.voip.messages.extras.image.e;
import com.viber.voip.messages.ui.media.SendMediaDataContainer;
import com.viber.voip.util.upload.ViberUploadReceiver;
import java.util.Map;

class ai
  implements e
{
  ai(ae paramae, boolean paramBoolean) {}
  
  public void a(int paramInt1, SendMediaDataContainer paramSendMediaDataContainer, int paramInt2, int paramInt3)
  {
    if (ae.e(this.b) != paramInt1) {}
    do
    {
      return;
      ae.f(this.b).put(paramSendMediaDataContainer.a, paramSendMediaDataContainer);
    } while ((this.a) || (2 == ae.g(this.b).r));
    ViberUploadReceiver.a(ae.h(this.b), paramSendMediaDataContainer.a, "image");
  }
  
  public void a(int paramInt, SendMediaDataContainer[] paramArrayOfSendMediaDataContainer)
  {
    if (ae.e(this.b) != paramInt) {
      return;
    }
    b.a().b(this);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.gallery.preview.ai
 * JD-Core Version:    0.7.0.1
 */