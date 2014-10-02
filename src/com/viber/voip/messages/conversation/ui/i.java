package com.viber.voip.messages.conversation.ui;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.viber.voip.messages.orm.entity.impl.MessageCallEntityImpl;
import com.viber.voip.util.ak;
import com.viber.voip.util.gk;
import java.text.FieldPosition;
import java.util.Date;

class i
  extends BaseAdapter
{
  private MessageCallEntityImpl[] b;
  private java.text.DateFormat c;
  private java.text.DateFormat d;
  private FieldPosition e;
  
  public i(g paramg, Context paramContext, MessageCallEntityImpl[] paramArrayOfMessageCallEntityImpl)
  {
    this.b = paramArrayOfMessageCallEntityImpl;
    this.c = android.text.format.DateFormat.getLongDateFormat(paramContext);
    this.d = android.text.format.DateFormat.getTimeFormat(paramContext);
    this.e = new FieldPosition(3);
  }
  
  private String a(MessageCallEntityImpl paramMessageCallEntityImpl)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    this.c.format(new Date(paramMessageCallEntityImpl.getDate()), localStringBuffer, this.e);
    localStringBuffer.append(' ').append(' ');
    this.d.format(new Date(paramMessageCallEntityImpl.getDate()), localStringBuffer, this.e);
    return localStringBuffer.toString().toUpperCase();
  }
  
  private void a(j paramj, MessageCallEntityImpl paramMessageCallEntityImpl)
  {
    int i = 2131296403;
    int j;
    String str;
    int k;
    if (paramMessageCallEntityImpl.isMissed())
    {
      j = 2130837723;
      i = 2131296404;
      str = gk.a(paramMessageCallEntityImpl);
      if ((!paramMessageCallEntityImpl.isMissed()) && (!paramMessageCallEntityImpl.isAnswerredOnAnotherDevice())) {
        break label137;
      }
      k = 0;
      label40:
      if (k == 0) {
        break label143;
      }
      j.a(paramj).setVisibility(0);
      j.a(paramj).setText(ak.a(paramMessageCallEntityImpl.getDuration()));
    }
    for (;;)
    {
      j.b(paramj).setText(str);
      j.b(paramj).setTextColor(j.b(paramj).getResources().getColor(i));
      j.c(paramj).setImageResource(j);
      j.d(paramj).setText(a(paramMessageCallEntityImpl));
      return;
      if (paramMessageCallEntityImpl.isIncoming())
      {
        j = 2130837722;
        break;
      }
      j = 2130837724;
      break;
      label137:
      k = 1;
      break label40;
      label143:
      j.a(paramj).setVisibility(8);
    }
  }
  
  public MessageCallEntityImpl a(int paramInt)
  {
    return this.b[paramInt];
  }
  
  public int getCount()
  {
    return this.b.length;
  }
  
  public long getItemId(int paramInt)
  {
    return this.b[paramInt].getId();
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
    {
      paramView = g.a(this.a).inflate(2130903090, null);
      paramView.setTag(new j(this.a, paramView, null));
    }
    a((j)paramView.getTag(), a(paramInt));
    return paramView;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.i
 * JD-Core Version:    0.7.0.1
 */