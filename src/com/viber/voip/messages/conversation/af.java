package com.viber.voip.messages.conversation;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import com.viber.jni.GroupUserInfo;
import com.viber.voip.messages.controller.GroupController.GroupMember;
import com.viber.voip.messages.conversation.publicgroup.PublicGroupInfoParticipantView;
import com.viber.voip.user.UserData;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class af
  extends ArrayAdapter<GroupController.GroupMember>
{
  private Context a;
  private List<GroupController.GroupMember> b;
  
  public af(Context paramContext, int paramInt, List<GroupController.GroupMember> paramList)
  {
    super(paramContext, paramInt, paramList);
    this.a = paramContext;
    this.b = paramList;
  }
  
  private PublicGroupInfoParticipantView d()
  {
    PublicGroupInfoParticipantView localPublicGroupInfoParticipantView = new PublicGroupInfoParticipantView(this.a);
    localPublicGroupInfoParticipantView.setImageSize((int)getContext().getResources().getDimension(2131362320));
    return localPublicGroupInfoParticipantView;
  }
  
  public GroupController.GroupMember a(int paramInt)
  {
    if (paramInt < this.b.size()) {
      return (GroupController.GroupMember)this.b.get(paramInt);
    }
    return null;
  }
  
  public ArrayList<String> a()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext()) {
      localArrayList.add(((GroupController.GroupMember)localIterator.next()).a.phoneNumber);
    }
    return localArrayList;
  }
  
  public String[] b()
  {
    String[] arrayOfString = new String[this.b.size()];
    for (int i = 0; i < this.b.size(); i++) {
      arrayOfString[i] = ((GroupController.GroupMember)this.b.get(i)).a.phoneNumber;
    }
    return arrayOfString;
  }
  
  public List<GroupController.GroupMember> c()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext()) {
      localArrayList.add((GroupController.GroupMember)localIterator.next());
    }
    return localArrayList;
  }
  
  public int getCount()
  {
    return 1 + this.b.size();
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null) {}
    for (PublicGroupInfoParticipantView localPublicGroupInfoParticipantView = d(); paramInt == 0; localPublicGroupInfoParticipantView = (PublicGroupInfoParticipantView)paramView)
    {
      localPublicGroupInfoParticipantView.a(UserData.getName(), UserData.getImage(), true, "", 0L, 0L);
      return localPublicGroupInfoParticipantView;
    }
    GroupController.GroupMember localGroupMember = a(paramInt - 1);
    if (!TextUtils.isEmpty(localGroupMember.a.clientName)) {}
    for (String str = localGroupMember.a.clientName;; str = localGroupMember.a.phoneNumber)
    {
      localPublicGroupInfoParticipantView.a(str, localGroupMember.c, false, localGroupMember.a.phoneNumber, 0L, 0L);
      return localPublicGroupInfoParticipantView;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.af
 * JD-Core Version:    0.7.0.1
 */