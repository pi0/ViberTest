package com.viber.voip.contacts.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface.OnClickListener;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import com.viber.jni.GroupUserInfo;
import com.viber.voip.messages.controller.GroupController.GroupMember;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class ct
  extends cb
{
  public ct(FragmentActivity paramFragmentActivity, co paramco)
  {
    super(paramFragmentActivity, paramco);
  }
  
  private void a(List<String> paramList1, List<String> paramList2, List<String> paramList3, List<String> paramList4, DialogInterface.OnClickListener paramOnClickListener)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    String str4;
    String str3;
    label140:
    String str2;
    label212:
    FragmentActivity localFragmentActivity2;
    Object[] arrayOfObject2;
    if ((paramList1 != null) && (paramList1.size() > 0))
    {
      if (paramList1.size() > 1)
      {
        FragmentActivity localFragmentActivity8 = this.a;
        Object[] arrayOfObject8 = new Object[1];
        arrayOfObject8[0] = Integer.valueOf(paramList1.size());
        str4 = localFragmentActivity8.getString(2131494569, arrayOfObject8);
        localStringBuilder.append(str4).append("\n");
      }
    }
    else
    {
      if ((paramList2 != null) && (paramList2.size() > 0))
      {
        if (paramList2.size() <= 1) {
          break label347;
        }
        FragmentActivity localFragmentActivity6 = this.a;
        Object[] arrayOfObject6 = new Object[1];
        arrayOfObject6[0] = Integer.valueOf(paramList2.size());
        str3 = localFragmentActivity6.getString(2131494571, arrayOfObject6);
        localStringBuilder.append(str3).append("\n");
      }
      if ((paramList3 != null) && (paramList3.size() > 0))
      {
        if (paramList3.size() <= 1) {
          break label384;
        }
        FragmentActivity localFragmentActivity4 = this.a;
        Object[] arrayOfObject4 = new Object[1];
        arrayOfObject4[0] = Integer.valueOf(paramList3.size());
        str2 = localFragmentActivity4.getString(2131494573, arrayOfObject4);
        localStringBuilder.append(str2).append("\n");
      }
      if ((paramList4 != null) && (paramList4.size() > 0))
      {
        if (paramList4.size() <= 1) {
          break label421;
        }
        localFragmentActivity2 = this.a;
        arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = String.valueOf(paramList4.size());
      }
    }
    label347:
    FragmentActivity localFragmentActivity1;
    label384:
    label421:
    Object[] arrayOfObject1;
    for (String str1 = localFragmentActivity2.getString(2131494574, arrayOfObject2);; str1 = localFragmentActivity1.getString(2131494574, arrayOfObject1))
    {
      localStringBuilder.append(str1).append("\n");
      if (localStringBuilder.length() != 0) {
        break label459;
      }
      return;
      FragmentActivity localFragmentActivity7 = this.a;
      Object[] arrayOfObject7 = new Object[1];
      arrayOfObject7[0] = paramList1.get(0);
      str4 = localFragmentActivity7.getString(2131494568, arrayOfObject7);
      break;
      FragmentActivity localFragmentActivity5 = this.a;
      Object[] arrayOfObject5 = new Object[1];
      arrayOfObject5[0] = paramList2.get(0);
      str3 = localFragmentActivity5.getString(2131494570, arrayOfObject5);
      break label140;
      FragmentActivity localFragmentActivity3 = this.a;
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = paramList3.get(0);
      str2 = localFragmentActivity3.getString(2131494572, arrayOfObject3);
      break label212;
      localFragmentActivity1 = this.a;
      arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = paramList4.get(0);
    }
    label459:
    localStringBuilder.deleteCharAt(-1 + localStringBuilder.length());
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.a);
    localBuilder.setTitle(2131494567).setMessage(localStringBuilder);
    localBuilder.setPositiveButton(2131493557, new cu(this, paramOnClickListener));
    localBuilder.create().show();
  }
  
  public void a(Activity paramActivity, List<GroupController.GroupMember> paramList, Map<String, Integer> paramMap, boolean paramBoolean, DialogInterface.OnClickListener paramOnClickListener)
  {
    this.b.clear();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      GroupController.GroupMember localGroupMember = (GroupController.GroupMember)localIterator.next();
      this.b.put(localGroupMember.a.phoneNumber, new cv(this, localGroupMember.a.clientName));
    }
    a(paramActivity, paramMap, paramBoolean, paramOnClickListener);
  }
  
  protected void a(Activity paramActivity, Map<String, String> paramMap1, Map<String, String> paramMap2, Map<String, String> paramMap3, DialogInterface.OnClickListener paramOnClickListener)
  {
    ArrayList localArrayList1 = new ArrayList();
    Iterator localIterator1 = this.b.entrySet().iterator();
    label172:
    while (localIterator1.hasNext())
    {
      Map.Entry localEntry4 = (Map.Entry)localIterator1.next();
      if (TextUtils.isEmpty(((cn)localEntry4.getValue()).a())) {}
      for (String str4 = (String)localEntry4.getKey();; str4 = ((cn)localEntry4.getValue()).a())
      {
        if ((((cn)localEntry4.getValue()).c) || (paramMap1.get(localEntry4.getKey()) != null) || (paramMap2.get(localEntry4.getKey()) != null) || (paramMap3.get(localEntry4.getKey()) != null)) {
          break label172;
        }
        localArrayList1.add(str4);
        break;
      }
    }
    ArrayList localArrayList2 = new ArrayList();
    Iterator localIterator2 = paramMap1.entrySet().iterator();
    if (localIterator2.hasNext())
    {
      Map.Entry localEntry3 = (Map.Entry)localIterator2.next();
      if (TextUtils.isEmpty((CharSequence)localEntry3.getValue())) {}
      for (String str3 = (String)localEntry3.getKey();; str3 = (String)localEntry3.getValue())
      {
        localArrayList2.add(str3);
        break;
      }
    }
    ArrayList localArrayList3 = new ArrayList();
    Iterator localIterator3 = paramMap2.entrySet().iterator();
    if (localIterator3.hasNext())
    {
      Map.Entry localEntry2 = (Map.Entry)localIterator3.next();
      if (TextUtils.isEmpty((CharSequence)localEntry2.getValue())) {}
      for (String str2 = (String)localEntry2.getKey();; str2 = (String)localEntry2.getValue())
      {
        localArrayList3.add(str2);
        break;
      }
    }
    ArrayList localArrayList4 = new ArrayList();
    Iterator localIterator4 = paramMap3.entrySet().iterator();
    if (localIterator4.hasNext())
    {
      Map.Entry localEntry1 = (Map.Entry)localIterator4.next();
      if (TextUtils.isEmpty((CharSequence)localEntry1.getValue())) {}
      for (String str1 = (String)localEntry1.getKey();; str1 = (String)localEntry1.getValue())
      {
        localArrayList4.add(str1);
        break;
      }
    }
    a(localArrayList1, localArrayList2, localArrayList3, localArrayList4, paramOnClickListener);
  }
  
  protected void a(Activity paramActivity, boolean paramBoolean, DialogInterface.OnClickListener paramOnClickListener)
  {
    if (paramBoolean)
    {
      if (paramOnClickListener != null) {
        paramOnClickListener.onClick(null, -1);
      }
      return;
    }
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.b.entrySet().iterator();
    label140:
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (TextUtils.isEmpty(((cn)localEntry.getValue()).a())) {}
      for (String str = (String)localEntry.getKey();; str = ((cn)localEntry.getValue()).a())
      {
        if (((cn)localEntry.getValue()).c) {
          break label140;
        }
        localArrayList.add(str);
        break;
      }
    }
    a(localArrayList, null, null, null, paramOnClickListener);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.ui.ct
 * JD-Core Version:    0.7.0.1
 */