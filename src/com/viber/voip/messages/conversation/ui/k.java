package com.viber.voip.messages.conversation.ui;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Parcelable;
import android.support.v4.app.FragmentActivity;
import android.widget.Toast;
import com.viber.voip.block.i;
import com.viber.voip.gallery.selection.ViberGalleryActivity;
import com.viber.voip.k.a;
import com.viber.voip.messages.conversation.w;
import com.viber.voip.messages.ui.ad;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class k
  implements ad
{
  private ConversationFragment a;
  
  public k(ConversationFragment paramConversationFragment)
  {
    this.a = paramConversationFragment;
  }
  
  private void a(Activity paramActivity, Runnable paramRunnable)
  {
    com.viber.voip.messages.conversation.h localh = this.a.G().f();
    if ((localh != null) && (!localh.l()))
    {
      i.a(paramActivity, localh.p(), localh.q(), true, paramRunnable);
      return;
    }
    paramRunnable.run();
  }
  
  public void a()
  {
    FragmentActivity localFragmentActivity = this.a.getActivity();
    if (localFragmentActivity != null) {
      a(localFragmentActivity, new l(this, localFragmentActivity));
    }
  }
  
  public void a(int paramInt)
  {
    a(null, paramInt);
  }
  
  public void a(Uri paramUri, int paramInt)
  {
    FragmentActivity localFragmentActivity = this.a.getActivity();
    if (localFragmentActivity != null)
    {
      PackageManager localPackageManager = localFragmentActivity.getPackageManager();
      if (com.viber.voip.messages.extras.image.h.c())
      {
        ArrayList localArrayList = new ArrayList();
        Intent localIntent1 = new Intent("android.media.action.VIDEO_CAPTURE");
        localIntent1.putExtra("output", paramUri);
        Iterator localIterator = localPackageManager.queryIntentActivities(localIntent1, 0).iterator();
        while (localIterator.hasNext())
        {
          ResolveInfo localResolveInfo = (ResolveInfo)localIterator.next();
          String str1 = localResolveInfo.activityInfo.packageName;
          String str2 = localResolveInfo.activityInfo.name;
          if ((!Build.MANUFACTURER.equals("RIM")) || (!"com.rim.camera".equals(str1)))
          {
            Intent localIntent3 = new Intent(localIntent1);
            localIntent3.setComponent(new ComponentName(str1, str2));
            localIntent3.setPackage(str1);
            localIntent3.putExtra("android.intent.extra.durationLimit", 180);
            if (Build.MANUFACTURER.contains("HTC"))
            {
              localIntent3.putExtra("android.intent.extra.sizeLimit", 25165824);
              localIntent3.putExtra("RequestedFrom", "notes");
              localIntent3.putExtra("android.intent.extra.videoQuality", 1);
            }
            for (;;)
            {
              localArrayList.add(localIntent3);
              break;
              localIntent3.putExtra("android.intent.extra.sizeLimit", 25165824L);
            }
          }
        }
        Intent localIntent2 = Intent.createChooser(new Intent().setType("video/*").setAction("android.intent.action.PICK"), this.a.getString(2131493915));
        localIntent2.putExtra("android.intent.extra.INITIAL_INTENTS", (Parcelable[])localArrayList.toArray(new Parcelable[0]));
        this.a.startActivityForResult(localIntent2, paramInt);
      }
    }
  }
  
  public Uri b()
  {
    if (com.viber.voip.messages.extras.image.h.c())
    {
      Uri localUri = com.viber.voip.messages.extras.image.h.a(com.viber.voip.messages.extras.image.l.b, null);
      Intent localIntent = new Intent("android.media.action.IMAGE_CAPTURE");
      localIntent.putExtra("output", localUri);
      try
      {
        this.a.startActivityForResult(localIntent, 1);
        return localUri;
      }
      catch (ActivityNotFoundException localActivityNotFoundException)
      {
        Toast.makeText(this.a.D(), 2131494020, 0).show();
        return null;
      }
    }
    return null;
  }
  
  public void c()
  {
    ViberGalleryActivity.a(this.a.getActivity(), this.a.g());
  }
  
  public Uri d()
  {
    if (Build.MODEL.contains("Nexus"))
    {
      Uri localUri = com.viber.voip.messages.extras.image.h.a(com.viber.voip.messages.extras.image.l.c, null);
      a(localUri, 6);
      return localUri;
    }
    a(5);
    return null;
  }
  
  public void e()
  {
    if (com.viber.voip.messages.extras.image.h.c()) {
      this.a.startActivityForResult(new Intent("com.viber.voip.action.SEND_DOODLE"), 2);
    }
  }
  
  public void f()
  {
    a.a().a(this.a);
  }
  
  public void g() {}
  
  public void h() {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.k
 * JD-Core Version:    0.7.0.1
 */