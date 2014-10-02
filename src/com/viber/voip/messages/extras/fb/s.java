package com.viber.voip.messages.extras.fb;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.facebook.AccessToken;
import com.facebook.FacebookException;
import com.facebook.FacebookRequestError;
import com.facebook.HttpMethod;
import com.facebook.Request;
import com.facebook.Request.Callback;
import com.facebook.Request.GraphUserCallback;
import com.facebook.Response;
import com.facebook.Session;
import com.facebook.Session.NewPermissionsRequest;
import com.facebook.Session.OpenRequest;
import com.facebook.Session.StatusCallback;
import com.facebook.SessionState;
import com.facebook.model.GraphObject;
import com.facebook.model.GraphUser;
import com.viber.jni.PhoneControllerDelegateAdapter;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.PhoneControllerWrapper.InitializedListener;
import com.viber.jni.controller.PhoneController;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.a;
import com.viber.voip.a.an;
import com.viber.voip.a.ao;
import com.viber.voip.a.aq;
import com.viber.voip.a.aw;
import com.viber.voip.a.bc;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.util.ft;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class s
  extends PhoneControllerDelegateAdapter
  implements PhoneControllerWrapper.InitializedListener
{
  private static final String a = s.class.getSimpleName();
  private static final String[] h = { "user_videos", "read_stream", "user_photos", "user_birthday", "friends_birthday" };
  private static final String[] i = { "publish_stream" };
  private static HashMap<Long, ac> k = new HashMap();
  private final ViberApplication b = ViberApplication.getInstance();
  private final PhoneControllerWrapper c = ViberApplication.getInstance().getPhoneController(false);
  private final Handler d = dc.a(dk.d);
  private ad e;
  private aw f = new aw();
  private boolean g = false;
  private Collection<af> j = new HashSet(5);
  private Session.StatusCallback l = new t(this);
  private Request.GraphUserCallback m = new u(this);
  private ag n;
  private Request.Callback o = new w(this);
  
  public s(String paramString)
  {
    this.c.registerDelegate(this);
    this.c.addInitializedListener(this);
  }
  
  private ParcelFileDescriptor a(File paramFile)
  {
    try
    {
      ParcelFileDescriptor localParcelFileDescriptor = ParcelFileDescriptor.open(paramFile, 268435456);
      return localParcelFileDescriptor;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      d("" + localFileNotFoundException.getMessage());
      localFileNotFoundException.printStackTrace();
    }
    return null;
  }
  
  private void a(long paramLong, String paramString1, String paramString2, String paramString3, int paramInt)
  {
    d("FacebookManager.notifySharingStarted: " + paramLong);
    synchronized (this.j)
    {
      HashSet localHashSet = new HashSet(this.j);
      Iterator localIterator = localHashSet.iterator();
      if (localIterator.hasNext()) {
        ((af)localIterator.next()).a(paramLong, paramString1, paramString2, paramString3, paramInt);
      }
    }
  }
  
  private void a(long paramLong, String paramString1, String paramString2, String paramString3, int paramInt, Throwable paramThrowable)
  {
    d("FacebookManager.notifyError: " + paramLong + " --> " + paramThrowable.getMessage());
    synchronized (this.j)
    {
      HashSet localHashSet = new HashSet(this.j);
      Iterator localIterator = localHashSet.iterator();
      if (localIterator.hasNext()) {
        ((af)localIterator.next()).a(paramLong, paramString1, paramString2, paramString3, paramInt, paramThrowable);
      }
    }
  }
  
  private void a(Activity paramActivity, Session paramSession)
  {
    if (paramSession == null)
    {
      SharedPreferences localSharedPreferences = paramActivity.getSharedPreferences("facebook-session", 0);
      String str = localSharedPreferences.getString("access_token", null);
      d("oldAccessToken =" + str);
      if (str != null)
      {
        Session localSession = new Session(paramActivity);
        SharedPreferences.Editor localEditor = localSharedPreferences.edit();
        localEditor.putString("access_token", null);
        localEditor.commit();
        localSession.open(AccessToken.createFromExistingAccessToken(str, null, null, null, Arrays.asList(i)), this.l);
        Session.setActiveSession(localSession);
      }
    }
  }
  
  private void a(Context paramContext, long paramLong, String paramString1, String paramString2, String paramString3, String paramString4, Bundle paramBundle)
  {
    d("FacebookManager.getComment: to " + paramLong);
    Intent localIntent = new Intent(paramContext, FacebookDialogActivity.class);
    localIntent.setAction("fb_comment");
    if (paramBundle != null) {
      localIntent.putExtras(paramBundle);
    }
    localIntent.putExtra("msg_id", paramLong);
    localIntent.putExtra("msg_body", paramString1);
    localIntent.putExtra("msg_mime_type", paramString2);
    localIntent.putExtra("msg_uri", paramString3);
    localIntent.setFlags(268435456);
    paramContext.startActivity(localIntent);
  }
  
  private void a(Context paramContext, Bundle paramBundle, String paramString, ai paramai, Uri paramUri)
  {
    Response localResponse = new Request(Session.getActiveSession(), paramString, paramBundle, HttpMethod.POST, null).executeAndWait();
    h.c(paramContext, paramUri);
    if (localResponse.getError() != null)
    {
      String str2 = c(localResponse.getError().getErrorMessage());
      bc.a().a(this.f.a.a(aq.a, str2));
      if (paramai != null) {
        paramai.b(str2);
      }
    }
    for (;;)
    {
      return;
      GraphObject localGraphObject = localResponse.getGraphObject();
      if (localGraphObject != null)
      {
        JSONObject localJSONObject = localGraphObject.getInnerJSONObject();
        try
        {
          String str1 = localJSONObject.getString("id");
          if (paramai != null)
          {
            paramai.a(str1);
            return;
          }
        }
        catch (JSONException localJSONException)
        {
          d("Post Facebook media, responce - JSON error " + localJSONException.getMessage());
        }
      }
    }
  }
  
  private void a(Session paramSession, SessionState paramSessionState, Exception paramException)
  {
    if (paramSession.isOpened())
    {
      d("Session opened");
      bc.a().a(a.i.a.b(aq.a));
      if (this.e != null) {
        this.e.onAuthorizationSuccess(a(i));
      }
      if ((a(i)) && (this.g))
      {
        a(this.b);
        this.g = false;
      }
      j();
    }
    if (paramSession.isClosed())
    {
      bc.a().a(a.i.a.b(aq.a));
      d("Session closed");
      if (this.e != null) {
        this.e.onAuthorizationCanceled();
      }
      if (paramException != null) {
        bc.a().a(a.i.a.b(aq.a, paramException.getMessage()));
      }
    }
  }
  
  private void a(GraphUser paramGraphUser, Response paramResponse)
  {
    d("Facebook profile loaded");
    if (paramGraphUser != null)
    {
      String str1 = paramGraphUser.getId();
      String str2 = paramGraphUser.getName();
      d("Save Facebook UserData userId=" + str1 + " userName=" + str2 + " stored userId=" + l());
      if (!str1.equals(l()))
      {
        a(str2, str1);
        b(str1, h().getAccessToken());
      }
    }
    for (;;)
    {
      if (this.e != null) {
        this.e.onFacebookProfileStored();
      }
      return;
      FacebookRequestError localFacebookRequestError = paramResponse.getError();
      if (localFacebookRequestError != null) {
        d("Facebook User Profile is null, reason - " + localFacebookRequestError.getErrorMessage());
      } else {
        d("Facebook User Profile is null");
      }
    }
  }
  
  private boolean a(Collection<String> paramCollection1, Collection<String> paramCollection2)
  {
    Iterator localIterator = paramCollection1.iterator();
    while (localIterator.hasNext()) {
      if (!paramCollection2.contains((String)localIterator.next())) {
        return false;
      }
    }
    return true;
  }
  
  private boolean a(String[] paramArrayOfString)
  {
    List localList = Session.getActiveSession().getPermissions();
    return a(Arrays.asList(paramArrayOfString), localList);
  }
  
  private void b(long paramLong, String paramString1, String paramString2, String paramString3, int paramInt)
  {
    d("FacebookManager.notifyShared: " + paramLong);
    synchronized (this.j)
    {
      HashSet localHashSet = new HashSet(this.j);
      Iterator localIterator = localHashSet.iterator();
      if (localIterator.hasNext()) {
        ((af)localIterator.next()).b(paramLong, paramString1, paramString2, paramString3, paramInt);
      }
    }
  }
  
  private void b(String paramString1, String paramString2)
  {
    this.d.post(new v(this, paramString1, paramString2));
  }
  
  private String c(String paramString)
  {
    String str = "Error";
    if (str != null)
    {
      str = paramString.replace("com.facebook.FacebookException:", "");
      if (str.contains("Error validating access token")) {
        str = "Error validating access token";
      }
    }
    return str;
  }
  
  private void d(Context paramContext, long paramLong, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    if ("image".equalsIgnoreCase(paramString2))
    {
      a(paramContext, paramLong, paramString1, paramString2, paramString3, paramString4);
      return;
    }
    if ("video".equalsIgnoreCase(paramString2))
    {
      b(paramContext, paramLong, paramString1, paramString2, paramString3, paramString4);
      return;
    }
    if (("text".equalsIgnoreCase(paramString2)) && (paramString1 != null))
    {
      a(paramContext, paramLong, paramString1, paramString2, paramString3);
      return;
    }
    if (("animated_message".equalsIgnoreCase(paramString2)) && (paramString1 != null))
    {
      b(paramContext, paramLong, paramString1, paramString2, paramString3);
      return;
    }
    Intent localIntent = new Intent(paramContext, FacebookDialogActivity.class);
    localIntent.setAction("dialog_alert");
    localIntent.putExtra("message", this.b.getString(2131493948));
    localIntent.setFlags(268435456);
    paramContext.startActivity(localIntent);
  }
  
  private static void d(String paramString) {}
  
  private void e(Context paramContext, long paramLong, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this.d.post(new y(this, paramString4, paramContext, paramString3, paramLong, paramString1, paramString2));
  }
  
  private void f(Context paramContext, long paramLong, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this.d.post(new z(this, paramString3, paramString4, paramLong, paramString1, paramString2, paramContext));
  }
  
  private Session h()
  {
    Session localSession = Session.getActiveSession();
    if (localSession == null)
    {
      if (localSession == null) {
        localSession = new Session(this.b);
      }
      Session.setActiveSession(localSession);
    }
    return localSession;
  }
  
  private void i()
  {
    boolean bool1 = ft.b(this.b);
    boolean bool2 = m();
    d("tryToreportFacebookStatisticsIfNeeded: isOnline=" + bool1 + " isFbStatisticsReported=" + bool2);
    if ((ft.b(this.b)) && (this.c.isInitialized()) && (!m()) && (!TextUtils.isEmpty(l())) && (!TextUtils.isEmpty(h().getAccessToken()))) {
      b(l(), h().getAccessToken());
    }
  }
  
  private void j()
  {
    Request.executeMeRequestAsync(Session.getActiveSession(), this.m);
  }
  
  private Bundle k()
  {
    Bundle localBundle = new Bundle();
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("name", this.b.getString(2131494822));
      localJSONObject.put("link", this.b.getString(2131494828));
      localBundle.putString("actions", localJSONObject.toString());
      localBundle.putString("picture", this.b.getString(2131494826));
      localBundle.putString("name", this.b.getString(2131493964));
      localBundle.putString("link", this.b.getString(2131494828));
      localBundle.putString("caption", this.b.getString(2131494827));
      localBundle.putString("description", this.b.getString(2131493965));
      return localBundle;
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        localJSONException.printStackTrace();
      }
    }
  }
  
  private String l()
  {
    return PreferenceManager.getDefaultSharedPreferences(this.b.getApplicationContext()).getString("fb_id", "");
  }
  
  private boolean m()
  {
    try
    {
      boolean bool = PreferenceManager.getDefaultSharedPreferences(this.b.getApplicationContext()).getBoolean("fb_is_statistics_reported", false);
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  /* Error */
  public android.graphics.Bitmap a(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_1
    //   3: ifnonnull +14 -> 17
    //   6: new 674	java/lang/IllegalArgumentException
    //   9: dup
    //   10: ldc_w 676
    //   13: invokespecial 678	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   16: athrow
    //   17: iconst_3
    //   18: anewarray 680	java/lang/Object
    //   21: astore 5
    //   23: aload 5
    //   25: iconst_0
    //   26: aload_1
    //   27: aastore
    //   28: aload 5
    //   30: iconst_1
    //   31: sipush 720
    //   34: invokestatic 686	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   37: aastore
    //   38: aload 5
    //   40: iconst_2
    //   41: sipush 720
    //   44: invokestatic 686	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   47: aastore
    //   48: ldc_w 688
    //   51: aload 5
    //   53: invokestatic 692	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   56: astore 6
    //   58: new 619	android/os/Bundle
    //   61: dup
    //   62: invokespecial 620	android/os/Bundle:<init>	()V
    //   65: astore 7
    //   67: aload 7
    //   69: ldc_w 694
    //   72: aload 6
    //   74: invokevirtual 636	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   77: new 321	com/facebook/Request
    //   80: dup
    //   81: invokestatic 325	com/facebook/Session:getActiveSession	()Lcom/facebook/Session;
    //   84: ldc_w 696
    //   87: aload 7
    //   89: getstatic 699	com/facebook/HttpMethod:GET	Lcom/facebook/HttpMethod;
    //   92: aconst_null
    //   93: invokespecial 334	com/facebook/Request:<init>	(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V
    //   96: invokevirtual 338	com/facebook/Request:executeAndWait	()Lcom/facebook/Response;
    //   99: invokevirtual 383	com/facebook/Response:getGraphObject	()Lcom/facebook/model/GraphObject;
    //   102: invokeinterface 389 1 0
    //   107: ldc_w 701
    //   110: invokevirtual 705	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   113: astore 8
    //   115: aload 8
    //   117: invokevirtual 711	org/json/JSONArray:length	()I
    //   120: ifeq +163 -> 283
    //   123: aload 8
    //   125: iconst_0
    //   126: invokevirtual 715	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   129: ldc_w 717
    //   132: invokevirtual 395	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   135: astore 9
    //   137: new 156	java/lang/StringBuilder
    //   140: dup
    //   141: invokespecial 157	java/lang/StringBuilder:<init>	()V
    //   144: ldc_w 719
    //   147: invokevirtual 163	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   150: aload 9
    //   152: invokevirtual 163	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   155: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   158: invokestatic 171	com/viber/voip/messages/extras/fb/s:d	(Ljava/lang/String;)V
    //   161: aload 9
    //   163: invokestatic 612	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   166: istore 15
    //   168: aconst_null
    //   169: astore_2
    //   170: iload 15
    //   172: ifeq +49 -> 221
    //   175: new 156	java/lang/StringBuilder
    //   178: dup
    //   179: invokespecial 157	java/lang/StringBuilder:<init>	()V
    //   182: ldc_w 721
    //   185: invokevirtual 163	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   188: aload_1
    //   189: invokevirtual 163	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   192: ldc_w 723
    //   195: invokevirtual 163	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   198: sipush 720
    //   201: invokevirtual 726	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   204: ldc_w 728
    //   207: invokevirtual 163	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   210: sipush 720
    //   213: invokevirtual 726	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   216: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   219: astore 9
    //   221: new 730	java/net/URL
    //   224: dup
    //   225: aload 9
    //   227: invokespecial 731	java/net/URL:<init>	(Ljava/lang/String;)V
    //   230: invokevirtual 735	java/net/URL:openStream	()Ljava/io/InputStream;
    //   233: astore 16
    //   235: aload 16
    //   237: astore 11
    //   239: aload 11
    //   241: invokestatic 741	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    //   244: astore 17
    //   246: aload 17
    //   248: ifnonnull +70 -> 318
    //   251: new 670	com/viber/voip/messages/extras/fb/c
    //   254: dup
    //   255: ldc_w 743
    //   258: invokespecial 744	com/viber/voip/messages/extras/fb/c:<init>	(Ljava/lang/String;)V
    //   261: athrow
    //   262: astore 10
    //   264: aload 10
    //   266: athrow
    //   267: astore 12
    //   269: aload 11
    //   271: astore_2
    //   272: aload_2
    //   273: ifnull +7 -> 280
    //   276: aload_2
    //   277: invokevirtual 749	java/io/InputStream:close	()V
    //   280: aload 12
    //   282: athrow
    //   283: ldc 159
    //   285: astore 9
    //   287: ldc_w 751
    //   290: invokestatic 171	com/viber/voip/messages/extras/fb/s:d	(Ljava/lang/String;)V
    //   293: goto -132 -> 161
    //   296: astore 4
    //   298: new 670	com/viber/voip/messages/extras/fb/c
    //   301: dup
    //   302: aload 4
    //   304: invokespecial 754	com/viber/voip/messages/extras/fb/c:<init>	(Ljava/lang/Throwable;)V
    //   307: athrow
    //   308: astore_3
    //   309: new 670	com/viber/voip/messages/extras/fb/c
    //   312: dup
    //   313: aload_3
    //   314: invokespecial 754	com/viber/voip/messages/extras/fb/c:<init>	(Ljava/lang/Throwable;)V
    //   317: athrow
    //   318: aload 11
    //   320: ifnull +8 -> 328
    //   323: aload 11
    //   325: invokevirtual 749	java/io/InputStream:close	()V
    //   328: aload 17
    //   330: areturn
    //   331: astore 18
    //   333: bipush 6
    //   335: getstatic 47	com/viber/voip/messages/extras/fb/s:a	Ljava/lang/String;
    //   338: new 156	java/lang/StringBuilder
    //   341: dup
    //   342: invokespecial 157	java/lang/StringBuilder:<init>	()V
    //   345: ldc_w 756
    //   348: invokevirtual 163	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   351: aload 18
    //   353: invokevirtual 757	java/io/IOException:getMessage	()Ljava/lang/String;
    //   356: invokevirtual 163	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   359: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   362: aload 18
    //   364: invokestatic 761	com/viber/voip/ViberApplication:log	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   367: aload 17
    //   369: areturn
    //   370: astore 14
    //   372: new 670	com/viber/voip/messages/extras/fb/c
    //   375: dup
    //   376: aload 14
    //   378: invokespecial 754	com/viber/voip/messages/extras/fb/c:<init>	(Ljava/lang/Throwable;)V
    //   381: athrow
    //   382: astore 12
    //   384: goto -112 -> 272
    //   387: astore 13
    //   389: bipush 6
    //   391: getstatic 47	com/viber/voip/messages/extras/fb/s:a	Ljava/lang/String;
    //   394: new 156	java/lang/StringBuilder
    //   397: dup
    //   398: invokespecial 157	java/lang/StringBuilder:<init>	()V
    //   401: ldc_w 756
    //   404: invokevirtual 163	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   407: aload 13
    //   409: invokevirtual 757	java/io/IOException:getMessage	()Ljava/lang/String;
    //   412: invokevirtual 163	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   415: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   418: aload 13
    //   420: invokestatic 761	com/viber/voip/ViberApplication:log	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   423: goto -143 -> 280
    //   426: astore 14
    //   428: aload 11
    //   430: astore_2
    //   431: goto -59 -> 372
    //   434: astore 10
    //   436: aconst_null
    //   437: astore 11
    //   439: goto -175 -> 264
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	442	0	this	s
    //   0	442	1	paramString	String
    //   1	430	2	localObject1	Object
    //   308	6	3	localNullPointerException	java.lang.NullPointerException
    //   296	7	4	localJSONException	JSONException
    //   21	31	5	arrayOfObject	Object[]
    //   56	17	6	str1	String
    //   65	23	7	localBundle	Bundle
    //   113	11	8	localJSONArray	org.json.JSONArray
    //   135	151	9	str2	String
    //   262	3	10	localc1	c
    //   434	1	10	localc2	c
    //   237	201	11	localInputStream1	java.io.InputStream
    //   267	14	12	localObject2	Object
    //   382	1	12	localObject3	Object
    //   387	32	13	localIOException1	java.io.IOException
    //   370	7	14	localException1	Exception
    //   426	1	14	localException2	Exception
    //   166	5	15	bool	boolean
    //   233	3	16	localInputStream2	java.io.InputStream
    //   244	124	17	localBitmap	android.graphics.Bitmap
    //   331	32	18	localIOException2	java.io.IOException
    // Exception table:
    //   from	to	target	type
    //   239	246	262	com/viber/voip/messages/extras/fb/c
    //   251	262	262	com/viber/voip/messages/extras/fb/c
    //   239	246	267	finally
    //   251	262	267	finally
    //   264	267	267	finally
    //   17	161	296	org/json/JSONException
    //   287	293	296	org/json/JSONException
    //   17	161	308	java/lang/NullPointerException
    //   287	293	308	java/lang/NullPointerException
    //   323	328	331	java/io/IOException
    //   161	168	370	java/lang/Exception
    //   175	221	370	java/lang/Exception
    //   221	235	370	java/lang/Exception
    //   161	168	382	finally
    //   175	221	382	finally
    //   221	235	382	finally
    //   372	382	382	finally
    //   276	280	387	java/io/IOException
    //   239	246	426	java/lang/Exception
    //   251	262	426	java/lang/Exception
    //   161	168	434	com/viber/voip/messages/extras/fb/c
    //   175	221	434	com/viber/voip/messages/extras/fb/c
    //   221	235	434	com/viber/voip/messages/extras/fb/c
  }
  
  public void a()
  {
    Session localSession = Session.getActiveSession();
    if ((localSession != null) && (!localSession.isClosed()))
    {
      localSession.closeAndClearTokenInformation();
      Session.setActiveSession(null);
    }
    a("", "");
  }
  
  public void a(Activity paramActivity, int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((Session.getActiveSession() != null) && (!paramActivity.isFinishing())) {
      Session.getActiveSession().onActivityResult(paramActivity, paramInt1, paramInt2, paramIntent);
    }
  }
  
  public void a(Activity paramActivity, long paramLong, String paramString1, String paramString2, String paramString3)
  {
    a(paramActivity, paramLong, paramString1, paramString2, paramString3, null);
  }
  
  public void a(Activity paramActivity, long paramLong, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    d("FacebookManager.postMedia");
    x localx = new x(this, paramActivity, paramLong, paramString1, paramString2, paramString3, paramString4);
    ah localah;
    if (ft.c(paramActivity))
    {
      localah = b();
      if (localah == ah.c) {
        d(paramActivity, paramLong, paramString1, paramString2, paramString3, paramString4);
      }
    }
    else
    {
      return;
    }
    if (localah == ah.b)
    {
      a(paramActivity, localx);
      return;
    }
    a(paramActivity, localx, true);
  }
  
  public void a(Activity paramActivity, ad paramad)
  {
    this.e = paramad;
    Session.NewPermissionsRequest localNewPermissionsRequest = new Session.NewPermissionsRequest(paramActivity, Arrays.asList(i));
    localNewPermissionsRequest.setCallback(this.l);
    Session.getActiveSession().requestNewPublishPermissions(localNewPermissionsRequest);
  }
  
  public void a(Activity paramActivity, ad paramad, boolean paramBoolean)
  {
    this.e = paramad;
    Session localSession = h();
    if (((!localSession.isOpened()) && (!localSession.isClosed())) || (localSession.getState().equals(SessionState.CREATED_TOKEN_LOADED)))
    {
      if (paramBoolean)
      {
        localSession.openForPublish(new Session.OpenRequest(paramActivity).setCallback(this.l).setPermissions(Arrays.asList(i)));
        return;
      }
      localSession.openForRead(new Session.OpenRequest(paramActivity).setCallback(this.l).setPermissions(Arrays.asList(h)));
      return;
    }
    Session.openActiveSession(paramActivity, true, this.l);
  }
  
  public void a(Context paramContext)
  {
    ah localah = b();
    if ((localah == ah.a) && (a(i))) {
      this.g = true;
    }
    while (localah != ah.c) {
      return;
    }
    ab localab = new ab(this, paramContext);
    this.d.post(localab);
  }
  
  void a(Context paramContext, long paramLong, String paramString1, String paramString2, String paramString3)
  {
    c(paramContext, paramLong, paramString1, null, paramString2, paramString3);
  }
  
  void a(Context paramContext, long paramLong, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    d("FacebookManager.postImage");
    if (paramString4 == null)
    {
      Bundle localBundle = null;
      if (paramString3 != null)
      {
        localBundle = new Bundle();
        localBundle.putString("background", paramString3);
      }
      a(paramContext, paramLong, paramString1, paramString2, paramString3, paramString4, localBundle);
      return;
    }
    e(paramContext, paramLong, paramString1, paramString2, paramString3, paramString4);
  }
  
  public void a(ag paramag)
  {
    d("posting invite to Wall");
    this.n = paramag;
    Session localSession = Session.getActiveSession();
    if ((localSession != null) && (b() == ah.c))
    {
      Response localResponse = new Request(localSession, "me/feed", k(), HttpMethod.POST, this.o).executeAndWait();
      if (localResponse.getError() != null)
      {
        String str = c(localResponse.getError().getErrorMessage());
        bc.a().a(this.f.a.a(aq.a, str));
        throw new FacebookException(str);
      }
    }
  }
  
  public void a(String paramString1, String paramString2)
  {
    PreferenceManager.getDefaultSharedPreferences(this.b).edit().putString("fb_name", paramString1).commit();
    PreferenceManager.getDefaultSharedPreferences(this.b).edit().putString("fb_id", paramString2).commit();
    a(false);
  }
  
  public void a(boolean paramBoolean)
  {
    try
    {
      PreferenceManager.getDefaultSharedPreferences(this.b).edit().putBoolean("fb_is_statistics_reported", paramBoolean).commit();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public boolean a(af paramaf)
  {
    synchronized (this.j)
    {
      boolean bool = this.j.add(paramaf);
      return bool;
    }
  }
  
  public ah b()
  {
    Session localSession = h();
    if (localSession.getState().equals(SessionState.CREATED_TOKEN_LOADED)) {
      return ah.a;
    }
    if (localSession.isOpened())
    {
      if (a(i)) {
        return ah.c;
      }
      return ah.b;
    }
    return ah.d;
  }
  
  public void b(Activity paramActivity, ad paramad, boolean paramBoolean)
  {
    this.e = paramad;
    Session localSession = h();
    a(paramActivity, localSession);
    if ((localSession != null) && (localSession.getState().equals(SessionState.CREATED_TOKEN_LOADED)))
    {
      if ((paramBoolean) && (a(i))) {
        localSession.openForPublish(new Session.OpenRequest(paramActivity).setCallback(this.l).setPermissions(Arrays.asList(i)));
      }
    }
    else {
      return;
    }
    localSession.openForRead(new Session.OpenRequest(paramActivity).setCallback(this.l));
  }
  
  void b(Context paramContext, long paramLong, String paramString1, String paramString2, String paramString3)
  {
    d("FacebookManager.postZoobeMessage");
    c(paramContext, paramLong, paramContext.getString(2131494424), paramString1, paramString2, paramString3);
  }
  
  void b(Context paramContext, long paramLong, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    d("FacebookManager.postVideo: comment = " + paramString4);
    if (paramString4 == null)
    {
      a(paramContext, paramLong, paramString1, paramString2, paramString3, paramString4, null);
      return;
    }
    f(paramContext, paramLong, paramString1, paramString2, paramString3, paramString4);
  }
  
  public boolean b(af paramaf)
  {
    synchronized (this.j)
    {
      boolean bool = this.j.remove(paramaf);
      return bool;
    }
  }
  
  public void c()
  {
    d("clearReportedFlag");
    a(false);
  }
  
  void c(Context paramContext, long paramLong, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    d("FacebookManager.postMessage");
    this.d.post(new aa(this, paramString1, paramString2, paramLong, paramString3, paramString4, paramContext));
  }
  
  public aj d()
  {
    Response localResponse = Request.newMeRequest(Session.getActiveSession(), null).executeAndWait();
    if ((localResponse != null) && (localResponse.getGraphObject() != null)) {
      try
      {
        JSONObject localJSONObject = localResponse.getGraphObject().getInnerJSONObject();
        aj localaj = new aj(localJSONObject.optString("id"), localJSONObject.getString("name"), null);
        return localaj;
      }
      catch (JSONException localJSONException)
      {
        d("JSONException when getting facebook profile!");
        return null;
      }
    }
    if (localResponse.getError() != null) {
      throw new FacebookException(c(localResponse.getError().getErrorMessage()));
    }
    d("Error getting facebook profile!");
    return null;
  }
  
  public void e()
  {
    a(null);
  }
  
  public String f()
  {
    return PreferenceManager.getDefaultSharedPreferences(this.b.getApplicationContext()).getString("fb_name", "");
  }
  
  public void initialized(PhoneController paramPhoneController)
  {
    d("initialized");
    i();
  }
  
  public void onServiceStateChanged(int paramInt)
  {
    d("onServiceStateChanged: state=" + paramInt);
    i();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.fb.s
 * JD-Core Version:    0.7.0.1
 */