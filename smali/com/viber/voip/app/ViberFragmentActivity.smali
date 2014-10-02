.class public abstract Lcom/viber/voip/app/ViberFragmentActivity;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "SourceFile"


# static fields
.field private static mPttCheckAutoclean:Z

.field private static mZoobeCheckAutoclean:Z


# instance fields
.field private mEntryCookie:Lcom/viber/voip/viberout/i;

.field private mViberOutCheck:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 37
    sput-boolean v0, Lcom/viber/voip/app/ViberFragmentActivity;->mPttCheckAutoclean:Z

    .line 38
    sput-boolean v0, Lcom/viber/voip/app/ViberFragmentActivity;->mZoobeCheckAutoclean:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    return-void
.end method

.method public static fragmentArgumentsToIntent(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 2
    .parameter

    .prologue
    .line 225
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 226
    if-nez p0, :cond_0

    move-object v0, v1

    .line 237
    :goto_0
    return-object v0

    .line 230
    :cond_0
    const-string/jumbo v0, "_uri"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 231
    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 235
    :cond_1
    invoke-virtual {v1, p0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 236
    const-string/jumbo v0, "_uri"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    move-object v0, v1

    .line 237
    goto :goto_0
.end method

.method public static intentToFragmentArguments(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 3
    .parameter

    .prologue
    .line 203
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 204
    if-nez p0, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-object v0

    .line 208
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 209
    if-eqz v1, :cond_2

    .line 210
    const-string/jumbo v2, "_uri"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 213
    :cond_2
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 214
    if-eqz v1, :cond_0

    .line 215
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method checkPttAutoclean()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 96
    sget-boolean v0, Lcom/viber/voip/app/ViberFragmentActivity;->mPttCheckAutoclean:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->am()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    const-string/jumbo v0, "PTT autoclean FIRST"

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/app/a;

    invoke-direct {v1, p0}, Lcom/viber/voip/app/a;-><init>(Lcom/viber/voip/app/ViberFragmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->addReadyListener(Lcom/viber/jni/PhoneControllerReadyListener;)V

    .line 141
    :goto_0
    sget-boolean v0, Lcom/viber/voip/app/ViberFragmentActivity;->mZoobeCheckAutoclean:Z

    if-eqz v0, :cond_0

    .line 143
    invoke-static {}, Lcom/viber/voip/util/bw;->a()Lcom/viber/voip/util/bw;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v1}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/app/d;

    invoke-direct {v2, p0}, Lcom/viber/voip/app/d;-><init>(Lcom/viber/voip/app/ViberFragmentActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/util/bw;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 153
    :cond_0
    sput-boolean v3, Lcom/viber/voip/app/ViberFragmentActivity;->mPttCheckAutoclean:Z

    .line 154
    sput-boolean v3, Lcom/viber/voip/app/ViberFragmentActivity;->mZoobeCheckAutoclean:Z

    .line 155
    return-void

    .line 120
    :cond_1
    sget-boolean v0, Lcom/viber/voip/app/ViberFragmentActivity;->mPttCheckAutoclean:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->am()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->an()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    const-string/jumbo v0, "PTT autoclean ON"

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 124
    sget-object v0, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/app/c;

    invoke-direct {v1, p0}, Lcom/viber/voip/app/c;-><init>(Lcom/viber/voip/app/ViberFragmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 138
    :cond_2
    const-string/jumbo v0, "PTT autoclean OFF"

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getActionBarSherlock()Lcom/actionbarsherlock/ActionBarSherlock;
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 173
    :try_start_0
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    iget-boolean v0, p0, Lcom/viber/voip/app/ViberFragmentActivity;->mViberOutCheck:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/app/ViberFragmentActivity;->mEntryCookie:Lcom/viber/voip/viberout/i;

    invoke-virtual {v0, v1}, Lcom/viber/voip/viberout/e;->b(Lcom/viber/voip/viberout/i;)V

    .line 178
    :cond_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 46
    sput-object p0, Lcom/viber/voip/app/ViberActivity;->sLastUsedActivity:Landroid/app/Activity;

    .line 47
    invoke-static {}, Lcom/viber/voip/process/l;->a()Lcom/viber/voip/process/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/process/l;->a(Landroid/app/Activity;)V

    .line 49
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    iget-boolean v0, p0, Lcom/viber/voip/app/ViberFragmentActivity;->mViberOutCheck:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/viber/voip/viberout/e;->b(Landroid/app/Activity;Landroid/content/Intent;)Lcom/viber/voip/viberout/i;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/app/ViberFragmentActivity;->mEntryCookie:Lcom/viber/voip/viberout/i;

    .line 51
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    sput-object v0, Lcom/viber/voip/app/ViberActivity;->sLastUsedActivity:Landroid/app/Activity;

    .line 183
    invoke-static {}, Lcom/viber/voip/process/l;->a()Lcom/viber/voip/process/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/process/l;->b(Landroid/app/Activity;)V

    .line 184
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onDestroy()V

    .line 186
    invoke-virtual {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gl;->a(Landroid/view/Window;)V

    .line 188
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 56
    iget-boolean v0, p0, Lcom/viber/voip/app/ViberFragmentActivity;->mViberOutCheck:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/viber/voip/viberout/e;->b(Landroid/app/Activity;Landroid/content/Intent;)Lcom/viber/voip/viberout/i;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/app/ViberFragmentActivity;->mEntryCookie:Lcom/viber/voip/viberout/i;

    .line 57
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 159
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onPause()V

    .line 160
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->notifyActivityOnForeground(ZLjava/lang/String;)V

    .line 161
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onRestart()V

    .line 75
    iget-boolean v0, p0, Lcom/viber/voip/app/ViberFragmentActivity;->mViberOutCheck:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/app/ViberFragmentActivity;->mEntryCookie:Lcom/viber/voip/viberout/i;

    invoke-virtual {v0, v1}, Lcom/viber/voip/viberout/e;->d(Lcom/viber/voip/viberout/i;)V

    .line 76
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 80
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onResume()V

    .line 82
    invoke-static {}, Lcom/viber/voip/process/k;->a()Lcom/viber/voip/process/k;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/process/k;->a:Lcom/viber/voip/process/k;

    if-ne v0, v1, :cond_1

    .line 83
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->isUseDelayedLoad()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.VIBER_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/app/ViberFragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->checkPttAutoclean()V

    .line 90
    :cond_1
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->notifyActivityOnForeground(ZLjava/lang/String;)V

    .line 92
    sput-object p0, Lcom/viber/voip/app/ViberActivity;->sLastUsedActivity:Landroid/app/Activity;

    .line 93
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 61
    sput-object p0, Lcom/viber/voip/app/ViberActivity;->sLastUsedActivity:Landroid/app/Activity;

    .line 63
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onStart()V

    .line 68
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/a/bc;->a(Landroid/app/Activity;)V

    .line 69
    iget-boolean v0, p0, Lcom/viber/voip/app/ViberFragmentActivity;->mViberOutCheck:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/app/ViberFragmentActivity;->mEntryCookie:Lcom/viber/voip/viberout/i;

    invoke-virtual {v0, v1}, Lcom/viber/voip/viberout/e;->d(Lcom/viber/voip/viberout/i;)V

    .line 70
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 165
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onStop()V

    .line 166
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/a/bc;->b(Landroid/app/Activity;)V

    .line 167
    iget-boolean v0, p0, Lcom/viber/voip/app/ViberFragmentActivity;->mViberOutCheck:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/app/ViberFragmentActivity;->mEntryCookie:Lcom/viber/voip/viberout/i;

    invoke-virtual {v0, v1}, Lcom/viber/voip/viberout/e;->c(Lcom/viber/voip/viberout/i;)V

    .line 168
    :cond_0
    return-void
.end method

.method protected requestViberOutCheck()V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/app/ViberFragmentActivity;->mViberOutCheck:Z

    .line 192
    return-void
.end method
