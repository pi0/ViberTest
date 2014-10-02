.class Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;
.super Lcom/facebook/AuthorizationClient$KatanaAuthHandler;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/facebook/AuthorizationClient;


# direct methods
.method constructor <init>(Lcom/facebook/AuthorizationClient;)V
    .locals 0
    .parameter

    .prologue
    .line 584
    iput-object p1, p0, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-direct {p0, p1}, Lcom/facebook/AuthorizationClient$KatanaAuthHandler;-><init>(Lcom/facebook/AuthorizationClient;)V

    return-void
.end method

.method private handleResultOk(Landroid/content/Intent;)Lcom/facebook/AuthorizationClient$Result;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 628
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 629
    const-string/jumbo v2, "com.facebook.platform.status.ERROR_TYPE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 630
    if-nez v2, :cond_1

    .line 631
    sget-object v0, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_NATIVE:Lcom/facebook/AccessTokenSource;

    invoke-static {v1, v0}, Lcom/facebook/AccessToken;->createFromNativeLogin(Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/AuthorizationClient$Result;->createTokenResult(Lcom/facebook/AccessToken;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v0

    .line 638
    :cond_0
    :goto_0
    return-object v0

    .line 633
    :cond_1
    const-string/jumbo v3, "ServiceDisabled"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 635
    const-string/jumbo v3, "UserCanceled"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 636
    invoke-static {v0}, Lcom/facebook/AuthorizationClient$Result;->createCancelResult(Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v0

    goto :goto_0

    .line 638
    :cond_2
    const-string/jumbo v0, "error_description"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/AuthorizationClient$Result;->createErrorResult(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method onActivityResult(IILandroid/content/Intent;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 598
    if-nez p3, :cond_0

    .line 599
    const/4 v0, 0x0

    .line 624
    :goto_0
    return v0

    .line 602
    :cond_0
    invoke-static {p3}, Lcom/facebook/NativeProtocol;->isServiceDisabledResult20121101(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 603
    iget-object v0, p0, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v0}, Lcom/facebook/AuthorizationClient;->tryNextHandler()V

    .line 624
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 608
    :cond_1
    if-nez p2, :cond_2

    .line 609
    const-string/jumbo v0, "com.facebook.platform.status.ERROR_DESCRIPTION"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/AuthorizationClient$Result;->createCancelResult(Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v0

    .line 618
    :goto_2
    if-eqz v0, :cond_4

    .line 619
    iget-object v1, p0, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v1, v0}, Lcom/facebook/AuthorizationClient;->completeAndValidate(Lcom/facebook/AuthorizationClient$Result;)V

    goto :goto_1

    .line 611
    :cond_2
    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    .line 612
    const-string/jumbo v0, "Unexpected resultCode from authorization."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/AuthorizationClient$Result;->createErrorResult(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v0

    goto :goto_2

    .line 615
    :cond_3
    invoke-direct {p0, p3}, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->handleResultOk(Landroid/content/Intent;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v0

    goto :goto_2

    .line 621
    :cond_4
    iget-object v0, p0, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v0}, Lcom/facebook/AuthorizationClient;->tryNextHandler()V

    goto :goto_1
.end method

.method tryAuthorize(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Z
    .locals 4
    .parameter

    .prologue
    .line 589
    iget-object v0, p0, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v0, v0, Lcom/facebook/AuthorizationClient;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getPermissions()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getDefaultAudience()Lcom/facebook/SessionDefaultAudience;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/SessionDefaultAudience;->getNativeProtocolAudience()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/NativeProtocol;->createLoginDialog20121101Intent(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 593
    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getRequestCode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->tryIntent(Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method
