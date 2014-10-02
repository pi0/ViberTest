.class Lcom/facebook/AuthorizationClient$WebViewAuthHandler;
.super Lcom/facebook/AuthorizationClient$AuthHandler;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient loginDialog:Lcom/facebook/widget/WebDialog;

.field final synthetic this$0:Lcom/facebook/AuthorizationClient;


# direct methods
.method constructor <init>(Lcom/facebook/AuthorizationClient;)V
    .locals 0
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-direct {p0, p1}, Lcom/facebook/AuthorizationClient$AuthHandler;-><init>(Lcom/facebook/AuthorizationClient;)V

    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->loginDialog:Lcom/facebook/widget/WebDialog;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->loginDialog:Lcom/facebook/widget/WebDialog;

    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog;->dismiss()V

    .line 446
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->loginDialog:Lcom/facebook/widget/WebDialog;

    .line 448
    :cond_0
    return-void
.end method

.method needsInternetPermission()Z
    .locals 1

    .prologue
    .line 439
    const/4 v0, 0x1

    return v0
.end method

.method needsRestart()Z
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x1

    return v0
.end method

.method onWebDialogComplete(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 480
    if-eqz p2, :cond_0

    .line 484
    iget-object v0, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v0, v0, Lcom/facebook/AuthorizationClient;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    .line 485
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 487
    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getPermissions()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/facebook/AccessTokenSource;->WEB_VIEW:Lcom/facebook/AccessTokenSource;

    invoke-static {v0, p2, v1}, Lcom/facebook/AccessToken;->createFromWebBundle(Ljava/util/List;Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;

    move-result-object v0

    .line 489
    invoke-static {v0}, Lcom/facebook/AuthorizationClient$Result;->createTokenResult(Lcom/facebook/AccessToken;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v0

    .line 498
    :goto_0
    iget-object v1, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v1, v0}, Lcom/facebook/AuthorizationClient;->completeAndValidate(Lcom/facebook/AuthorizationClient$Result;)V

    .line 499
    return-void

    .line 492
    :cond_0
    instance-of v0, p3, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz v0, :cond_1

    .line 493
    const-string/jumbo v0, "User canceled log in."

    invoke-static {v0}, Lcom/facebook/AuthorizationClient$Result;->createCancelResult(Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v0

    goto :goto_0

    .line 495
    :cond_1
    invoke-virtual {p3}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/AuthorizationClient$Result;->createErrorResult(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v0

    goto :goto_0
.end method

.method tryAuthorize(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Z
    .locals 5
    .parameter

    .prologue
    .line 452
    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 453
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 454
    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getPermissions()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 455
    const-string/jumbo v2, "scope"

    const-string/jumbo v3, ","

    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getPermissions()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :cond_0
    iget-object v2, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v2, v2, Lcom/facebook/AuthorizationClient;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/facebook/internal/Utility;->clearFacebookCookies(Landroid/content/Context;)V

    .line 461
    new-instance v2, Lcom/facebook/AuthorizationClient$WebViewAuthHandler$1;

    invoke-direct {v2, p0, p1}, Lcom/facebook/AuthorizationClient$WebViewAuthHandler$1;-><init>(Lcom/facebook/AuthorizationClient$WebViewAuthHandler;Lcom/facebook/AuthorizationClient$AuthorizationRequest;)V

    .line 468
    new-instance v3, Lcom/facebook/AuthorizationClient$AuthDialogBuilder;

    iget-object v4, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v4}, Lcom/facebook/AuthorizationClient;->getStartActivityDelegate()Lcom/facebook/AuthorizationClient$StartActivityDelegate;

    move-result-object v4

    invoke-interface {v4}, Lcom/facebook/AuthorizationClient$StartActivityDelegate;->getActivityContext()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v0, v1}, Lcom/facebook/AuthorizationClient$AuthDialogBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v3, v2}, Lcom/facebook/AuthorizationClient$AuthDialogBuilder;->setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)Lcom/facebook/widget/WebDialog$BuilderBase;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/WebDialog$Builder;

    .line 471
    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog$Builder;->build()Lcom/facebook/widget/WebDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->loginDialog:Lcom/facebook/widget/WebDialog;

    .line 472
    iget-object v0, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->loginDialog:Lcom/facebook/widget/WebDialog;

    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog;->show()V

    .line 474
    const/4 v0, 0x1

    return v0
.end method
