package com.viber.voip.messages.ui.popup.a;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.view.View;
import android.widget.TextView;
import com.viber.jni.OnlineContactInfo;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.lastonline.LastOnlineController;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.conversation.ai;
import com.viber.voip.messages.conversation.an;
import com.viber.voip.settings.j;
import com.viber.voip.settings.l;
import com.viber.voip.util.w;
import java.util.List;
import java.util.Map;

public class k
  extends i
{
  private SparseBooleanArray a = new SparseBooleanArray();
  private SparseArray<String> b = new SparseArray();
  private Context c;
  private boolean d;
  
  public k(Activity paramActivity, ai paramai)
  {
    super(paramActivity, paramai);
    this.c = paramActivity.getApplicationContext();
    this.d = ViberApplication.preferences().b(j.Y(), j.Z());
    b();
  }
  
  private OnlineContactInfo a(String paramString)
  {
    if ((paramString == null) || (!this.d)) {
      return null;
    }
    OnlineContactInfo[] arrayOfOnlineContactInfo = ViberApplication.getInstance().getCachedOnlineContactInfo(new String[] { paramString });
    if ((arrayOfOnlineContactInfo != null) && (arrayOfOnlineContactInfo.length > 0)) {}
    for (OnlineContactInfo localOnlineContactInfo = arrayOfOnlineContactInfo[0];; localOnlineContactInfo = null)
    {
      ViberApplication.log(3, "TitleViewCreator", "getLastOnlineInfo number:" + paramString + ",cachedOnlineContactInfo:" + localOnlineContactInfo);
      return localOnlineContactInfo;
      PhoneControllerWrapper localPhoneControllerWrapper = ViberApplication.getInstance().getPhoneController(false);
      if ((localPhoneControllerWrapper.isInitialized()) && (paramString != null))
      {
        int i = localPhoneControllerWrapper.generateSequence();
        localPhoneControllerWrapper.getLastOnlineController().handleGetLastOnline(new String[] { paramString }, i, 0, 0L);
      }
    }
  }
  
  public String a(int paramInt, an paraman)
  {
    this.b.append(paramInt, paraman.l());
    SparseBooleanArray localSparseBooleanArray = this.a;
    boolean bool;
    String str;
    if (!paraman.aa())
    {
      bool = true;
      localSparseBooleanArray.append(paramInt, bool);
      if (!paraman.M()) {
        break label78;
      }
      str = this.c.getResources().getString(2131494848);
    }
    for (;;)
    {
      if (TextUtils.isEmpty(str)) {
        str = paraman.l();
      }
      return str;
      bool = false;
      break;
      label78:
      if (paraman.aa()) {
        str = paraman.z();
      } else {
        str = paraman.y();
      }
    }
  }
  
  public void b(View paramView, int paramInt)
  {
    boolean bool = this.a.get(c(paramInt), false);
    String str = (String)this.b.get(c(paramInt));
    TextView localTextView1 = (TextView)paramView.findViewById(2131165357);
    TextView localTextView2 = (TextView)paramView.findViewById(2131165870);
    TextView localTextView3 = (TextView)paramView.findViewById(2131165773);
    TextView localTextView4 = (TextView)paramView.findViewById(2131165871);
    localTextView3.setVisibility(8);
    if (bool)
    {
      OnlineContactInfo localOnlineContactInfo = a(str);
      if (localOnlineContactInfo != null)
      {
        localTextView1.setVisibility(0);
        localTextView4.setVisibility(0);
        localTextView2.setVisibility(8);
        localTextView1.setText((CharSequence)d().get(paramInt));
        localTextView4.setText(w.a(localOnlineContactInfo.isOnLine, localOnlineContactInfo.time));
      }
    }
    for (;;)
    {
      e().put(Integer.valueOf(paramInt), localTextView1);
      return;
      localTextView1.setVisibility(8);
      localTextView4.setVisibility(8);
      localTextView2.setVisibility(0);
      localTextView2.setText((CharSequence)d().get(paramInt));
      continue;
      localTextView1.setVisibility(0);
      localTextView4.setVisibility(8);
      localTextView2.setVisibility(8);
      localTextView1.setText((CharSequence)d().get(paramInt));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.popup.a.k
 * JD-Core Version:    0.7.0.1
 */