package com.viber.voip.messages.ui;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.ClipData;
import android.content.ClipData.Item;
import android.content.Context;
import android.net.Uri;
import android.os.Build.VERSION;
import android.text.SpannableString;
import android.util.Log;
import android.view.ContextMenu;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.ImageView;
import android.widget.TextView;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.ao;
import com.viber.voip.a.aq;
import com.viber.voip.a.ax;
import com.viber.voip.a.bc;
import com.viber.voip.a.y;
import com.viber.voip.a.z;
import com.viber.voip.market.MarketActivity;
import com.viber.voip.messages.conversation.a.a.a.k;
import com.viber.voip.messages.conversation.ui.ConversationFragment;
import com.viber.voip.messages.extras.fb.s;
import com.viber.voip.messages.extras.twitter.l;
import com.viber.voip.stickers.c.c;
import com.viber.voip.stickers.r;
import com.viber.voip.util.gj;
import com.viber.voip.util.hd;
import java.util.Collections;

public class h
{
  private final Context a;
  private bb b;
  private k c;
  private boolean d;
  private Uri e;
  private ConversationFragment f;
  private String g;
  
  public h(Context paramContext, ConversationFragment paramConversationFragment)
  {
    this.a = paramContext;
    this.b = new bb(paramContext);
    this.f = paramConversationFragment;
  }
  
  private void a(com.viber.voip.messages.conversation.a.a.a parama)
  {
    AlertDialog.Builder localBuilder;
    StringBuilder localStringBuilder;
    if (parama != null)
    {
      localBuilder = new AlertDialog.Builder(new ContextThemeWrapper(this.a, 2131558709)).setTitle("System info");
      localStringBuilder = new StringBuilder().append(parama.toString().replace("-[", "\n").replace("[", "#\n").replace(",", "\n")).append("\n tempFile: ");
      if (parama.H() != null) {
        break label213;
      }
    }
    label213:
    for (String str = "null";; str = gj.a(Uri.parse(parama.H()).getPath()))
    {
      AlertDialog localAlertDialog = localBuilder.setMessage(str.replace("-[", "\n").replace("[", "#\n").replace(",", "\n").replace("]", "").replace(" ", "")).setCancelable(false).setPositiveButton("Close", null).create();
      if ((this.f instanceof com.viber.voip.messages.ui.chathead.a.b))
      {
        com.viber.voip.messages.ui.chathead.a.b localb = (com.viber.voip.messages.ui.chathead.a.b)this.f;
        WindowManager.LayoutParams localLayoutParams = localAlertDialog.getWindow().getAttributes();
        localLayoutParams.type = 1003;
        localLayoutParams.token = localb.h();
        localLayoutParams.flags = (0x20000 | localLayoutParams.flags);
      }
      localAlertDialog.show();
      return;
    }
  }
  
  private void a(Object paramObject, String paramString)
  {
    if (paramObject == null) {
      throw new IllegalArgumentException("Parameter " + paramString + " must be not null");
    }
  }
  
  @SuppressLint({"NewApi"})
  public k a(ContextMenu paramContextMenu, MenuInflater paramMenuInflater, View paramView)
  {
    this.c = ((k)paramView.getTag());
    if (this.c == null) {
      return null;
    }
    paramContextMenu.removeItem(16908321);
    com.viber.voip.messages.conversation.a.a.a locala = (com.viber.voip.messages.conversation.a.a.a)this.c.c();
    String str1 = locala.e();
    View localView1 = LayoutInflater.from(this.a).inflate(2130903151, null);
    TextView localTextView1 = (TextView)localView1.findViewById(2131165356);
    ImageView localImageView;
    if (Build.VERSION.SDK_INT >= 11)
    {
      localTextView1.setLayerType(1, null);
      localImageView = (ImageView)localView1.findViewById(2131165398);
      if ((paramView.getId() != 2131165947) && (paramView.getId() != 2131165981) && (paramView.getId() != 2131166140) && (paramView.getId() != 2131165962)) {
        break label570;
      }
      if (!"sms".equals(str1)) {
        break label1410;
      }
    }
    label1410:
    for (String str2 = "text";; str2 = str1)
    {
      if ("text".equals(str2))
      {
        TextView localTextView2 = (TextView)paramView.findViewById(2131165474);
        if (((localTextView2.getText() instanceof SpannableString)) && (!paramView.isPressed()))
        {
          SpannableString localSpannableString = (SpannableString)localTextView2.getText();
          com.viber.voip.ui.style.a[] arrayOfa = (com.viber.voip.ui.style.a[])localSpannableString.getSpans(0, localSpannableString.length(), com.viber.voip.ui.style.a.class);
          if (arrayOfa.length != 0)
          {
            View localView2 = new View(this.a);
            localView2.setTag(Uri.parse(arrayOfa[0].a()));
            if (arrayOfa[0].a().startsWith("tel:"))
            {
              b(paramContextMenu, paramMenuInflater, localView2);
              return null;
              localTextView1.setDrawingCacheEnabled(true);
              break;
            }
          }
        }
        localTextView1.setText(((com.viber.voip.messages.conversation.a.a.a)this.c.c()).y());
        this.b.a(localTextView1, (int)localTextView1.getTextSize(), true);
        localImageView.setImageResource(2130838268);
        paramContextMenu.setHeaderView(localView1);
        paramMenuInflater.inflate(2131755035, paramContextMenu);
        if (!(this.a instanceof Activity))
        {
          paramContextMenu.removeItem(2131166344);
          paramContextMenu.removeItem(2131166330);
        }
        paramContextMenu.removeItem(2131166346);
        if ((locala.L() == 0) && (this.d))
        {
          paramContextMenu.removeItem(2131166341);
          paramContextMenu.removeItem(2131166344);
          paramContextMenu.removeItem(2131166330);
        }
        if (locala.T()) {
          paramContextMenu.removeItem(2131166342);
        }
        if ((locala.H() == null) && (!"text".equals(str2)) && (!"sticker".equals(str2)) && (!"location".equals(str2)) && (!"animated_message".equals(str2)))
        {
          paramContextMenu.removeItem(2131166344);
          if (!locala.x()) {
            paramContextMenu.removeItem(2131166343);
          }
          paramContextMenu.removeItem(2131166330);
          paramContextMenu.removeItem(2131166345);
        }
        if (!"formatted_follow".equals(str2)) {
          break label846;
        }
        paramContextMenu.removeItem(2131166340);
      }
      for (;;)
      {
        label570:
        return this.c;
        if ("notif".equals(str2))
        {
          localTextView1.setText(this.a.getString(2131493923));
          break;
        }
        if ("sound".equals(str2))
        {
          localTextView1.setText(this.a.getString(2131493919));
          break;
        }
        if ("sticker".equals(str2))
        {
          localTextView1.setText(this.a.getString(2131493921));
          break;
        }
        if ("location".equals(str2))
        {
          localTextView1.setText(this.a.getString(2131493920));
          break;
        }
        if ("image".equals(str2))
        {
          localTextView1.setText(this.a.getString(2131493922));
          break;
        }
        if ("call".equals(str2))
        {
          localTextView1.setText(this.a.getString(2131493699));
          break;
        }
        if ("video".equals(str2))
        {
          localTextView1.setText(this.a.getString(2131493924));
          break;
        }
        if ("animated_message".equals(str2))
        {
          localTextView1.setText(this.a.getString(2131493925));
          break;
        }
        if ("formatted_follow".equals(str2))
        {
          localTextView1.setText(this.a.getString(2131494637));
          break;
        }
        localTextView1.setText("");
        break;
        label846:
        if ("image".equals(str2))
        {
          paramContextMenu.removeItem(2131166345);
          paramContextMenu.removeItem(2131166340);
        }
        else if (("video".equals(str2)) || ("animated_message".equals(str2)))
        {
          paramContextMenu.removeItem(2131166340);
          paramContextMenu.removeItem(2131166330);
          paramContextMenu.removeItem(2131166345);
          MenuItem localMenuItem = paramContextMenu.findItem(2131166341);
          if (("animated_message".equals(str2)) && (localMenuItem != null))
          {
            localMenuItem.setTitle(2131493836);
            paramContextMenu.removeItem(2131166330);
            paramContextMenu.removeItem(2131166345);
          }
        }
        else if ("image".equals(str2))
        {
          paramContextMenu.removeItem(2131166340);
          if (locala.b() == null) {
            paramContextMenu.removeItem(2131166343);
          }
        }
        else if ("text".equals(str2))
        {
          paramContextMenu.removeItem(2131166341);
          paramContextMenu.removeItem(2131166344);
          paramContextMenu.removeItem(2131166330);
          paramContextMenu.removeItem(2131166345);
        }
        else if ("notif".equals(str2))
        {
          paramContextMenu.removeItem(2131166341);
          paramContextMenu.removeItem(2131166344);
          paramContextMenu.removeItem(2131166330);
          paramContextMenu.removeItem(2131166343);
        }
        else if ("location".equals(str2))
        {
          paramContextMenu.removeItem(2131166340);
          paramContextMenu.removeItem(2131166344);
          paramContextMenu.removeItem(2131166330);
          paramContextMenu.removeItem(2131166345);
        }
        else if ("sticker".equals(str2))
        {
          paramContextMenu.removeItem(2131166341);
          paramContextMenu.removeItem(2131166340);
          paramContextMenu.removeItem(2131166344);
          paramContextMenu.removeItem(2131166330);
          com.viber.voip.stickers.c.a locala1 = r.a().l((int)locala.P());
          if ((locala1.c == c.c) && (!locala1.e())) {
            paramContextMenu.removeItem(2131166343);
          } else {
            paramContextMenu.removeItem(2131166345);
          }
        }
        else if ("call".equals(str2))
        {
          paramContextMenu.removeItem(2131166341);
          paramContextMenu.removeItem(2131166340);
          paramContextMenu.removeItem(2131166344);
          paramContextMenu.removeItem(2131166330);
          paramContextMenu.removeItem(2131166343);
        }
        else if ("sound".equals(str2))
        {
          paramContextMenu.removeItem(2131166341);
          paramContextMenu.removeItem(2131166340);
          paramContextMenu.removeItem(2131166344);
          paramContextMenu.removeItem(2131166330);
          paramContextMenu.removeItem(2131166343);
          paramContextMenu.removeItem(2131166345);
        }
      }
    }
  }
  
  public void a(boolean paramBoolean)
  {
    this.d = paramBoolean;
  }
  
  public boolean a(MenuItem paramMenuItem, com.viber.voip.messages.conversation.ui.m paramm)
  {
    switch (paramMenuItem.getItemId())
    {
    }
    for (;;)
    {
      return true;
      if (this.c != null)
      {
        paramm.b(((com.viber.voip.messages.conversation.a.a.a)this.c.c()).y());
        continue;
        if (this.c != null)
        {
          paramm.a(Collections.singletonList(Long.valueOf(((com.viber.voip.messages.conversation.a.a.a)this.c.c()).a())));
          continue;
          if (((this.a instanceof Activity)) && (this.c != null))
          {
            com.viber.voip.messages.conversation.a.a.a locala3 = (com.viber.voip.messages.conversation.a.a.a)this.c.c();
            bc.a().a(paramm.f().c.a.a(aq.a));
            s locals = ViberApplication.getInstance().getFacebookManager();
            Activity localActivity = (Activity)this.a;
            long l = locala3.a();
            if (locala3.e().equals("animated_message")) {}
            for (String str = com.viber.voip.k.a.e(locala3.I());; str = locala3.E())
            {
              locals.a(localActivity, l, str, locala3.e(), locala3.H());
              break;
            }
            if (((this.a instanceof Activity)) && (this.c != null))
            {
              com.viber.voip.messages.conversation.a.a.a locala2 = (com.viber.voip.messages.conversation.a.a.a)this.c.c();
              if (paramm.a(this.a, locala2.a(), locala2.e(), locala2.H(), locala2.p(), false))
              {
                if (locala2.e().equals("image")) {
                  bc.a().a(paramm.f().c.a.a(aq.b));
                }
                ViberApplication.getInstance().getTwitterManager().a((Activity)this.a, locala2.a(), locala2.e(), locala2.H(), locala2.E(), null);
                continue;
                if (this.c != null)
                {
                  com.viber.voip.messages.conversation.a.a.a locala1 = (com.viber.voip.messages.conversation.a.a.a)this.c.c();
                  if ("text".equals(locala1.e())) {
                    bc.a().a(com.viber.voip.a.a.p.a(z.a));
                  }
                  for (;;)
                  {
                    paramm.b(locala1);
                    break;
                    if ("image".equals(locala1.e())) {
                      bc.a().a(com.viber.voip.a.a.p.a(z.b));
                    } else if ("video".equals(locala1.e())) {
                      bc.a().a(com.viber.voip.a.a.p.a(z.c));
                    } else if ("sticker".equals(locala1.e())) {
                      bc.a().a(com.viber.voip.a.a.p.a(z.d));
                    } else if ("location".equals(locala1.e())) {
                      bc.a().a(com.viber.voip.a.a.p.a(z.e));
                    } else if ("animated_message".equals(locala1.e())) {
                      bc.a().a(com.viber.voip.a.a.p.a(z.f));
                    }
                  }
                  try
                  {
                    paramm.a((com.viber.voip.messages.conversation.a.a.a)this.c.c());
                  }
                  catch (NullPointerException localNullPointerException)
                  {
                    localNullPointerException.printStackTrace();
                  }
                  continue;
                  if (this.c != null)
                  {
                    a((com.viber.voip.messages.conversation.a.a.a)this.c.c());
                    continue;
                    if (this.e != null)
                    {
                      paramm.b(this.e.getSchemeSpecificPart(), false);
                      continue;
                      if (this.e != null)
                      {
                        paramm.a(this.e.getSchemeSpecificPart());
                        continue;
                        if (this.e != null)
                        {
                          paramm.c(this.e.getSchemeSpecificPart());
                          continue;
                          if (this.c != null)
                          {
                            com.viber.voip.stickers.c.a locala = r.a().l((int)((com.viber.voip.messages.conversation.a.a.a)this.c.c()).P());
                            if ((this.f instanceof com.viber.voip.messages.ui.chathead.a.b))
                            {
                              ((com.viber.voip.messages.ui.chathead.a.b)this.f).f_(com.viber.voip.stickers.b.h.d(locala.b));
                            }
                            else
                            {
                              MarketActivity.d(com.viber.voip.stickers.b.h.d(locala.b));
                              continue;
                              ((com.viber.voip.messages.ui.chathead.a.b)this.f).c(this.g);
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  
  @SuppressLint({"NewApi"})
  public void b(ContextMenu paramContextMenu, MenuInflater paramMenuInflater, View paramView)
  {
    Log.d("buildCustomMenu", "menu size = " + paramContextMenu.size());
    a(paramContextMenu, "menu");
    a(paramMenuInflater, "menuInflater");
    a(paramView, "view");
    this.e = ((Uri)paramView.getTag());
    if (this.e == null) {
      return;
    }
    View localView = LayoutInflater.from(this.a).inflate(2130903151, null);
    TextView localTextView = (TextView)localView.findViewById(2131165356);
    if (Build.VERSION.SDK_INT >= 11) {
      localTextView.setLayerType(1, null);
    }
    for (;;)
    {
      String str = this.e.getSchemeSpecificPart();
      localTextView.setText(str);
      paramContextMenu.setHeaderView(localView);
      paramMenuInflater.inflate(2131755026, paramContextMenu);
      ViberApplication.getInstance().getContactManager().a(hd.a(ViberApplication.getInstance(), str, str), new i(this, paramContextMenu));
      return;
      localTextView.setDrawingCacheEnabled(true);
    }
  }
  
  @SuppressLint({"NewApi"})
  public void c(ContextMenu paramContextMenu, MenuInflater paramMenuInflater, View paramView)
  {
    Log.d("buildCustomPasteMenu", "menu size = " + paramContextMenu.size());
    a(paramContextMenu, "menu");
    a(paramMenuInflater, "menuInflater");
    a(paramView, "view");
    View localView = LayoutInflater.from(this.a).inflate(2130903151, null);
    ((ImageView)localView.findViewById(2131165398)).setImageResource(2130838268);
    TextView localTextView = (TextView)localView.findViewById(2131165356);
    android.content.ClipboardManager localClipboardManager1;
    if (Build.VERSION.SDK_INT >= 11)
    {
      localClipboardManager1 = (android.content.ClipboardManager)this.a.getSystemService("clipboard");
      localTextView.setLayerType(1, null);
    }
    android.text.ClipboardManager localClipboardManager;
    for (this.g = localClipboardManager1.getPrimaryClip().getItemAt(0).getText().toString();; this.g = localClipboardManager.getText().toString())
    {
      localTextView.setText(this.g);
      this.b.a(localTextView, (int)localTextView.getTextSize(), true);
      paramContextMenu.setHeaderView(localView);
      paramContextMenu.clear();
      paramMenuInflater.inflate(2131755039, paramContextMenu);
      return;
      localClipboardManager = (android.text.ClipboardManager)this.a.getSystemService("clipboard");
      localTextView.setDrawingCacheEnabled(true);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.h
 * JD-Core Version:    0.7.0.1
 */