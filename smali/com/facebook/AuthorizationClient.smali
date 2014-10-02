.class Lcom/facebook/AuthorizationClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field transient backgroundProcessingListener:Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;

.field transient checkedInternetPermission:Z

.field transient context:Landroid/content/Context;

.field currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

.field handlersToTry:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/AuthorizationClient$AuthHandler;",
            ">;"
        }
    .end annotation
.end field

.field transient onCompletedListener:Lcom/facebook/AuthorizationClient$OnCompletedListener;

.field pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

.field transient startActivityDelegate:Lcom/facebook/AuthorizationClient$StartActivityDelegate;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 786
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/AuthorizationClient;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/facebook/AuthorizationClient;->notifyBackgroundProcessingStop()V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/AuthorizationClient;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/facebook/AuthorizationClient;->notifyBackgroundProcessingStart()V

    return-void
.end method

.method private completeWithFailure()V
    .locals 2

    .prologue
    .line 213
    const-string/jumbo v0, "Login attempt failed."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/AuthorizationClient$Result;->createErrorResult(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/AuthorizationClient;->complete(Lcom/facebook/AuthorizationClient$Result;)V

    .line 214
    return-void
.end method

.method private getHandlerTypes(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/AuthorizationClient$AuthorizationRequest;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/AuthorizationClient$AuthHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getLoginBehavior()Lcom/facebook/SessionLoginBehavior;

    move-result-object v1

    .line 155
    invoke-virtual {v1}, Lcom/facebook/SessionLoginBehavior;->allowsKatanaAuth()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->isLegacy()Z

    move-result v2

    if-nez v2, :cond_0

    .line 157
    new-instance v2, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;

    invoke-direct {v2, p0}, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;-><init>(Lcom/facebook/AuthorizationClient;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v2, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;

    invoke-direct {v2, p0}, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;-><init>(Lcom/facebook/AuthorizationClient;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_0
    new-instance v2, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;

    invoke-direct {v2, p0}, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;-><init>(Lcom/facebook/AuthorizationClient;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/SessionLoginBehavior;->allowsWebViewAuth()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 164
    new-instance v1, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;

    invoke-direct {v1, p0}, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;-><init>(Lcom/facebook/AuthorizationClient;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_2
    return-object v0
.end method

.method private notifyBackgroundProcessingStart()V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->backgroundProcessingListener:Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->backgroundProcessingListener:Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;

    invoke-interface {v0}, Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;->onBackgroundProcessingStarted()V

    .line 397
    :cond_0
    return-void
.end method

.method private notifyBackgroundProcessingStop()V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->backgroundProcessingListener:Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->backgroundProcessingListener:Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;

    invoke-interface {v0}, Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;->onBackgroundProcessingStopped()V

    .line 403
    :cond_0
    return-void
.end method

.method private notifyOnCompleteListener(Lcom/facebook/AuthorizationClient$Result;)V
    .locals 1
    .parameter

    .prologue
    .line 388
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->onCompletedListener:Lcom/facebook/AuthorizationClient$OnCompletedListener;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->onCompletedListener:Lcom/facebook/AuthorizationClient$OnCompletedListener;

    invoke-interface {v0, p1}, Lcom/facebook/AuthorizationClient$OnCompletedListener;->onCompleted(Lcom/facebook/AuthorizationClient$Result;)V

    .line 391
    :cond_0
    return-void
.end method


# virtual methods
.method authorize(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)V
    .locals 2
    .parameter

    .prologue
    .line 106
    if-nez p1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    if-eqz v0, :cond_2

    .line 111
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "Attempted to authorize while a request is pending."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->needsNewTokenValidation()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/facebook/AuthorizationClient;->checkInternetPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    :cond_3
    iput-object p1, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    .line 119
    invoke-direct {p0, p1}, Lcom/facebook/AuthorizationClient;->getHandlerTypes(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/AuthorizationClient;->handlersToTry:Ljava/util/List;

    .line 120
    invoke-virtual {p0}, Lcom/facebook/AuthorizationClient;->tryNextHandler()V

    goto :goto_0
.end method

.method cancelCurrentHandler()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthHandler;->cancel()V

    .line 142
    :cond_0
    return-void
.end method

.method checkInternetPermission()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 171
    iget-boolean v1, p0, Lcom/facebook/AuthorizationClient;->checkedInternetPermission:Z

    if-eqz v1, :cond_0

    .line 185
    :goto_0
    return v0

    .line 175
    :cond_0
    const-string/jumbo v1, "android.permission.INTERNET"

    invoke-virtual {p0, v1}, Lcom/facebook/AuthorizationClient;->checkPermission(Ljava/lang/String;)I

    move-result v1

    .line 176
    if-eqz v1, :cond_1

    .line 177
    const-string/jumbo v0, "AndroidManifest Error"

    .line 178
    const-string/jumbo v1, "WebView login requires INTERNET permission"

    .line 179
    invoke-static {v0, v1}, Lcom/facebook/AuthorizationClient$Result;->createErrorResult(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/AuthorizationClient;->complete(Lcom/facebook/AuthorizationClient$Result;)V

    .line 181
    const/4 v0, 0x0

    goto :goto_0

    .line 184
    :cond_1
    iput-boolean v0, p0, Lcom/facebook/AuthorizationClient;->checkedInternetPermission:Z

    goto :goto_0
.end method

.method checkPermission(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 278
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method complete(Lcom/facebook/AuthorizationClient$Result;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 234
    iput-object v0, p0, Lcom/facebook/AuthorizationClient;->handlersToTry:Ljava/util/List;

    .line 235
    iput-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    .line 236
    iput-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    .line 238
    invoke-direct {p0, p1}, Lcom/facebook/AuthorizationClient;->notifyOnCompleteListener(Lcom/facebook/AuthorizationClient$Result;)V

    .line 239
    return-void
.end method

.method completeAndValidate(Lcom/facebook/AuthorizationClient$Result;)V
    .locals 1
    .parameter

    .prologue
    .line 225
    iget-object v0, p1, Lcom/facebook/AuthorizationClient$Result;->token:Lcom/facebook/AccessToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->needsNewTokenValidation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p0, p1}, Lcom/facebook/AuthorizationClient;->validateSameFbidAndFinish(Lcom/facebook/AuthorizationClient$Result;)V

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/AuthorizationClient;->complete(Lcom/facebook/AuthorizationClient$Result;)V

    goto :goto_0
.end method

.method continueAuth()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    if-nez v0, :cond_1

    .line 125
    :cond_0
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "Attempted to continue authorization without a pending request."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthHandler;->needsRestart()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthHandler;->cancel()V

    .line 130
    invoke-virtual {p0}, Lcom/facebook/AuthorizationClient;->tryCurrentHandler()Z

    .line 132
    :cond_2
    return-void
.end method

.method createGetPermissionsRequest(Ljava/lang/String;)Lcom/facebook/Request;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 374
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 375
    const-string/jumbo v0, "fields"

    const-string/jumbo v2, "id"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string/jumbo v0, "access_token"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    new-instance v0, Lcom/facebook/Request;

    const-string/jumbo v2, "me/permissions"

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method createGetProfileIdRequest(Ljava/lang/String;)Lcom/facebook/Request;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 381
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 382
    const-string/jumbo v0, "fields"

    const-string/jumbo v2, "id"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string/jumbo v0, "access_token"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    new-instance v0, Lcom/facebook/Request;

    const-string/jumbo v2, "me"

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method createReauthValidationBatch(Lcom/facebook/AuthorizationClient$Result;)Lcom/facebook/RequestBatch;
    .locals 8
    .parameter

    .prologue
    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 299
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 300
    iget-object v2, p1, Lcom/facebook/AuthorizationClient$Result;->token:Lcom/facebook/AccessToken;

    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 302
    new-instance v3, Lcom/facebook/AuthorizationClient$3;

    invoke-direct {v3, p0, v0}, Lcom/facebook/AuthorizationClient$3;-><init>(Lcom/facebook/AuthorizationClient;Ljava/util/ArrayList;)V

    .line 315
    iget-object v4, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v4}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getPreviousAccessToken()Ljava/lang/String;

    move-result-object v4

    .line 316
    invoke-virtual {p0, v4}, Lcom/facebook/AuthorizationClient;->createGetProfileIdRequest(Ljava/lang/String;)Lcom/facebook/Request;

    move-result-object v5

    .line 317
    invoke-virtual {v5, v3}, Lcom/facebook/Request;->setCallback(Lcom/facebook/Request$Callback;)V

    .line 319
    invoke-virtual {p0, v2}, Lcom/facebook/AuthorizationClient;->createGetProfileIdRequest(Ljava/lang/String;)Lcom/facebook/Request;

    move-result-object v2

    .line 320
    invoke-virtual {v2, v3}, Lcom/facebook/Request;->setCallback(Lcom/facebook/Request$Callback;)V

    .line 322
    invoke-virtual {p0, v4}, Lcom/facebook/AuthorizationClient;->createGetPermissionsRequest(Ljava/lang/String;)Lcom/facebook/Request;

    move-result-object v3

    .line 323
    new-instance v4, Lcom/facebook/AuthorizationClient$4;

    invoke-direct {v4, p0, v1}, Lcom/facebook/AuthorizationClient$4;-><init>(Lcom/facebook/AuthorizationClient;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Lcom/facebook/Request;->setCallback(Lcom/facebook/Request$Callback;)V

    .line 342
    new-instance v4, Lcom/facebook/RequestBatch;

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/facebook/Request;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const/4 v5, 0x1

    aput-object v2, v6, v5

    const/4 v2, 0x2

    aput-object v3, v6, v2

    invoke-direct {v4, v6}, Lcom/facebook/RequestBatch;-><init>([Lcom/facebook/Request;)V

    .line 344
    iget-object v2, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v2}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/facebook/RequestBatch;->setBatchApplicationId(Ljava/lang/String;)V

    .line 345
    new-instance v2, Lcom/facebook/AuthorizationClient$5;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/facebook/AuthorizationClient$5;-><init>(Lcom/facebook/AuthorizationClient;Ljava/util/ArrayList;Lcom/facebook/AuthorizationClient$Result;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v2}, Lcom/facebook/RequestBatch;->addCallback(Lcom/facebook/RequestBatch$Callback;)V

    .line 370
    return-object v4
.end method

.method getBackgroundProcessingListener()Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->backgroundProcessingListener:Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;

    return-object v0
.end method

.method getInProgress()Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getOnCompletedListener()Lcom/facebook/AuthorizationClient$OnCompletedListener;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->onCompletedListener:Lcom/facebook/AuthorizationClient$OnCompletedListener;

    return-object v0
.end method

.method getStartActivityDelegate()Lcom/facebook/AuthorizationClient$StartActivityDelegate;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->startActivityDelegate:Lcom/facebook/AuthorizationClient$StartActivityDelegate;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->startActivityDelegate:Lcom/facebook/AuthorizationClient$StartActivityDelegate;

    .line 274
    :goto_0
    return-object v0

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    if-eqz v0, :cond_1

    .line 262
    new-instance v0, Lcom/facebook/AuthorizationClient$2;

    invoke-direct {v0, p0}, Lcom/facebook/AuthorizationClient$2;-><init>(Lcom/facebook/AuthorizationClient;)V

    goto :goto_0

    .line 274
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getRequestCode()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/AuthorizationClient$AuthHandler;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    .line 148
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setBackgroundProcessingListener(Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/facebook/AuthorizationClient;->backgroundProcessingListener:Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;

    .line 255
    return-void
.end method

.method setContext(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/facebook/AuthorizationClient;->context:Landroid/content/Context;

    .line 84
    new-instance v0, Lcom/facebook/AuthorizationClient$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/AuthorizationClient$1;-><init>(Lcom/facebook/AuthorizationClient;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/facebook/AuthorizationClient;->startActivityDelegate:Lcom/facebook/AuthorizationClient$StartActivityDelegate;

    .line 95
    return-void
.end method

.method setContext(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/facebook/AuthorizationClient;->context:Landroid/content/Context;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/AuthorizationClient;->startActivityDelegate:Lcom/facebook/AuthorizationClient$StartActivityDelegate;

    .line 77
    return-void
.end method

.method setOnCompletedListener(Lcom/facebook/AuthorizationClient$OnCompletedListener;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/facebook/AuthorizationClient;->onCompletedListener:Lcom/facebook/AuthorizationClient$OnCompletedListener;

    .line 247
    return-void
.end method

.method startOrContinueAuth(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)V
    .locals 1
    .parameter

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/facebook/AuthorizationClient;->getInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/facebook/AuthorizationClient;->continueAuth()V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/AuthorizationClient;->authorize(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)V

    goto :goto_0
.end method

.method tryCurrentHandler()Z
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthHandler;->needsInternetPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/AuthorizationClient;->checkInternetPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    const/4 v0, 0x0

    .line 220
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    iget-object v1, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v0, v1}, Lcom/facebook/AuthorizationClient$AuthHandler;->tryAuthorize(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Z

    move-result v0

    goto :goto_0
.end method

.method tryNextHandler()V
    .locals 4

    .prologue
    .line 189
    :cond_0
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->handlersToTry:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->handlersToTry:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 190
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->handlersToTry:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/AuthorizationClient$AuthHandler;

    iput-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    .line 192
    invoke-virtual {p0}, Lcom/facebook/AuthorizationClient;->tryCurrentHandler()Z

    move-result v0

    .line 194
    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    instance-of v0, v0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;

    if-eqz v0, :cond_2

    .line 197
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    iget-object v1, v1, Lcom/viber/voip/a/an;->a:Lcom/viber/voip/a/ao;

    sget-object v2, Lcom/viber/voip/a/aq;->a:Lcom/viber/voip/a/aq;

    sget-object v3, Lcom/viber/voip/a/ap;->a:Lcom/viber/voip/a/ap;

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/a/ao;->a(Lcom/viber/voip/a/aq;Lcom/viber/voip/a/ap;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 210
    :cond_1
    :goto_0
    return-void

    .line 199
    :cond_2
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    iget-object v1, v1, Lcom/viber/voip/a/an;->a:Lcom/viber/voip/a/ao;

    sget-object v2, Lcom/viber/voip/a/aq;->a:Lcom/viber/voip/a/aq;

    sget-object v3, Lcom/viber/voip/a/ap;->b:Lcom/viber/voip/a/ap;

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/a/ao;->a(Lcom/viber/voip/a/aq;Lcom/viber/voip/a/ap;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_0

    .line 206
    :cond_3
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    if-eqz v0, :cond_1

    .line 208
    invoke-direct {p0}, Lcom/facebook/AuthorizationClient;->completeWithFailure()V

    goto :goto_0
.end method

.method validateSameFbidAndFinish(Lcom/facebook/AuthorizationClient$Result;)V
    .locals 2
    .parameter

    .prologue
    .line 282
    iget-object v0, p1, Lcom/facebook/AuthorizationClient$Result;->token:Lcom/facebook/AccessToken;

    if-nez v0, :cond_0

    .line 283
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "Can\'t validate without a token"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/AuthorizationClient;->createReauthValidationBatch(Lcom/facebook/AuthorizationClient$Result;)Lcom/facebook/RequestBatch;

    move-result-object v0

    .line 288
    invoke-direct {p0}, Lcom/facebook/AuthorizationClient;->notifyBackgroundProcessingStart()V

    .line 290
    invoke-virtual {v0}, Lcom/facebook/RequestBatch;->executeAsync()Lcom/facebook/RequestAsyncTask;

    .line 291
    return-void
.end method
