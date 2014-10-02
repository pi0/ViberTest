package com.viber.voip.market.a;

import android.content.Intent;
import android.os.Bundle;
import com.viber.voip.ViberApplication;
import com.viber.voip.market.MarketPublicGroupInfo;
import com.viber.voip.messages.conversation.publicgroup.PublicGroupConversationData;
import com.viber.voip.messages.j;
import com.viber.voip.process.b;
import com.viber.voip.process.c;

public class m
  extends c
{
  private static final String a = m.class.getSimpleName();
  
  private static void a(String paramString) {}
  
  public void a(MarketPublicGroupInfo paramMarketPublicGroupInfo)
  {
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("group_info", paramMarketPublicGroupInfo);
    super.execute(ViberApplication.getInstance(), m.class, localBundle);
  }
  
  public void doInTargetProcess(Bundle paramBundle, b paramb)
  {
    MarketPublicGroupInfo localMarketPublicGroupInfo = (MarketPublicGroupInfo)paramBundle.getParcelable("group_info");
    Intent localIntent = j.a(new PublicGroupConversationData(localMarketPublicGroupInfo.a, "", null, localMarketPublicGroupInfo.d, localMarketPublicGroupInfo.c, 0), false);
    localIntent.setFlags(0x10000000 | localIntent.getFlags());
    a("Viewing group " + localMarketPublicGroupInfo.a);
    ViberApplication.getInstance().startActivity(localIntent);
    paramb.a(null);
  }
  
  public void processResult(Bundle paramBundle) {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.market.a.m
 * JD-Core Version:    0.7.0.1
 */