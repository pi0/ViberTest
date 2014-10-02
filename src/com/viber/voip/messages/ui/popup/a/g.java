package com.viber.voip.messages.ui.popup.a;

import android.app.Activity;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.viber.voip.messages.conversation.ai;
import com.viber.voip.messages.conversation.an;
import com.viber.voip.messages.orm.entity.impl.ConversationEntityImpl;
import java.util.List;
import java.util.Map;

public class g
  extends i
{
  private h a;
  
  public g(Activity paramActivity, ai paramai, h paramh)
  {
    super(paramActivity, paramai);
    this.a = paramh;
    b();
  }
  
  public String a(int paramInt, an paraman)
  {
    if (f() != null)
    {
      ConversationEntityImpl localConversationEntityImpl = this.a.a(paraman.j());
      if ((localConversationEntityImpl == null) || (!localConversationEntityImpl.isConversationGroup())) {
        return "";
      }
      if (localConversationEntityImpl != null) {}
      for (String str1 = localConversationEntityImpl.getGroupName(); TextUtils.isEmpty(str1); str1 = "")
      {
        String str2 = g().getString(2131494188);
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = g().getString(2131494051);
        return String.format(str2, arrayOfObject);
      }
      return String.format(g().getString(2131494188), new Object[] { str1 });
    }
    return null;
  }
  
  public void b(View paramView, int paramInt)
  {
    TextView localTextView1 = (TextView)paramView.findViewById(2131165357);
    TextView localTextView2 = (TextView)paramView.findViewById(2131165773);
    TextView localTextView3 = (TextView)paramView.findViewById(2131165870);
    TextView localTextView4 = (TextView)paramView.findViewById(2131165871);
    localTextView1.setVisibility(8);
    localTextView3.setVisibility(8);
    localTextView4.setVisibility(8);
    localTextView2.setVisibility(0);
    localTextView2.setText((CharSequence)d().get(paramInt));
    e().put(Integer.valueOf(paramInt), localTextView2);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.popup.a.g
 * JD-Core Version:    0.7.0.1
 */