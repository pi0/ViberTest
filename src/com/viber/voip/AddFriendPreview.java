package com.viber.voip;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.ContentProviderOperation;
import android.content.ContentProviderOperation.Builder;
import android.content.ContentProviderResult;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.OperationApplicationException;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.provider.ContactsContract.Data;
import android.provider.ContactsContract.RawContacts;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.TextView.OnEditorActionListener;
import android.widget.Toast;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.internal.view.menu.ActionMenuItemView;
import com.actionbarsherlock.internal.widget.CapitalizingButton;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuInflater;
import com.actionbarsherlock.view.MenuItem;
import com.viber.voip.a.a;
import com.viber.voip.a.bc;
import com.viber.voip.registration.dj;
import com.viber.voip.util.a.f;
import com.viber.voip.util.at;
import com.viber.voip.util.b.al;
import com.viber.voip.util.b.x;
import com.viber.voip.util.bj;
import com.viber.voip.util.gl;
import com.viber.voip.util.gn;
import com.viber.voip.widget.SpinnerWithDescription;
import com.viber.voip.widget.TextViewWithDescription;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Locale;

public class AddFriendPreview
  extends BaseAddFriendActivity
  implements View.OnClickListener, v
{
  private ActionMenuItemView a;
  private View b;
  private View c;
  private ImageView d;
  private k e;
  private SpinnerWithDescription f;
  private TextViewWithDescription g;
  private TextViewWithDescription h;
  private TextViewWithDescription i;
  private ImageView j;
  private ImageView k;
  private com.viber.voip.util.b.w l;
  private x m;
  private Uri n;
  private Uri o;
  private boolean p;
  private boolean q;
  private ColorFilter r;
  private View.OnClickListener s = new g(this);
  private TextView.OnEditorActionListener t = new h(this);
  private al u = new i(this);
  
  private void a(String paramString)
  {
    at.a(this, getString(2131494624, new Object[] { paramString }), getString(2131494625, new Object[] { paramString }), new j(this, paramString), null, 2131493551, 2131493558);
  }
  
  private void a(String paramString, BaseAddFriendActivity.ContactDetails paramContactDetails, Bundle paramBundle)
  {
    boolean bool1 = a(this);
    boolean bool2;
    int i2;
    if (paramBundle == null)
    {
      this.i.setText(paramString);
      this.i.setEditable(TextUtils.isEmpty(paramString));
      if (paramContactDetails != null)
      {
        this.n = paramContactDetails.f();
        if ((this.n == null) || (!paramContactDetails.g()))
        {
          bool2 = true;
          this.p = bool2;
          String str3 = paramContactDetails.d();
          this.g.setText(str3);
          TextViewWithDescription localTextViewWithDescription2 = this.h;
          i2 = 0;
          if (!bool1)
          {
            boolean bool3 = f.l(str3);
            i2 = 0;
            if (!bool3) {
              break label223;
            }
          }
          label108:
          localTextViewWithDescription2.setVisibility(i2);
          label115:
          if ((this.h.getVisibility() == 0) || (this.i.a())) {
            break label354;
          }
          this.g.setImeOptions(6);
          this.g.setOnEditorActionListener(this.t);
          label155:
          if (!this.i.a()) {
            break label365;
          }
          this.h.setImeOptions(5);
          this.i.setImeOptions(6);
          this.i.setOnEditorActionListener(this.t);
        }
      }
    }
    for (;;)
    {
      this.l.a(this.n, this.m, this.u);
      b();
      return;
      bool2 = false;
      break;
      label223:
      i2 = 8;
      break label108;
      TextViewWithDescription localTextViewWithDescription1 = this.h;
      int i1 = 0;
      if (bool1) {}
      for (;;)
      {
        localTextViewWithDescription1.setVisibility(i1);
        break;
        i1 = 8;
      }
      this.n = ((Uri)paramBundle.getParcelable("photo_uri"));
      this.p = paramBundle.getBoolean("can_change_photo");
      this.q = paramBundle.getBoolean("is_loaded_photo");
      String str1 = paramBundle.getString("display_name");
      String str2 = paramBundle.getString("phonetic_name");
      if ((bool1) || (f.l(str1)) || (!TextUtils.isEmpty(str2)))
      {
        this.h.setVisibility(0);
        break label115;
      }
      this.h.setVisibility(8);
      break label115;
      label354:
      this.g.setImeOptions(5);
      break label155;
      label365:
      this.h.setImeOptions(6);
      this.h.setOnEditorActionListener(this.t);
    }
  }
  
  private void a(boolean paramBoolean)
  {
    this.b.setEnabled(paramBoolean);
    gl.a(paramBoolean, this.a);
  }
  
  private static boolean a(Context paramContext)
  {
    Configuration localConfiguration = paramContext.getResources().getConfiguration();
    return (Locale.JAPAN.equals(localConfiguration.locale)) || (Locale.JAPANESE.equals(localConfiguration.locale)) || (dj.c());
  }
  
  private boolean a(ArrayList<ContentProviderOperation> paramArrayList)
  {
    for (;;)
    {
      try
      {
        Account localAccount = (Account)this.f.getSelectedItem();
        ContentProviderOperation.Builder localBuilder1 = ContentProviderOperation.newInsert(ContactsContract.RawContacts.CONTENT_URI);
        if (localAccount == null) {
          break label373;
        }
        str1 = localAccount.type;
        ContentProviderOperation.Builder localBuilder2 = localBuilder1.withValue("account_type", str1);
        if (localAccount == null) {
          break label379;
        }
        str2 = localAccount.name;
        paramArrayList.add(localBuilder2.withValue("account_name", str2).build());
        String[] arrayOfString = this.h.getText().toString().replaceAll("　", " ").trim().split("\\s+", 3);
        int i1 = arrayOfString.length;
        if (i1 <= 0) {
          break label359;
        }
        str3 = arrayOfString[0];
        if (i1 == 2)
        {
          str4 = arrayOfString[1];
          localObject = null;
          paramArrayList.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/name").withValue("data1", this.g.getText().toString().trim()).withValue("data9", str3).withValue("data8", localObject).withValue("data7", str4).build());
          paramArrayList.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/phone_v2").withValue("data1", this.i.getText().toString()).withValue("data2", Integer.valueOf(2)).build());
          if (this.n == null) {
            break label371;
          }
          byte[] arrayOfByte = a(this.n, this);
          paramArrayList.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/photo").withValue("data15", arrayOfByte).build());
          break label371;
        }
        if (i1 == 3)
        {
          localObject = arrayOfString[1];
          str4 = arrayOfString[2];
          continue;
        }
        localObject = null;
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        return false;
      }
      catch (IOException localIOException)
      {
        return false;
      }
      String str4 = null;
      continue;
      label359:
      Object localObject = null;
      str4 = null;
      String str3 = null;
      continue;
      label371:
      return true;
      label373:
      String str1 = null;
      continue;
      label379:
      String str2 = null;
    }
  }
  
  /* Error */
  private static byte[] a(Uri paramUri, Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_1
    //   3: aload_0
    //   4: iconst_1
    //   5: invokestatic 355	com/viber/voip/util/b/w:b	(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/io/InputStream;
    //   8: astore 5
    //   10: aload 5
    //   12: astore 4
    //   14: aload 4
    //   16: ifnull +89 -> 105
    //   19: new 357	java/io/ByteArrayOutputStream
    //   22: dup
    //   23: invokespecial 358	java/io/ByteArrayOutputStream:<init>	()V
    //   26: astore 6
    //   28: aload 4
    //   30: aload 6
    //   32: invokestatic 363	com/viber/voip/util/bu:a	(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    //   35: aload 6
    //   37: invokevirtual 367	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   40: astore 9
    //   42: aload 9
    //   44: astore 7
    //   46: iconst_2
    //   47: anewarray 369	java/io/Closeable
    //   50: dup
    //   51: iconst_0
    //   52: aload 4
    //   54: aastore
    //   55: dup
    //   56: iconst_1
    //   57: aload 6
    //   59: aastore
    //   60: invokestatic 372	com/viber/voip/util/bu:a	([Ljava/io/Closeable;)V
    //   63: aload 7
    //   65: areturn
    //   66: astore_3
    //   67: aconst_null
    //   68: astore 4
    //   70: iconst_2
    //   71: anewarray 369	java/io/Closeable
    //   74: dup
    //   75: iconst_0
    //   76: aload 4
    //   78: aastore
    //   79: dup
    //   80: iconst_1
    //   81: aload_2
    //   82: aastore
    //   83: invokestatic 372	com/viber/voip/util/bu:a	([Ljava/io/Closeable;)V
    //   86: aload_3
    //   87: athrow
    //   88: astore_3
    //   89: aconst_null
    //   90: astore_2
    //   91: goto -21 -> 70
    //   94: astore 8
    //   96: aload 6
    //   98: astore_2
    //   99: aload 8
    //   101: astore_3
    //   102: goto -32 -> 70
    //   105: aconst_null
    //   106: astore 6
    //   108: aconst_null
    //   109: astore 7
    //   111: goto -65 -> 46
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	114	0	paramUri	Uri
    //   0	114	1	paramContext	Context
    //   1	98	2	localObject1	Object
    //   66	21	3	localObject2	Object
    //   88	1	3	localObject3	Object
    //   101	1	3	localObject4	Object
    //   12	65	4	localInputStream1	java.io.InputStream
    //   8	3	5	localInputStream2	java.io.InputStream
    //   26	81	6	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   44	66	7	arrayOfByte1	byte[]
    //   94	6	8	localObject5	Object
    //   40	3	9	arrayOfByte2	byte[]
    // Exception table:
    //   from	to	target	type
    //   2	10	66	finally
    //   19	28	88	finally
    //   28	42	94	finally
  }
  
  private void b()
  {
    Account[] arrayOfAccount = ((AccountManager)getSystemService("account")).getAccountsByType("com.google");
    this.e = new k(arrayOfAccount, this);
    this.f.setAdapter(this.e);
    String str = ViberApplication.preferences(this).b("selected_account", null);
    if (arrayOfAccount.length == 0) {
      this.f.setVisibility(8);
    }
    int i2;
    do
    {
      int i3;
      do
      {
        return;
        if (arrayOfAccount.length == 1)
        {
          this.f.setSelection(0);
          return;
        }
        if (!TextUtils.isEmpty(str)) {
          break;
        }
        i3 = this.e.a();
      } while (i3 == -1);
      this.f.setSelection(i3);
      return;
      int i1 = this.e.a(str);
      if (i1 != -1)
      {
        this.f.setSelection(i1);
        return;
      }
      i2 = this.e.a();
    } while (i2 == -1);
    this.f.setSelection(i2);
  }
  
  private void c()
  {
    ArrayList localArrayList = new ArrayList();
    if (!a(localArrayList))
    {
      at.a(this, 2131493805, 2131494630, null);
      return;
    }
    try
    {
      ContentProviderResult[] arrayOfContentProviderResult = getContentResolver().applyBatch("com.android.contacts", localArrayList);
      if ((arrayOfContentProviderResult != null) && (arrayOfContentProviderResult.length > 0))
      {
        Account localAccount = (Account)this.f.getSelectedItem();
        if (localAccount != null) {
          ViberApplication.preferences(this).a("selected_account", localAccount.name);
        }
        finish();
        return;
      }
    }
    catch (RemoteException localRemoteException)
    {
      at.a(this, 2131493805, 2131494630, null);
      return;
      at.a(this, 2131493805, 2131494630, null);
      return;
    }
    catch (OperationApplicationException localOperationApplicationException)
    {
      at.a(this, 2131493805, 2131494630, null);
    }
  }
  
  private void d()
  {
    bc.a().a(a.e.e());
    PackageManager localPackageManager = getPackageManager();
    if ((!localPackageManager.hasSystemFeature("android.hardware.camera")) && (!localPackageManager.hasSystemFeature("android.hardware.camera.front"))) {
      Toast.makeText(this, 2131494020, 0).show();
    }
    do
    {
      do
      {
        return;
      } while (!com.viber.voip.messages.extras.image.h.c());
      this.o = com.viber.voip.messages.extras.image.h.a(com.viber.voip.messages.extras.image.l.d, null);
    } while (this.o == null);
    Intent localIntent = new Intent("android.media.action.IMAGE_CAPTURE");
    localIntent.putExtra("output", this.o);
    startActivityForResult(localIntent, 10);
  }
  
  private void e()
  {
    bc.a().a(a.e.d());
    if (com.viber.voip.messages.extras.image.h.c()) {
      startActivityForResult(at.a(new Intent().setType("image/*").setAction("android.intent.action.GET_CONTENT"), getString(2131493914), new Intent[0]), 20);
    }
  }
  
  public void a() {}
  
  public void a(int paramInt, String paramString)
  {
    switch (paramInt)
    {
    default: 
      a(null, null, null);
      at.a(this, 2131493775, 2131494137, null);
      return;
    case 1: 
      a(paramString, null, null);
      a(paramString);
      return;
    case 3: 
    case 4: 
      a(paramString, null, null);
      at.a(this, 2131493794, 2131493758, null);
      return;
    }
    a(paramString, null, null);
    at.a(this, 2131494231, 2131494232, null);
  }
  
  public void a(String paramString, BaseAddFriendActivity.ContactDetails paramContactDetails)
  {
    if (paramContactDetails.a())
    {
      gn.a(this, ViberApplication.isTablet(), paramContactDetails.c(), paramContactDetails.b(), paramContactDetails.d(), paramContactDetails.e(), paramContactDetails.f(), null);
      finish();
      return;
    }
    a(paramString, paramContactDetails, null);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 == -1) {
      switch (paramInt1)
      {
      }
    }
    while ((paramInt2 != 0) || (this.o == null))
    {
      String str;
      do
      {
        do
        {
          Uri localUri;
          do
          {
            do
            {
              return;
              startActivityForResult(com.viber.voip.messages.extras.image.g.a(this.o), 30);
              return;
            } while ((paramIntent == null) || (paramIntent.getData() == null));
            localUri = paramIntent.getData();
            if ((!"image".equals(bj.b(localUri))) || (com.viber.voip.messages.extras.image.h.c(localUri))) {
              break;
            }
          } while ((!com.viber.voip.messages.extras.image.h.a()) || (!com.viber.voip.messages.extras.image.h.c()));
          startActivityForResult(com.viber.voip.messages.extras.image.g.a(localUri), 30);
          return;
          bj.a(this, null);
          return;
        } while (paramIntent == null);
        if (this.o != null) {
          com.viber.voip.messages.extras.image.h.c(getApplicationContext(), this.o);
        }
        this.n = Uri.parse(paramIntent.getAction());
        this.j.setImageResource(2130838205);
        this.k.setImageResource(2130838105);
        this.l.a(this.n, this.m, this.u);
        return;
        str = paramIntent.getStringExtra("authAccount");
      } while (this.e == null);
      int i1 = this.e.a(str);
      this.f.setSelection(i1);
      return;
    }
    com.viber.voip.messages.extras.image.h.c(this, this.o);
    this.o = null;
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131165587: 
      d();
      return;
    }
    e();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903140);
    getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    this.l = com.viber.voip.util.b.w.a(this);
    this.m = x.d(this);
    this.r = new PorterDuffColorFilter(getResources().getColor(2131296431), PorterDuff.Mode.SRC_ATOP);
    Intent localIntent = getIntent();
    boolean bool = localIntent.getBooleanExtra("invite_not_viber", false);
    String str = localIntent.getStringExtra("phone_number");
    BaseAddFriendActivity.ContactDetails localContactDetails = (BaseAddFriendActivity.ContactDetails)localIntent.getParcelableExtra("contact_details");
    this.b = findViewById(2131165593);
    this.c = findViewById(2131165585);
    this.d = ((ImageView)findViewById(2131165458));
    this.f = ((SpinnerWithDescription)findViewById(2131165592));
    this.g = ((TextViewWithDescription)findViewById(2131165590));
    this.h = ((TextViewWithDescription)findViewById(2131165591));
    this.i = ((TextViewWithDescription)findViewById(2131165581));
    this.k = ((ImageView)findViewById(2131165587));
    this.j = ((ImageView)findViewById(2131165588));
    this.k.setOnClickListener(this);
    this.j.setOnClickListener(this);
    this.b.setOnClickListener(this.s);
    if ((!bool) && (localContactDetails == null) && (paramBundle == null)) {
      a(str, true, this);
    }
    do
    {
      return;
      a(str, localContactDetails, paramBundle);
    } while ((!bool) || (paramBundle != null));
    a(str);
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getSupportMenuInflater().inflate(2131755031, paramMenu);
    this.a = gl.a(paramMenu.findItem(2131166288), 2130838237, 2131494199, this.s);
    ((CapitalizingButton)this.a.findViewById(2131165497)).setTextColor(getResources().getColorStateList(2131296506));
    a(this.q);
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    }
    onBackPressed();
    return true;
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putParcelable("photo_uri", this.n);
    paramBundle.putBoolean("can_change_photo", this.p);
    paramBundle.putBoolean("is_loaded_photo", this.q);
    paramBundle.putString("display_name", this.g.getText().toString());
    paramBundle.putString("phonetic_name", this.h.getText().toString());
    super.onSaveInstanceState(paramBundle);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.AddFriendPreview
 * JD-Core Version:    0.7.0.1
 */