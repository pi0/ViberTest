package com.viber.voip.user;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.ListView;

class UserDetailPhotoSetter$1
  implements View.OnTouchListener
{
  UserDetailPhotoSetter$1(UserDetailPhotoSetter paramUserDetailPhotoSetter) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    }
    do
    {
      ListView localListView;
      do
      {
        do
        {
          return false;
          UserDetailPhotoSetter.access$100(this.this$0, paramMotionEvent);
          localListView = (ListView)paramView;
          if ((!UserDetailPhotoSetter.access$200(this.this$0, localListView)) || (UserDetailPhotoSetter.access$300(this.this$0) != -1.0F) || (UserDetailPhotoSetter.access$400(this.this$0) == null)) {
            break;
          }
          UserDetailPhotoSetter.access$302(this.this$0, paramMotionEvent.getY());
        } while (UserDetailPhotoSetter.access$500(this.this$0) != -1);
        UserDetailPhotoSetter.access$502(this.this$0, UserDetailPhotoSetter.access$400(this.this$0).getMeasuredHeight());
        return false;
      } while ((UserDetailPhotoSetter.access$300(this.this$0) == -1.0F) || (localListView.isPressed()));
      UserDetailPhotoSetter.access$600(this.this$0, UserDetailPhotoSetter.access$300(this.this$0));
      return false;
    } while (UserDetailPhotoSetter.access$500(this.this$0) == -1);
    UserDetailPhotoSetter.access$700(this.this$0);
    UserDetailPhotoSetter.access$302(this.this$0, -1.0F);
    UserDetailPhotoSetter.access$800(this.this$0);
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.user.UserDetailPhotoSetter.1
 * JD-Core Version:    0.7.0.1
 */