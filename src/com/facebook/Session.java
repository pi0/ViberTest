package com.facebook;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.Fragment;
import android.support.v4.content.LocalBroadcastManager;
import android.util.Log;
import com.facebook.internal.SessionAuthorizationType;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;

public class Session
  implements Serializable
{
  public static final String ACTION_ACTIVE_SESSION_CLOSED = "com.facebook.sdk.ACTIVE_SESSION_CLOSED";
  public static final String ACTION_ACTIVE_SESSION_OPENED = "com.facebook.sdk.ACTIVE_SESSION_OPENED";
  public static final String ACTION_ACTIVE_SESSION_SET = "com.facebook.sdk.ACTIVE_SESSION_SET";
  public static final String ACTION_ACTIVE_SESSION_UNSET = "com.facebook.sdk.ACTIVE_SESSION_UNSET";
  public static final String APPLICATION_ID_PROPERTY = "com.facebook.sdk.ApplicationId";
  private static final String AUTH_BUNDLE_SAVE_KEY = "com.facebook.sdk.Session.authBundleKey";
  public static final int DEFAULT_AUTHORIZE_ACTIVITY_CODE = 64206;
  private static final String MANAGE_PERMISSION_PREFIX = "manage";
  private static final Set<String> OTHER_PUBLISH_PERMISSIONS = new Session.1();
  private static final String PUBLISH_PERMISSION_PREFIX = "publish";
  private static final String SESSION_BUNDLE_SAVE_KEY = "com.facebook.sdk.Session.saveSessionKey";
  private static final Object STATIC_LOCK;
  public static final String TAG = Session.class.getCanonicalName();
  private static final int TOKEN_EXTEND_RETRY_SECONDS = 3600;
  private static final int TOKEN_EXTEND_THRESHOLD_SECONDS = 86400;
  public static final String WEB_VIEW_ERROR_CODE_KEY = "com.facebook.sdk.WebViewErrorCode";
  public static final String WEB_VIEW_FAILING_URL_KEY = "com.facebook.sdk.FailingUrl";
  private static Session activeSession;
  private static final long serialVersionUID = 1L;
  private static volatile Context staticContext;
  private String applicationId;
  private volatile Bundle authorizationBundle;
  private AuthorizationClient authorizationClient;
  private Session.AutoPublishAsyncTask autoPublishAsyncTask;
  private final List<Session.StatusCallback> callbacks;
  private volatile Session.TokenRefreshRequest currentTokenRefreshRequest;
  private Handler handler;
  private Date lastAttemptedTokenExtendDate = new Date(0L);
  private final Object lock = new Object();
  private Session.AuthorizationRequest pendingRequest;
  private SessionState state;
  private TokenCachingStrategy tokenCachingStrategy;
  private AccessToken tokenInfo;
  
  static
  {
    STATIC_LOCK = new Object();
  }
  
  public Session(Context paramContext)
  {
    this(paramContext, null, null, true);
  }
  
  Session(Context paramContext, String paramString, TokenCachingStrategy paramTokenCachingStrategy)
  {
    this(paramContext, paramString, paramTokenCachingStrategy, true);
  }
  
  Session(Context paramContext, String paramString, TokenCachingStrategy paramTokenCachingStrategy, boolean paramBoolean)
  {
    if ((paramContext != null) && (paramString == null)) {
      paramString = Utility.getMetadataApplicationId(paramContext);
    }
    Validate.notNull(paramString, "applicationId");
    initializeStaticContext(paramContext);
    if (paramTokenCachingStrategy == null) {
      paramTokenCachingStrategy = new SharedPreferencesTokenCachingStrategy(staticContext);
    }
    this.applicationId = paramString;
    this.tokenCachingStrategy = paramTokenCachingStrategy;
    this.state = SessionState.CREATED;
    this.pendingRequest = null;
    this.callbacks = new ArrayList();
    this.handler = new Handler(Looper.getMainLooper());
    Bundle localBundle = null;
    if (paramBoolean) {
      localBundle = paramTokenCachingStrategy.load();
    }
    if (TokenCachingStrategy.hasTokenInformation(localBundle))
    {
      Date localDate1 = TokenCachingStrategy.getDate(localBundle, "com.facebook.TokenCachingStrategy.ExpirationDate");
      Date localDate2 = new Date();
      if ((localDate1 == null) || (localDate1.before(localDate2)))
      {
        paramTokenCachingStrategy.clear();
        this.tokenInfo = AccessToken.createEmptyToken(Collections.emptyList());
        return;
      }
      this.tokenInfo = AccessToken.createFromCache(localBundle);
      this.state = SessionState.CREATED_TOKEN_LOADED;
      return;
    }
    this.tokenInfo = AccessToken.createEmptyToken(Collections.emptyList());
  }
  
  private Session(String paramString, SessionState paramSessionState, AccessToken paramAccessToken, Date paramDate, boolean paramBoolean, Session.AuthorizationRequest paramAuthorizationRequest)
  {
    this.applicationId = paramString;
    this.state = paramSessionState;
    this.tokenInfo = paramAccessToken;
    this.lastAttemptedTokenExtendDate = paramDate;
    this.pendingRequest = paramAuthorizationRequest;
    this.handler = new Handler(Looper.getMainLooper());
    this.currentTokenRefreshRequest = null;
    this.tokenCachingStrategy = null;
    this.callbacks = new ArrayList();
  }
  
  private static boolean areEqual(Object paramObject1, Object paramObject2)
  {
    if (paramObject1 == null) {
      return paramObject2 == null;
    }
    return paramObject1.equals(paramObject2);
  }
  
  private void autoPublishAsync()
  {
    try
    {
      Session.AutoPublishAsyncTask localAutoPublishAsyncTask1 = this.autoPublishAsyncTask;
      Session.AutoPublishAsyncTask localAutoPublishAsyncTask2 = null;
      if (localAutoPublishAsyncTask1 == null)
      {
        boolean bool = Settings.getShouldAutoPublishInstall();
        localAutoPublishAsyncTask2 = null;
        if (bool)
        {
          String str = this.applicationId;
          localAutoPublishAsyncTask2 = null;
          if (str != null)
          {
            localAutoPublishAsyncTask2 = new Session.AutoPublishAsyncTask(this, str, staticContext);
            this.autoPublishAsyncTask = localAutoPublishAsyncTask2;
          }
        }
      }
      if (localAutoPublishAsyncTask2 != null) {
        localAutoPublishAsyncTask2.execute(new Void[0]);
      }
      return;
    }
    finally {}
  }
  
  private void finishAuthorization(AccessToken paramAccessToken, Exception paramException)
  {
    SessionState localSessionState = this.state;
    if (paramAccessToken != null)
    {
      this.tokenInfo = paramAccessToken;
      saveTokenToCache(paramAccessToken);
      this.state = SessionState.OPENED;
    }
    for (;;)
    {
      this.pendingRequest = null;
      postStateChange(localSessionState, this.state, paramException);
      return;
      if (paramException != null) {
        this.state = SessionState.CLOSED_LOGIN_FAILED;
      }
    }
  }
  
  private void finishReauthorization(AccessToken paramAccessToken, Exception paramException)
  {
    SessionState localSessionState = this.state;
    if (paramAccessToken != null)
    {
      this.tokenInfo = paramAccessToken;
      saveTokenToCache(paramAccessToken);
      this.state = SessionState.OPENED_TOKEN_UPDATED;
    }
    this.pendingRequest = null;
    postStateChange(localSessionState, this.state, paramException);
  }
  
  public static final Session getActiveSession()
  {
    synchronized (STATIC_LOCK)
    {
      Session localSession = activeSession;
      return localSession;
    }
  }
  
  private Intent getLoginActivityIntent(Session.AuthorizationRequest paramAuthorizationRequest)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(getStaticContext(), LoginActivity.class);
    localIntent.setAction(paramAuthorizationRequest.getLoginBehavior().toString());
    localIntent.putExtras(LoginActivity.populateIntentExtras(paramAuthorizationRequest.getAuthorizationClientRequest()));
    return localIntent;
  }
  
  static Context getStaticContext()
  {
    return staticContext;
  }
  
  private void handleAuthorizationResult(int paramInt, AuthorizationClient.Result paramResult)
  {
    AccessToken localAccessToken;
    Object localObject;
    if (paramInt == -1) {
      if (paramResult.code == AuthorizationClient.Result.Code.SUCCESS)
      {
        localAccessToken = paramResult.token;
        localObject = null;
      }
    }
    for (;;)
    {
      this.authorizationClient = null;
      finishAuthOrReauth(localAccessToken, (Exception)localObject);
      return;
      localObject = new FacebookAuthorizationException(paramResult.errorMessage);
      localAccessToken = null;
      continue;
      if (paramInt == 0)
      {
        localObject = new FacebookOperationCanceledException(paramResult.errorMessage);
        localAccessToken = null;
      }
      else
      {
        localObject = null;
        localAccessToken = null;
      }
    }
  }
  
  static void initializeStaticContext(Context paramContext)
  {
    if ((paramContext != null) && (staticContext == null))
    {
      Context localContext = paramContext.getApplicationContext();
      if (localContext != null) {
        paramContext = localContext;
      }
      staticContext = paramContext;
    }
  }
  
  static boolean isPublishPermission(String paramString)
  {
    return (paramString != null) && ((paramString.startsWith("publish")) || (paramString.startsWith("manage")) || (OTHER_PUBLISH_PERMISSIONS.contains(paramString)));
  }
  
  private void open(Session.OpenRequest paramOpenRequest, SessionAuthorizationType paramSessionAuthorizationType)
  {
    validatePermissions(paramOpenRequest, paramSessionAuthorizationType);
    validateLoginBehavior(paramOpenRequest);
    SessionState localSessionState1;
    synchronized (this.lock)
    {
      if (this.pendingRequest != null)
      {
        postStateChange(this.state, this.state, new UnsupportedOperationException("Session: an attempt was made to open a session that has a pending request."));
        return;
      }
      localSessionState1 = this.state;
      switch (Session.4.$SwitchMap$com$facebook$SessionState[this.state.ordinal()])
      {
      case 2: 
      default: 
        throw new UnsupportedOperationException("Session: an attempt was made to open an already opened session.");
      }
    }
    SessionState localSessionState2 = SessionState.OPENING;
    this.state = localSessionState2;
    if (paramOpenRequest == null) {
      throw new IllegalArgumentException("openRequest cannot be null when opening a new Session");
    }
    this.pendingRequest = paramOpenRequest;
    for (;;)
    {
      if (paramOpenRequest != null) {
        addCallback(paramOpenRequest.getCallback());
      }
      postStateChange(localSessionState1, localSessionState2, null);
      if (localSessionState2 != SessionState.OPENING) {
        break;
      }
      authorize(paramOpenRequest);
      return;
      if ((paramOpenRequest != null) && (!Utility.isNullOrEmpty(paramOpenRequest.getPermissions())) && (!Utility.isSubset(paramOpenRequest.getPermissions(), getPermissions()))) {
        this.pendingRequest = paramOpenRequest;
      }
      if (this.pendingRequest == null)
      {
        localSessionState2 = SessionState.OPENED;
        this.state = localSessionState2;
      }
      else
      {
        localSessionState2 = SessionState.OPENING;
        this.state = localSessionState2;
      }
    }
  }
  
  public static Session openActiveSession(Activity paramActivity, boolean paramBoolean, Session.StatusCallback paramStatusCallback)
  {
    return openActiveSession(paramActivity, paramBoolean, new Session.OpenRequest(paramActivity).setCallback(paramStatusCallback));
  }
  
  public static Session openActiveSession(Context paramContext, Fragment paramFragment, boolean paramBoolean, Session.StatusCallback paramStatusCallback)
  {
    return openActiveSession(paramContext, paramBoolean, new Session.OpenRequest(paramFragment).setCallback(paramStatusCallback));
  }
  
  private static Session openActiveSession(Context paramContext, boolean paramBoolean, Session.OpenRequest paramOpenRequest)
  {
    Session localSession = new Session.Builder(paramContext).build();
    if ((SessionState.CREATED_TOKEN_LOADED.equals(localSession.getState())) || (paramBoolean))
    {
      setActiveSession(localSession);
      localSession.openForRead(paramOpenRequest);
      return localSession;
    }
    return null;
  }
  
  public static Session openActiveSessionFromCache(Context paramContext)
  {
    return openActiveSession(paramContext, false, null);
  }
  
  public static Session openActiveSessionWithAccessToken(Context paramContext, AccessToken paramAccessToken, Session.StatusCallback paramStatusCallback)
  {
    Session localSession = new Session(paramContext, null, null, false);
    setActiveSession(localSession);
    localSession.open(paramAccessToken, paramStatusCallback);
    return localSession;
  }
  
  static void postActiveSessionAction(String paramString)
  {
    Intent localIntent = new Intent(paramString);
    LocalBroadcastManager.getInstance(getStaticContext()).sendBroadcast(localIntent);
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    throw new InvalidObjectException("Cannot readObject, serialization proxy required");
  }
  
  private void requestNewPermissions(Session.NewPermissionsRequest paramNewPermissionsRequest, SessionAuthorizationType paramSessionAuthorizationType)
  {
    validatePermissions(paramNewPermissionsRequest, paramSessionAuthorizationType);
    validateLoginBehavior(paramNewPermissionsRequest);
    if (paramNewPermissionsRequest != null)
    {
      synchronized (this.lock)
      {
        if (this.pendingRequest != null) {
          throw new UnsupportedOperationException("Session: an attempt was made to request new permissions for a session that has a pending request.");
        }
      }
      switch (Session.4.$SwitchMap$com$facebook$SessionState[this.state.ordinal()])
      {
      default: 
        throw new UnsupportedOperationException("Session: an attempt was made to request new permissions for a session that is not currently open.");
      }
      this.pendingRequest = paramNewPermissionsRequest;
      paramNewPermissionsRequest.setValidateSameFbidAsToken(getAccessToken());
      authorize(paramNewPermissionsRequest);
    }
  }
  
  private boolean resolveIntent(Intent paramIntent)
  {
    return getStaticContext().getPackageManager().resolveActivity(paramIntent, 0) != null;
  }
  
  public static final Session restoreSession(Context paramContext, TokenCachingStrategy paramTokenCachingStrategy, Session.StatusCallback paramStatusCallback, Bundle paramBundle)
  {
    if (paramBundle == null) {
      return null;
    }
    byte[] arrayOfByte = paramBundle.getByteArray("com.facebook.sdk.Session.saveSessionKey");
    ByteArrayInputStream localByteArrayInputStream;
    if (arrayOfByte != null) {
      localByteArrayInputStream = new ByteArrayInputStream(arrayOfByte);
    }
    try
    {
      localSession = (Session)new ObjectInputStream(localByteArrayInputStream).readObject();
      initializeStaticContext(paramContext);
      if (paramTokenCachingStrategy == null) {
        break label101;
      }
      localSession.tokenCachingStrategy = paramTokenCachingStrategy;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      for (;;)
      {
        Session localSession;
        Log.w(TAG, "Unable to restore session", localClassNotFoundException);
        return null;
        localSession.tokenCachingStrategy = new SharedPreferencesTokenCachingStrategy(paramContext);
      }
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        Log.w(TAG, "Unable to restore session.", localIOException);
      }
    }
    if (paramStatusCallback != null) {
      localSession.addCallback(paramStatusCallback);
    }
    localSession.authorizationBundle = paramBundle.getBundle("com.facebook.sdk.Session.authBundleKey");
    return localSession;
  }
  
  private static void runWithHandlerOrExecutor(Handler paramHandler, Runnable paramRunnable)
  {
    if (paramHandler != null)
    {
      paramHandler.post(paramRunnable);
      return;
    }
    Settings.getExecutor().execute(paramRunnable);
  }
  
  public static final void saveSession(Session paramSession, Bundle paramBundle)
  {
    ByteArrayOutputStream localByteArrayOutputStream;
    if ((paramBundle != null) && (paramSession != null) && (!paramBundle.containsKey("com.facebook.sdk.Session.saveSessionKey"))) {
      localByteArrayOutputStream = new ByteArrayOutputStream();
    }
    try
    {
      new ObjectOutputStream(localByteArrayOutputStream).writeObject(paramSession);
      paramBundle.putByteArray("com.facebook.sdk.Session.saveSessionKey", localByteArrayOutputStream.toByteArray());
      paramBundle.putBundle("com.facebook.sdk.Session.authBundleKey", paramSession.authorizationBundle);
      return;
    }
    catch (IOException localIOException)
    {
      throw new FacebookException("Unable to save session.", localIOException);
    }
  }
  
  private void saveTokenToCache(AccessToken paramAccessToken)
  {
    if ((paramAccessToken != null) && (this.tokenCachingStrategy != null)) {
      this.tokenCachingStrategy.save(paramAccessToken.toCacheBundle());
    }
  }
  
  public static final void setActiveSession(Session paramSession)
  {
    synchronized (STATIC_LOCK)
    {
      if (paramSession != activeSession)
      {
        Session localSession = activeSession;
        if (localSession != null) {
          localSession.close();
        }
        activeSession = paramSession;
        if (localSession != null) {
          postActiveSessionAction("com.facebook.sdk.ACTIVE_SESSION_UNSET");
        }
        if (paramSession != null)
        {
          postActiveSessionAction("com.facebook.sdk.ACTIVE_SESSION_SET");
          if (paramSession.isOpened()) {
            postActiveSessionAction("com.facebook.sdk.ACTIVE_SESSION_OPENED");
          }
        }
      }
      return;
    }
  }
  
  private boolean tryLegacyAuth(Session.AuthorizationRequest paramAuthorizationRequest)
  {
    this.authorizationClient = new AuthorizationClient();
    this.authorizationClient.setOnCompletedListener(new Session.2(this));
    this.authorizationClient.setContext(getStaticContext());
    this.authorizationClient.startOrContinueAuth(paramAuthorizationRequest.getAuthorizationClientRequest());
    return true;
  }
  
  private boolean tryLoginActivity(Session.AuthorizationRequest paramAuthorizationRequest)
  {
    Intent localIntent = getLoginActivityIntent(paramAuthorizationRequest);
    if (!resolveIntent(localIntent)) {
      return false;
    }
    try
    {
      paramAuthorizationRequest.getStartActivityDelegate().startActivityForResult(localIntent, paramAuthorizationRequest.getRequestCode());
      return true;
    }
    catch (ActivityNotFoundException localActivityNotFoundException) {}
    return false;
  }
  
  private void validateLoginBehavior(Session.AuthorizationRequest paramAuthorizationRequest)
  {
    if ((paramAuthorizationRequest != null) && (!Session.AuthorizationRequest.access$100(paramAuthorizationRequest)))
    {
      Intent localIntent = new Intent();
      localIntent.setClass(getStaticContext(), LoginActivity.class);
      if (!resolveIntent(localIntent))
      {
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = paramAuthorizationRequest.getLoginBehavior();
        arrayOfObject[1] = LoginActivity.class.getName();
        throw new FacebookException(String.format("Cannot use SessionLoginBehavior %s when %s is not declared as an activity in AndroidManifest.xml", arrayOfObject));
      }
    }
  }
  
  private void validatePermissions(Session.AuthorizationRequest paramAuthorizationRequest, SessionAuthorizationType paramSessionAuthorizationType)
  {
    if ((paramAuthorizationRequest == null) || (Utility.isNullOrEmpty(paramAuthorizationRequest.getPermissions())))
    {
      if (SessionAuthorizationType.PUBLISH.equals(paramSessionAuthorizationType)) {
        throw new FacebookException("Cannot request publish or manage authorization with no permissions.");
      }
    }
    else
    {
      Iterator localIterator = paramAuthorizationRequest.getPermissions().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        if (isPublishPermission(str))
        {
          if (SessionAuthorizationType.READ.equals(paramSessionAuthorizationType)) {
            throw new FacebookException(String.format("Cannot pass a publish or manage permission (%s) to a request for read authorization", new Object[] { str }));
          }
        }
        else if (SessionAuthorizationType.PUBLISH.equals(paramSessionAuthorizationType)) {
          Log.w(TAG, String.format("Should not pass a read permission (%s) to a request for publish or manage authorization", new Object[] { str }));
        }
      }
    }
  }
  
  private Object writeReplace()
  {
    return new Session.SerializationProxyV1(this.applicationId, this.state, this.tokenInfo, this.lastAttemptedTokenExtendDate, false, this.pendingRequest);
  }
  
  public final void addCallback(Session.StatusCallback paramStatusCallback)
  {
    List localList = this.callbacks;
    if (paramStatusCallback != null) {}
    try
    {
      if (!this.callbacks.contains(paramStatusCallback)) {
        this.callbacks.add(paramStatusCallback);
      }
      return;
    }
    finally {}
  }
  
  void authorize(Session.AuthorizationRequest paramAuthorizationRequest)
  {
    paramAuthorizationRequest.setApplicationId(this.applicationId);
    autoPublishAsync();
    boolean bool = tryLoginActivity(paramAuthorizationRequest);
    if ((!bool) && (Session.AuthorizationRequest.access$100(paramAuthorizationRequest))) {
      bool = tryLegacyAuth(paramAuthorizationRequest);
    }
    if (!bool) {
      synchronized (this.lock)
      {
        SessionState localSessionState = this.state;
        switch (Session.4.$SwitchMap$com$facebook$SessionState[this.state.ordinal()])
        {
        default: 
          this.state = SessionState.CLOSED_LOGIN_FAILED;
          postStateChange(localSessionState, this.state, new FacebookException("Log in attempt failed."));
          return;
        }
        return;
      }
    }
  }
  
  public final void close()
  {
    for (;;)
    {
      SessionState localSessionState;
      synchronized (this.lock)
      {
        localSessionState = this.state;
        switch (Session.4.$SwitchMap$com$facebook$SessionState[this.state.ordinal()])
        {
        default: 
          return;
        case 1: 
        case 2: 
          this.state = SessionState.CLOSED_LOGIN_FAILED;
          postStateChange(localSessionState, this.state, new FacebookException("Log in attempt aborted."));
        }
      }
      this.state = SessionState.CLOSED;
      postStateChange(localSessionState, this.state, null);
    }
  }
  
  public final void closeAndClearTokenInformation()
  {
    if (this.tokenCachingStrategy != null) {
      this.tokenCachingStrategy.clear();
    }
    Utility.clearFacebookCookies(staticContext);
    close();
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof Session)) {}
    Session localSession;
    do
    {
      return false;
      localSession = (Session)paramObject;
    } while ((!areEqual(localSession.applicationId, this.applicationId)) || (!areEqual(localSession.authorizationBundle, this.authorizationBundle)) || (!areEqual(localSession.state, this.state)) || (!areEqual(localSession.getExpirationDate(), getExpirationDate())));
    return true;
  }
  
  void extendAccessToken()
  {
    synchronized (this.lock)
    {
      Session.TokenRefreshRequest localTokenRefreshRequest1 = this.currentTokenRefreshRequest;
      Session.TokenRefreshRequest localTokenRefreshRequest2 = null;
      if (localTokenRefreshRequest1 == null)
      {
        localTokenRefreshRequest2 = new Session.TokenRefreshRequest(this);
        this.currentTokenRefreshRequest = localTokenRefreshRequest2;
      }
      if (localTokenRefreshRequest2 != null) {
        localTokenRefreshRequest2.bind();
      }
      return;
    }
  }
  
  void extendAccessTokenIfNeeded()
  {
    if (shouldExtendAccessToken()) {
      extendAccessToken();
    }
  }
  
  void extendTokenCompleted(Bundle paramBundle)
  {
    synchronized (this.lock)
    {
      SessionState localSessionState = this.state;
      switch (Session.4.$SwitchMap$com$facebook$SessionState[this.state.ordinal()])
      {
      default: 
        Log.d(TAG, "refreshToken ignored in state " + this.state);
        return;
      case 4: 
        this.state = SessionState.OPENED_TOKEN_UPDATED;
        postStateChange(localSessionState, this.state, null);
      }
      this.tokenInfo = AccessToken.createFromRefresh(this.tokenInfo, paramBundle);
      if (this.tokenCachingStrategy != null) {
        this.tokenCachingStrategy.save(this.tokenInfo.toCacheBundle());
      }
      return;
    }
  }
  
  void finishAuthOrReauth(AccessToken paramAccessToken, Exception paramException)
  {
    if ((paramAccessToken != null) && (paramAccessToken.isInvalid()))
    {
      paramAccessToken = null;
      paramException = new FacebookException("Invalid access token.");
    }
    for (;;)
    {
      synchronized (this.lock)
      {
        switch (Session.4.$SwitchMap$com$facebook$SessionState[this.state.ordinal()])
        {
        case 3: 
        default: 
          return;
        case 2: 
          finishAuthorization(paramAccessToken, paramException);
        }
      }
      finishReauthorization(paramAccessToken, paramException);
    }
  }
  
  public final String getAccessToken()
  {
    synchronized (this.lock)
    {
      if (this.tokenInfo == null)
      {
        str = null;
        return str;
      }
      String str = this.tokenInfo.getToken();
    }
  }
  
  public final String getApplicationId()
  {
    return this.applicationId;
  }
  
  public final Bundle getAuthorizationBundle()
  {
    synchronized (this.lock)
    {
      Bundle localBundle = this.authorizationBundle;
      return localBundle;
    }
  }
  
  public final Date getExpirationDate()
  {
    synchronized (this.lock)
    {
      if (this.tokenInfo == null)
      {
        localDate = null;
        return localDate;
      }
      Date localDate = this.tokenInfo.getExpires();
    }
  }
  
  Date getLastAttemptedTokenExtendDate()
  {
    return this.lastAttemptedTokenExtendDate;
  }
  
  public final List<String> getPermissions()
  {
    synchronized (this.lock)
    {
      if (this.tokenInfo == null)
      {
        localObject3 = null;
        return localObject3;
      }
      Object localObject3 = this.tokenInfo.getPermissions();
    }
  }
  
  public final SessionState getState()
  {
    synchronized (this.lock)
    {
      SessionState localSessionState = this.state;
      return localSessionState;
    }
  }
  
  AccessToken getTokenInfo()
  {
    return this.tokenInfo;
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public final boolean isClosed()
  {
    synchronized (this.lock)
    {
      boolean bool = this.state.isClosed();
      return bool;
    }
  }
  
  public final boolean isOpened()
  {
    synchronized (this.lock)
    {
      boolean bool = this.state.isOpened();
      return bool;
    }
  }
  
  public final boolean onActivityResult(Activity paramActivity, int paramInt1, int paramInt2, Intent paramIntent)
  {
    Validate.notNull(paramActivity, "currentActivity");
    initializeStaticContext(paramActivity);
    synchronized (this.lock)
    {
      if ((this.pendingRequest == null) || (paramInt1 != this.pendingRequest.getRequestCode())) {
        return false;
      }
      if (paramIntent == null) {
        break label119;
      }
      AuthorizationClient.Result localResult = (AuthorizationClient.Result)paramIntent.getSerializableExtra("com.facebook.LoginActivity:Result");
      if (localResult != null)
      {
        handleAuthorizationResult(paramInt2, localResult);
        return true;
      }
    }
    if (this.authorizationClient != null)
    {
      this.authorizationClient.onActivityResult(paramInt1, paramInt2, paramIntent);
      return true;
    }
    Object localObject3 = null;
    for (;;)
    {
      finishAuthOrReauth(null, (Exception)localObject3);
      return true;
      label119:
      if (paramInt2 == 0) {
        localObject3 = new FacebookOperationCanceledException("User canceled operation.");
      } else {
        localObject3 = null;
      }
    }
  }
  
  public final void open(AccessToken paramAccessToken, Session.StatusCallback paramStatusCallback)
  {
    synchronized (this.lock)
    {
      if (this.pendingRequest != null) {
        throw new UnsupportedOperationException("Session: an attempt was made to open a session that has a pending request.");
      }
    }
    if ((this.state != SessionState.CREATED) && (this.state != SessionState.CREATED_TOKEN_LOADED)) {
      throw new UnsupportedOperationException("Session: an attempt was made to open an already opened session.");
    }
    if (paramStatusCallback != null) {
      addCallback(paramStatusCallback);
    }
    this.tokenInfo = paramAccessToken;
    if (this.tokenCachingStrategy != null) {
      this.tokenCachingStrategy.save(paramAccessToken.toCacheBundle());
    }
    SessionState localSessionState = this.state;
    this.state = SessionState.OPENED;
    postStateChange(localSessionState, this.state, null);
    autoPublishAsync();
  }
  
  public final void openForPublish(Session.OpenRequest paramOpenRequest)
  {
    open(paramOpenRequest, SessionAuthorizationType.PUBLISH);
  }
  
  public final void openForRead(Session.OpenRequest paramOpenRequest)
  {
    open(paramOpenRequest, SessionAuthorizationType.READ);
  }
  
  void postStateChange(SessionState paramSessionState1, SessionState paramSessionState2, Exception paramException)
  {
    if ((paramSessionState1 == paramSessionState2) && (paramException == null)) {}
    for (;;)
    {
      return;
      if (paramSessionState2.isClosed()) {
        this.tokenInfo = AccessToken.createEmptyToken(Collections.emptyList());
      }
      synchronized (this.callbacks)
      {
        Session.3 local3 = new Session.3(this, paramSessionState2, paramException);
        runWithHandlerOrExecutor(this.handler, local3);
        if ((this == activeSession) && (paramSessionState1.isOpened() != paramSessionState2.isOpened())) {
          if (paramSessionState2.isOpened())
          {
            postActiveSessionAction("com.facebook.sdk.ACTIVE_SESSION_OPENED");
            return;
          }
        }
      }
    }
    postActiveSessionAction("com.facebook.sdk.ACTIVE_SESSION_CLOSED");
  }
  
  public final void removeCallback(Session.StatusCallback paramStatusCallback)
  {
    synchronized (this.callbacks)
    {
      this.callbacks.remove(paramStatusCallback);
      return;
    }
  }
  
  public final void requestNewPublishPermissions(Session.NewPermissionsRequest paramNewPermissionsRequest)
  {
    requestNewPermissions(paramNewPermissionsRequest, SessionAuthorizationType.PUBLISH);
  }
  
  public final void requestNewReadPermissions(Session.NewPermissionsRequest paramNewPermissionsRequest)
  {
    requestNewPermissions(paramNewPermissionsRequest, SessionAuthorizationType.READ);
  }
  
  void setCurrentTokenRefreshRequest(Session.TokenRefreshRequest paramTokenRefreshRequest)
  {
    this.currentTokenRefreshRequest = paramTokenRefreshRequest;
  }
  
  void setLastAttemptedTokenExtendDate(Date paramDate)
  {
    this.lastAttemptedTokenExtendDate = paramDate;
  }
  
  void setTokenInfo(AccessToken paramAccessToken)
  {
    this.tokenInfo = paramAccessToken;
  }
  
  boolean shouldExtendAccessToken()
  {
    if (this.currentTokenRefreshRequest != null) {}
    Date localDate;
    do
    {
      return false;
      localDate = new Date();
    } while ((!this.state.isOpened()) || (!this.tokenInfo.getSource().canExtendToken()) || (localDate.getTime() - this.lastAttemptedTokenExtendDate.getTime() <= 3600000L) || (localDate.getTime() - this.tokenInfo.getLastRefresh().getTime() <= 86400000L));
    return true;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder1 = new StringBuilder().append("{Session").append(" state:").append(this.state).append(", token:");
    Object localObject;
    StringBuilder localStringBuilder2;
    if (this.tokenInfo == null)
    {
      localObject = "null";
      localStringBuilder2 = localStringBuilder1.append(localObject).append(", appId:");
      if (this.applicationId != null) {
        break label92;
      }
    }
    label92:
    for (String str = "null";; str = this.applicationId)
    {
      return str + "}";
      localObject = this.tokenInfo;
      break;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.facebook.Session
 * JD-Core Version:    0.7.0.1
 */