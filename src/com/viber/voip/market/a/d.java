package com.viber.voip.market.a;

import android.os.Bundle;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;
import com.viber.voip.market.MarketPublicGroupInfo;
import com.viber.voip.market.r;
import com.viber.voip.messages.controller.GroupController;
import com.viber.voip.messages.controller.c.as;
import com.viber.voip.messages.controller.cr;
import com.viber.voip.messages.i;
import com.viber.voip.messages.orm.entity.impl.ConversationEntityImpl;
import com.viber.voip.process.b;
import com.viber.voip.process.c;
import java.util.HashSet;

public class d
  extends c
{
  private static final String a = d.class.getSimpleName();
  private r b;
  
  private Bundle a(long paramLong, int paramInt)
  {
    Bundle localBundle = new Bundle();
    localBundle.putLong("group_id", paramLong);
    localBundle.putInt("status", paramInt);
    return localBundle;
  }
  
  private void a(MarketPublicGroupInfo paramMarketPublicGroupInfo, b paramb)
  {
    b("Following group, info: " + paramMarketPublicGroupInfo);
    ViberApplication.getInstance().getPhoneController(true).registerDelegate(new e(this, paramb, paramMarketPublicGroupInfo));
    int i = ViberApplication.getInstance().getPhoneController(true).generateSequence();
    ViberApplication.getInstance().getMessagesManager().d().a(i, paramMarketPublicGroupInfo.a, paramMarketPublicGroupInfo.c, "", "", 0L, "");
  }
  
  private void b(MarketPublicGroupInfo paramMarketPublicGroupInfo, b paramb)
  {
    ConversationEntityImpl localConversationEntityImpl = as.a().a(paramMarketPublicGroupInfo.a);
    b("Unfollowing group, info: " + paramMarketPublicGroupInfo + ", conversation = " + localConversationEntityImpl);
    if (localConversationEntityImpl == null) {
      return;
    }
    HashSet localHashSet = new HashSet();
    localHashSet.add(Long.valueOf(localConversationEntityImpl.getId()));
    new cr(ViberApplication.getInstance()).a(localHashSet, new f(this, paramb, paramMarketPublicGroupInfo));
  }
  
  private static void b(String paramString) {}
  
  public void a(MarketPublicGroupInfo paramMarketPublicGroupInfo, boolean paramBoolean, r paramr)
  {
    this.b = paramr;
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("group_info", paramMarketPublicGroupInfo);
    localBundle.putBoolean("follow", paramBoolean);
    execute(ViberApplication.getInstance(), d.class, localBundle);
  }
  
  public void doInTargetProcess(Bundle paramBundle, b paramb)
  {
    MarketPublicGroupInfo localMarketPublicGroupInfo = (MarketPublicGroupInfo)paramBundle.getParcelable("group_info");
    if (paramBundle.getBoolean("follow"))
    {
      a(localMarketPublicGroupInfo, paramb);
      return;
    }
    b(localMarketPublicGroupInfo, paramb);
  }
  
  public void processResult(Bundle paramBundle)
  {
    long l = paramBundle.getLong("group_id");
    int i = paramBundle.getInt("status");
    this.b.a(l, i);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.market.a.d
 * JD-Core Version:    0.7.0.1
 */