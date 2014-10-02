package com.viber.voip.user;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.ListPopupWindow;
import java.util.ArrayList;

public class PhotoActionPopup
{
  public static final String TAG = "PhotoActionPopup";
  
  public static ListPopupWindow createPopupMenu(Context paramContext, View paramView, PhotoActionPopup.Listener paramListener, int paramInt)
  {
    ArrayList localArrayList = new ArrayList(4);
    if ((paramInt & 0x1) > 0) {
      localArrayList.add(new PhotoActionPopup.ChoiceListItem(0, paramContext.getString(2131494017)));
    }
    if (TextUtils.isEmpty(UserData.getName())) {}
    for (int i = 2131493711;; i = 2131493712)
    {
      localArrayList.add(new PhotoActionPopup.ChoiceListItem(4, paramContext.getString(i)));
      localArrayList.add(new PhotoActionPopup.ChoiceListItem(5, paramContext.getString(2131494406)));
      if ((paramInt & 0x4) > 0)
      {
        if ((paramInt & 0x8) > 0) {}
        String str1 = paramContext.getString(2131494015);
        String str2 = paramContext.getString(2131494016);
        localArrayList.add(new PhotoActionPopup.ChoiceListItem(1, str1));
        localArrayList.add(new PhotoActionPopup.ChoiceListItem(2, str2));
      }
      if ((paramInt & 0x2) > 0) {
        localArrayList.add(new PhotoActionPopup.ChoiceListItem(3, paramContext.getString(2131494022)));
      }
      ArrayAdapter localArrayAdapter = new ArrayAdapter(paramContext, 2130903325, localArrayList);
      ListPopupWindow localListPopupWindow = new ListPopupWindow(paramContext);
      PhotoActionPopup.1 local1 = new PhotoActionPopup.1(localArrayList, paramListener, localListPopupWindow);
      localListPopupWindow.setAnchorView(paramView);
      localListPopupWindow.setAdapter(localArrayAdapter);
      localListPopupWindow.setOnItemClickListener(local1);
      localListPopupWindow.setModal(true);
      localListPopupWindow.setInputMethodMode(2);
      int j = paramContext.getResources().getDimensionPixelSize(2131362060);
      if (paramView.getWidth() < j) {
        localListPopupWindow.setWidth(j);
      }
      return localListPopupWindow;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.user.PhotoActionPopup
 * JD-Core Version:    0.7.0.1
 */