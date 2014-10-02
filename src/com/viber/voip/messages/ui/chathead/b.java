package com.viber.voip.messages.ui.chathead;

import android.content.Context;
import android.content.res.Resources;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView.ScaleType;
import com.viber.voip.messages.orm.entity.ConversationEntity;
import com.viber.voip.messages.ui.chathead.a.a;

public class b
{
  final a a;
  private ConversationEntity b;
  
  public b(Context paramContext)
  {
    this.a = new a(paramContext);
    this.a.setScaleType(ImageView.ScaleType.FIT_XY);
    Resources localResources = paramContext.getResources();
    int i = localResources.getDimensionPixelSize(2131362239);
    this.a.setLayoutParams(new FrameLayout.LayoutParams(i, i));
    this.a.setBorderWidth(localResources.getDimension(2131362251));
    this.a.setBorderColor(localResources.getColor(2131296414));
  }
  
  public b(Context paramContext, ConversationEntity paramConversationEntity)
  {
    this(paramContext);
    this.b = paramConversationEntity;
  }
  
  public a a()
  {
    return this.a;
  }
  
  public void a(ConversationEntity paramConversationEntity)
  {
    this.b = paramConversationEntity;
    this.a.setTag(Long.valueOf(paramConversationEntity.getId()));
  }
  
  public ConversationEntity b()
  {
    return this.b;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.b
 * JD-Core Version:    0.7.0.1
 */