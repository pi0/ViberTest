package com.facebook;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.viber.voip.a.a;
import com.viber.voip.a.an;
import com.viber.voip.a.ao;
import com.viber.voip.a.ap;
import com.viber.voip.a.aq;
import com.viber.voip.a.bc;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

class AuthorizationClient
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  transient AuthorizationClient.BackgroundProcessingListener backgroundProcessingListener;
  transient boolean checkedInternetPermission;
  transient Context context;
  AuthorizationClient.AuthHandler currentHandler;
  List<AuthorizationClient.AuthHandler> handlersToTry;
  transient AuthorizationClient.OnCompletedListener onCompletedListener;
  AuthorizationClient.AuthorizationRequest pendingRequest;
  transient AuthorizationClient.StartActivityDelegate startActivityDelegate;
  
  private void completeWithFailure()
  {
    complete(AuthorizationClient.Result.createErrorResult("Login attempt failed.", null));
  }
  
  private List<AuthorizationClient.AuthHandler> getHandlerTypes(AuthorizationClient.AuthorizationRequest paramAuthorizationRequest)
  {
    ArrayList localArrayList = new ArrayList();
    SessionLoginBehavior localSessionLoginBehavior = paramAuthorizationRequest.getLoginBehavior();
    if (localSessionLoginBehavior.allowsKatanaAuth())
    {
      if (!paramAuthorizationRequest.isLegacy())
      {
        localArrayList.add(new AuthorizationClient.GetTokenAuthHandler(this));
        localArrayList.add(new AuthorizationClient.KatanaLoginDialogAuthHandler(this));
      }
      localArrayList.add(new AuthorizationClient.KatanaProxyAuthHandler(this));
    }
    if (localSessionLoginBehavior.allowsWebViewAuth()) {
      localArrayList.add(new AuthorizationClient.WebViewAuthHandler(this));
    }
    return localArrayList;
  }
  
  private void notifyBackgroundProcessingStart()
  {
    if (this.backgroundProcessingListener != null) {
      this.backgroundProcessingListener.onBackgroundProcessingStarted();
    }
  }
  
  private void notifyBackgroundProcessingStop()
  {
    if (this.backgroundProcessingListener != null) {
      this.backgroundProcessingListener.onBackgroundProcessingStopped();
    }
  }
  
  private void notifyOnCompleteListener(AuthorizationClient.Result paramResult)
  {
    if (this.onCompletedListener != null) {
      this.onCompletedListener.onCompleted(paramResult);
    }
  }
  
  void authorize(AuthorizationClient.AuthorizationRequest paramAuthorizationRequest)
  {
    if (paramAuthorizationRequest == null) {}
    do
    {
      return;
      if (this.pendingRequest != null) {
        throw new FacebookException("Attempted to authorize while a request is pending.");
      }
    } while ((paramAuthorizationRequest.needsNewTokenValidation()) && (!checkInternetPermission()));
    this.pendingRequest = paramAuthorizationRequest;
    this.handlersToTry = getHandlerTypes(paramAuthorizationRequest);
    tryNextHandler();
  }
  
  void cancelCurrentHandler()
  {
    if (this.currentHandler != null) {
      this.currentHandler.cancel();
    }
  }
  
  boolean checkInternetPermission()
  {
    if (this.checkedInternetPermission) {
      return true;
    }
    if (checkPermission("android.permission.INTERNET") != 0)
    {
      complete(AuthorizationClient.Result.createErrorResult("AndroidManifest Error", "WebView login requires INTERNET permission"));
      return false;
    }
    this.checkedInternetPermission = true;
    return true;
  }
  
  int checkPermission(String paramString)
  {
    return this.context.checkCallingOrSelfPermission(paramString);
  }
  
  void complete(AuthorizationClient.Result paramResult)
  {
    this.handlersToTry = null;
    this.currentHandler = null;
    this.pendingRequest = null;
    notifyOnCompleteListener(paramResult);
  }
  
  void completeAndValidate(AuthorizationClient.Result paramResult)
  {
    if ((paramResult.token != null) && (this.pendingRequest.needsNewTokenValidation()))
    {
      validateSameFbidAndFinish(paramResult);
      return;
    }
    complete(paramResult);
  }
  
  void continueAuth()
  {
    if ((this.pendingRequest == null) || (this.currentHandler == null)) {
      throw new FacebookException("Attempted to continue authorization without a pending request.");
    }
    if (this.currentHandler.needsRestart())
    {
      this.currentHandler.cancel();
      tryCurrentHandler();
    }
  }
  
  Request createGetPermissionsRequest(String paramString)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("fields", "id");
    localBundle.putString("access_token", paramString);
    return new Request(null, "me/permissions", localBundle, HttpMethod.GET, null);
  }
  
  Request createGetProfileIdRequest(String paramString)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("fields", "id");
    localBundle.putString("access_token", paramString);
    return new Request(null, "me", localBundle, HttpMethod.GET, null);
  }
  
  RequestBatch createReauthValidationBatch(AuthorizationClient.Result paramResult)
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    String str1 = paramResult.token.getToken();
    AuthorizationClient.3 local3 = new AuthorizationClient.3(this, localArrayList1);
    String str2 = this.pendingRequest.getPreviousAccessToken();
    Request localRequest1 = createGetProfileIdRequest(str2);
    localRequest1.setCallback(local3);
    Request localRequest2 = createGetProfileIdRequest(str1);
    localRequest2.setCallback(local3);
    Request localRequest3 = createGetPermissionsRequest(str2);
    localRequest3.setCallback(new AuthorizationClient.4(this, localArrayList2));
    RequestBatch localRequestBatch = new RequestBatch(new Request[] { localRequest1, localRequest2, localRequest3 });
    localRequestBatch.setBatchApplicationId(this.pendingRequest.getApplicationId());
    localRequestBatch.addCallback(new AuthorizationClient.5(this, localArrayList1, paramResult, localArrayList2));
    return localRequestBatch;
  }
  
  AuthorizationClient.BackgroundProcessingListener getBackgroundProcessingListener()
  {
    return this.backgroundProcessingListener;
  }
  
  boolean getInProgress()
  {
    return (this.pendingRequest != null) && (this.currentHandler != null);
  }
  
  AuthorizationClient.OnCompletedListener getOnCompletedListener()
  {
    return this.onCompletedListener;
  }
  
  AuthorizationClient.StartActivityDelegate getStartActivityDelegate()
  {
    if (this.startActivityDelegate != null) {
      return this.startActivityDelegate;
    }
    if (this.pendingRequest != null) {
      return new AuthorizationClient.2(this);
    }
    return null;
  }
  
  boolean onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 == this.pendingRequest.getRequestCode()) {
      return this.currentHandler.onActivityResult(paramInt1, paramInt2, paramIntent);
    }
    return false;
  }
  
  void setBackgroundProcessingListener(AuthorizationClient.BackgroundProcessingListener paramBackgroundProcessingListener)
  {
    this.backgroundProcessingListener = paramBackgroundProcessingListener;
  }
  
  void setContext(Activity paramActivity)
  {
    this.context = paramActivity;
    this.startActivityDelegate = new AuthorizationClient.1(this, paramActivity);
  }
  
  void setContext(Context paramContext)
  {
    this.context = paramContext;
    this.startActivityDelegate = null;
  }
  
  void setOnCompletedListener(AuthorizationClient.OnCompletedListener paramOnCompletedListener)
  {
    this.onCompletedListener = paramOnCompletedListener;
  }
  
  void startOrContinueAuth(AuthorizationClient.AuthorizationRequest paramAuthorizationRequest)
  {
    if (getInProgress())
    {
      continueAuth();
      return;
    }
    authorize(paramAuthorizationRequest);
  }
  
  boolean tryCurrentHandler()
  {
    if ((this.currentHandler.needsInternetPermission()) && (!checkInternetPermission())) {
      return false;
    }
    return this.currentHandler.tryAuthorize(this.pendingRequest);
  }
  
  void tryNextHandler()
  {
    for (;;)
    {
      if ((this.handlersToTry != null) && (!this.handlersToTry.isEmpty()))
      {
        this.currentHandler = ((AuthorizationClient.AuthHandler)this.handlersToTry.remove(0));
        if (tryCurrentHandler()) {
          if ((this.currentHandler instanceof AuthorizationClient.WebViewAuthHandler)) {
            bc.a().a(a.i.a.a(aq.a, ap.a));
          }
        }
      }
    }
    while (this.pendingRequest == null)
    {
      return;
      bc.a().a(a.i.a.a(aq.a, ap.b));
      return;
    }
    completeWithFailure();
  }
  
  void validateSameFbidAndFinish(AuthorizationClient.Result paramResult)
  {
    if (paramResult.token == null) {
      throw new FacebookException("Can't validate without a token");
    }
    RequestBatch localRequestBatch = createReauthValidationBatch(paramResult);
    notifyBackgroundProcessingStart();
    localRequestBatch.executeAsync();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.facebook.AuthorizationClient
 * JD-Core Version:    0.7.0.1
 */