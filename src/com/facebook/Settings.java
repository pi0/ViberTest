package com.facebook;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.model.GraphObject;
import com.facebook.model.GraphObject.Factory;
import java.lang.reflect.Field;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;

public final class Settings
{
  private static final String ANALYTICS_EVENT = "event";
  private static final String APPLICATION_FIELDS = "fields";
  private static final String ATTRIBUTION_ID_COLUMN_NAME = "aid";
  private static final Uri ATTRIBUTION_ID_CONTENT_URI;
  private static final String ATTRIBUTION_KEY = "attribution";
  private static final String ATTRIBUTION_PREFERENCES = "com.facebook.sdk.attributionTracking";
  private static final int DEFAULT_CORE_POOL_SIZE = 5;
  private static final int DEFAULT_KEEP_ALIVE = 1;
  private static final int DEFAULT_MAXIMUM_POOL_SIZE = 128;
  private static final ThreadFactory DEFAULT_THREAD_FACTORY = new Settings.1();
  private static final BlockingQueue<Runnable> DEFAULT_WORK_QUEUE;
  private static final Object LOCK;
  public static final String LOG_TAG = "Settings";
  private static final String MOBILE_INSTALL_EVENT = "MOBILE_APP_INSTALL";
  private static final String PUBLISH_ACTIVITY_PATH = "%s/activities";
  private static final String SUPPORTS_ATTRIBUTION = "supports_attribution";
  private static volatile Executor executor;
  private static final HashSet<LoggingBehavior> loggingBehaviors = new HashSet();
  private static volatile boolean shouldAutoPublishInstall;
  
  static
  {
    LOCK = new Object();
    ATTRIBUTION_ID_CONTENT_URI = Uri.parse("content://com.facebook.katana.provider.AttributionIdProvider");
    DEFAULT_WORK_QUEUE = new LinkedBlockingQueue(10);
  }
  
  public static final void addLoggingBehavior(LoggingBehavior paramLoggingBehavior)
  {
    synchronized (loggingBehaviors)
    {
      loggingBehaviors.add(paramLoggingBehavior);
      return;
    }
  }
  
  public static final void clearLoggingBehaviors()
  {
    synchronized (loggingBehaviors)
    {
      loggingBehaviors.clear();
      return;
    }
  }
  
  private static Executor getAsyncTaskExecutor()
  {
    Field localField;
    try
    {
      localField = AsyncTask.class.getField("THREAD_POOL_EXECUTOR");
      if (localField == null) {
        return null;
      }
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      return null;
    }
    Object localObject;
    try
    {
      localObject = localField.get(null);
      if (localObject == null) {
        return null;
      }
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      return null;
    }
    if (!(localObject instanceof Executor)) {
      return null;
    }
    return (Executor)localObject;
  }
  
  public static String getAttributionId(ContentResolver paramContentResolver)
  {
    String[] arrayOfString = { "aid" };
    Cursor localCursor = paramContentResolver.query(ATTRIBUTION_ID_CONTENT_URI, arrayOfString, null, null, null);
    if ((localCursor == null) || (!localCursor.moveToFirst())) {
      return null;
    }
    String str = localCursor.getString(localCursor.getColumnIndex("aid"));
    localCursor.close();
    return str;
  }
  
  public static Executor getExecutor()
  {
    synchronized (LOCK)
    {
      if (executor == null)
      {
        Object localObject3 = getAsyncTaskExecutor();
        if (localObject3 == null) {
          localObject3 = new ThreadPoolExecutor(5, 128, 1L, TimeUnit.SECONDS, DEFAULT_WORK_QUEUE, DEFAULT_THREAD_FACTORY);
        }
        executor = (Executor)localObject3;
      }
      return executor;
    }
  }
  
  public static final Set<LoggingBehavior> getLoggingBehaviors()
  {
    synchronized (loggingBehaviors)
    {
      Set localSet = Collections.unmodifiableSet(new HashSet(loggingBehaviors));
      return localSet;
    }
  }
  
  public static boolean getShouldAutoPublishInstall()
  {
    return shouldAutoPublishInstall;
  }
  
  public static final boolean isLoggingBehaviorEnabled(LoggingBehavior paramLoggingBehavior)
  {
    synchronized (loggingBehaviors)
    {
      return false;
    }
  }
  
  public static boolean publishInstallAndWait(Context paramContext, String paramString)
  {
    if (paramString == null) {
      return false;
    }
    String str1;
    SharedPreferences localSharedPreferences;
    String str2;
    long l;
    Object localObject;
    try
    {
      str1 = getAttributionId(paramContext.getContentResolver());
      localSharedPreferences = paramContext.getSharedPreferences("com.facebook.sdk.attributionTracking", 0);
      str2 = paramString + "ping";
      l = localSharedPreferences.getLong(str2, 0L);
      if ((l != 0L) || (str1 == null)) {
        break label261;
      }
      Bundle localBundle = new Bundle();
      localBundle.putString("fields", "supports_attribution");
      Request localRequest = Request.newGraphPathRequest(null, paramString, null);
      localRequest.setParameters(localBundle);
      localObject = localRequest.executeAndWait().getGraphObject().getProperty("supports_attribution");
      if (!(localObject instanceof Boolean)) {
        throw new JSONException(String.format("%s contains %s instead of a Boolean", new Object[] { "supports_attribution", localObject }));
      }
    }
    catch (Exception localException)
    {
      Utility.logd("Facebook-publish", localException.getMessage());
      return false;
    }
    if (((Boolean)localObject).booleanValue())
    {
      GraphObject localGraphObject = GraphObject.Factory.create();
      localGraphObject.setProperty("event", "MOBILE_APP_INSTALL");
      localGraphObject.setProperty("attribution", str1);
      Request.newPostRequest(null, String.format("%s/activities", new Object[] { paramString }), localGraphObject, null).executeAndWait();
      SharedPreferences.Editor localEditor = localSharedPreferences.edit();
      l = System.currentTimeMillis();
      localEditor.putLong(str2, l);
      localEditor.commit();
    }
    label261:
    if (l != 0L) {}
    for (boolean bool = true;; bool = false) {
      return bool;
    }
  }
  
  public static void publishInstallAsync(Context paramContext, String paramString)
  {
    Context localContext = paramContext.getApplicationContext();
    getExecutor().execute(new Settings.2(localContext, paramString));
  }
  
  public static final void removeLoggingBehavior(LoggingBehavior paramLoggingBehavior)
  {
    synchronized (loggingBehaviors)
    {
      loggingBehaviors.remove(paramLoggingBehavior);
      return;
    }
  }
  
  public static void setExecutor(Executor paramExecutor)
  {
    Validate.notNull(paramExecutor, "executor");
    synchronized (LOCK)
    {
      executor = paramExecutor;
      return;
    }
  }
  
  public static void setShouldAutoPublishInstall(boolean paramBoolean)
  {
    shouldAutoPublishInstall = paramBoolean;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.facebook.Settings
 * JD-Core Version:    0.7.0.1
 */