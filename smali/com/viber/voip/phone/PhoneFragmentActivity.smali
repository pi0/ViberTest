.class public Lcom/viber/voip/phone/PhoneFragmentActivity;
.super Lcom/viber/voip/app/ViberFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerLocalCallState;
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerPhoneState;
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerVideo;


# instance fields
.field private final a:I

.field private final b:I

.field private c:Lcom/viber/voip/phone/call/a;

.field private d:Lcom/viber/jni/PhoneControllerListener;

.field private e:Landroid/support/v4/app/Fragment;

.field private f:Ljava/lang/Runnable;

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/viber/voip/app/ViberFragmentActivity;-><init>()V

    .line 54
    const/16 v0, 0x708

    iput v0, p0, Lcom/viber/voip/phone/PhoneFragmentActivity;->a:I

    .line 55
    const/16 v0, 0x1388

    iput v0, p0, Lcom/viber/voip/phone/PhoneFragmentActivity;->b:I

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/phone/PhoneFragmentActivity;->g:Z

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/phone/PhoneFragmentActivity;->h:Z

    .line 343
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/phone/PhoneFragmentActivity;)Lcom/viber/voip/phone/call/a;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneFragmentActivity;->c:Lcom/viber/voip/phone/call/a;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/viber/voip/phone/PhoneFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 100
    const v0, 0x488000

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 103
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/PhoneFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 104
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    const/high16 v0, 0x20

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 107
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneFragmentActivity;->e:Landroid/support/v4/app/Fragment;

    .line 204
    invoke-direct {p0, p1}, Lcom/viber/voip/phone/PhoneFragmentActivity;->b(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/phone/PhoneFragmentActivity;->e:Landroid/support/v4/app/Fragment;

    .line 205
    iget-object v1, p0, Lcom/viber/voip/phone/PhoneFragmentActivity;->e:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/viber/voip/phone/PhoneFragmentActivity;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 206
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/viber/voip/phone/PhoneFragmentActivity;->e:Landroid/support/v4/app/Fragment;

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 209
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/phone/PhoneFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f070345

    iget-object v2, p0, Lcom/viber/voip/phone/PhoneFragmentActivity;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1, v2, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 213
    :cond_1
    return-void
.end method

.method private b(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 2
    .parameter

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/viber/voip/phone/PhoneFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 217
    if-nez v0, :cond_0

    .line 218
    const-string/jumbo v1, "incoming_call"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    new-instance v0, Lcom/viber/voip/phone/b/y;

    invoke-direct {v0}, Lcom/viber/voip/phone/b/y;-><init>()V

    .line 227
    :cond_0
    :goto_0
    return-object v0

    .line 220
    :cond_1
    const-string/jumbo v1, "incall_call"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 221
    new-instance v0, Lcom/viber/voip/phone/b/u;

    invoke-direct {v0}, Lcom/viber/voip/phone/b/u;-><init>()V

    goto :goto_0

    .line 222
    :cond_2
    const-string/jumbo v1, "end_call_call"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    new-instance v0, Lcom/viber/voip/phone/b/e;

    invoke-direct {v0}, Lcom/viber/voip/phone/b/e;-><init>()V

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 113
    invoke-virtual {p0}, Lcom/viber/voip/phone/PhoneFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 115
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    invoke-virtual {p0, v1}, Lcom/viber/voip/phone/PhoneFragmentActivity;->setRequestedOrientation(I)V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-static {p0}, Lcom/viber/voip/util/gl;->a(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/phone/PhoneFragmentActivity;->h:Z

    .line 315
    iget-boolean v0, p0, Lcom/viber/voip/phone/PhoneFragmentActivity;->g:Z

    if-nez v0, :cond_0

    .line 331
    :goto_0
    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneFragmentActivity;->c:Lcom/viber/voip/phone/call/a;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a;->c()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    .line 320
    invoke-direct {p0}, Lcom/viber/voip/phone/PhoneFragmentActivity;->d()V

    .line 321
    iget-object v1, p0, Lcom/viber/voip/phone/PhoneFragmentActivity;->f:Ljava/lang/Runnable;

    if-nez v1, :cond_1

    .line 322
    new-instance v1, Lcom/viber/voip/phone/z;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/viber/voip/phone/z;-><init>(Lcom/viber/voip/phone/PhoneFragmentActivity;Lcom/viber/voip/phone/y;)V

    iput-object v1, p0, Lcom/viber/voip/phone/PhoneFragmentActivity;->f:Ljava/lang/Runnable;

    .line 324
    :cond_1
    const-string/jumbo v1, "end_call_call"

    invoke-direct {p0, v1}, Lcom/viber/voip/phone/PhoneFragmentActivity;->a(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->f()Z

    move-result v0

    .line 326
    sget-object v1, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-virtual {v1}, Lcom/viber/voip/dk;->a()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/phone/PhoneFragmentActivity;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x1388

    :goto_1
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x708

    goto :goto_1
.end method

.method private d()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneFragmentActivity;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 335
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-virtual {v0}, Lcom/viber/voip/dk;->a()Landroid/os/Handler;

    move-result-object v0

    .line 336
    iget-object v1, p0, Lcom/viber/voip/phone/PhoneFragmentActivity;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 341
    :cond_0
    return-void
.end method


# virtual methods
.method public onCallEnded(JZLjava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 239
    const/16 v0, 0xb

    if-eq p5, v0, :cond_0

    const/4 v0, 0x3

    if-ne p5, v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/phone/PhoneFragmentActivity;->c:Lcom/viber/voip/phone/call/a;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a;->c()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->c()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/phone/PhoneFragmentActivity;->finish()V

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_1
    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v0

    invoke-virtual {v0, p0, p5}, Lcom/viber/voip/viberout/e;->b(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public onCallStarted(Z)V
    .locals 1
    .parameter

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/viber/voip/phone/PhoneFragmentActivity;->d()V

    .line 233
    const-string/jumbo v0, "incall_call"

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/PhoneFragmentActivity;->a(Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 73
    sget-object v0, Lcom/viber/voip/app/ViberActivity;->sLastUsedActivity:Landroid/app/Activity;

    .line 74
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    sput-object v0, Lcom/viber/voip/app/ViberActivity;->sLastUsedActivity:Landroid/app/Activity;

    .line 77
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDelegatesManager()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/PhoneFragmentActivity;->d:Lcom/viber/jni/PhoneControllerListener;

    .line 78
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getCallHandler()Lcom/viber/voip/phone/call/a;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/PhoneFragmentActivity;->c:Lcom/viber/voip/phone/call/a;

    .line 80
    invoke-direct {p0}, Lcom/viber/voip/phone/PhoneFragmentActivity;->b()V

    .line 81
    invoke-direct {p0}, Lcom/viber/voip/phone/PhoneFragmentActivity;->a()V

    .line 83
    const v0, 0x7f0300f5

    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/PhoneFragmentActivity;->setContentView(I)V

    .line 85
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneFragmentActivity;->c:Lcom/viber/voip/phone/call/a;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a;->b()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->b()Lcom/viber/voip/phone/call/l;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/phone/call/l;->a:Lcom/viber/voip/phone/call/l;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->c()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 88
    const-string/jumbo v0, "incoming_call"

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/PhoneFragmentActivity;->a(Ljava/lang/String;)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    const-string/jumbo v0, "incall_call"

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/PhoneFragmentActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/viber/voip/phone/PhoneFragmentActivity;->d()V

    .line 199
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onDestroy()V

    .line 200
    return-void
.end method

.method public onHangup()V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 170
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/phone/PhoneFragmentActivity;->h:Z

    .line 172
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.viber.voip.action.CALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    const-string/jumbo v0, "incall_call"

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/PhoneFragmentActivity;->a(Ljava/lang/String;)V

    .line 175
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 179
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onPause()V

    .line 180
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneFragmentActivity;->d:Lcom/viber/jni/PhoneControllerListener;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getDialerLocalCallStateListener()Lcom/viber/jni/dialer/DialerLocalCallStateListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/jni/dialer/DialerLocalCallStateListener;->removeDelegate(Ljava/lang/Object;)V

    .line 181
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneFragmentActivity;->d:Lcom/viber/jni/PhoneControllerListener;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getDialerPhoneStateListener()Lcom/viber/jni/dialer/DialerPhoneStateListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/jni/dialer/DialerPhoneStateListener;->removeDelegate(Ljava/lang/Object;)V

    .line 182
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneFragmentActivity;->d:Lcom/viber/jni/PhoneControllerListener;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getDialerVideoListener()Lcom/viber/jni/dialer/DialerVideoListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/jni/dialer/DialerVideoListener;->removeDelegate(Ljava/lang/Object;)V

    .line 183
    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/viber/voip/viberout/e;->b(Z)V

    .line 185
    invoke-direct {p0}, Lcom/viber/voip/phone/PhoneFragmentActivity;->d()V

    .line 186
    iput-boolean v1, p0, Lcom/viber/voip/phone/PhoneFragmentActivity;->g:Z

    .line 187
    return-void
.end method

.method public onPeerVideoEnded()I
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public onPeerVideoEndedAck()I
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public onPeerVideoStarted()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 289
    invoke-static {p0, v0}, Lcom/viber/voip/util/gw;->a(Landroid/content/Context;Z)V

    .line 290
    return v0
.end method

.method public onPeerVideoStartedAck()I
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public onPhoneStateChanged(I)V
    .locals 4
    .parameter

    .prologue
    .line 251
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneFragmentActivity;->c:Lcom/viber/voip/phone/call/a;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a;->c()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->i()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 254
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/phone/PhoneFragmentActivity;->c()V

    .line 257
    :cond_1
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->k()Lcom/viber/voip/a/g;

    move-result-object v1

    .line 258
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/phone/call/n;->o()I

    move-result v2

    .line 259
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->p()I

    move-result v0

    .line 261
    packed-switch p1, :pswitch_data_0

    .line 285
    :goto_0
    :pswitch_0
    return-void

    .line 264
    :pswitch_1
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    invoke-virtual {v1}, Lcom/viber/voip/a/g;->e()Lcom/viber/voip/a/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/c;)V

    goto :goto_0

    .line 267
    :pswitch_2
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    invoke-virtual {v1}, Lcom/viber/voip/a/g;->c()Lcom/viber/voip/a/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/c;)V

    goto :goto_0

    .line 270
    :pswitch_3
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    invoke-virtual {v1}, Lcom/viber/voip/a/g;->d()Lcom/viber/voip/a/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/c;)V

    goto :goto_0

    .line 273
    :pswitch_4
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 274
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    invoke-virtual {v1}, Lcom/viber/voip/a/g;->k()Lcom/viber/voip/a/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/c;)V

    goto :goto_0

    .line 275
    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 276
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    invoke-virtual {v1}, Lcom/viber/voip/a/g;->h()Lcom/viber/voip/a/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/c;)V

    goto :goto_0

    .line 278
    :cond_3
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    invoke-virtual {v1}, Lcom/viber/voip/a/g;->i()Lcom/viber/voip/a/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/c;)V

    goto :goto_0

    .line 282
    :pswitch_5
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    invoke-virtual {v1}, Lcom/viber/voip/a/g;->j()Lcom/viber/voip/a/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/c;)V

    goto :goto_0

    .line 261
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 133
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onResume()V

    .line 134
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneFragmentActivity;->d:Lcom/viber/jni/PhoneControllerListener;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getDialerLocalCallStateListener()Lcom/viber/jni/dialer/DialerLocalCallStateListener;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-virtual {v1}, Lcom/viber/voip/dk;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/viber/jni/dialer/DialerLocalCallStateListener;->registerDelegate(Ljava/lang/Object;Landroid/os/Handler;)Lcom/viber/jni/controller/ControllerListener;

    .line 135
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneFragmentActivity;->d:Lcom/viber/jni/PhoneControllerListener;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getDialerPhoneStateListener()Lcom/viber/jni/dialer/DialerPhoneStateListener;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-virtual {v1}, Lcom/viber/voip/dk;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/viber/jni/dialer/DialerPhoneStateListener;->registerDelegate(Ljava/lang/Object;Landroid/os/Handler;)Lcom/viber/jni/controller/ControllerListener;

    .line 136
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneFragmentActivity;->d:Lcom/viber/jni/PhoneControllerListener;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getDialerVideoListener()Lcom/viber/jni/dialer/DialerVideoListener;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-virtual {v1}, Lcom/viber/voip/dk;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/viber/jni/dialer/DialerVideoListener;->registerDelegate(Ljava/lang/Object;Landroid/os/Handler;)Lcom/viber/jni/controller/ControllerListener;

    .line 138
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneFragmentActivity;->c:Lcom/viber/voip/phone/call/a;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a;->b()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    .line 139
    iput-boolean v2, p0, Lcom/viber/voip/phone/PhoneFragmentActivity;->g:Z

    .line 140
    if-nez v0, :cond_0

    .line 141
    iget-boolean v0, p0, Lcom/viber/voip/phone/PhoneFragmentActivity;->h:Z

    if-eqz v0, :cond_1

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/phone/PhoneFragmentActivity;->h:Z

    .line 143
    invoke-direct {p0}, Lcom/viber/voip/phone/PhoneFragmentActivity;->c()V

    .line 148
    :cond_0
    :goto_0
    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/viber/voip/viberout/e;->b(Z)V

    .line 149
    return-void

    .line 145
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/phone/PhoneFragmentActivity;->finish()V

    goto :goto_0
.end method

.method protected onResumeFragments()V
    .locals 3

    .prologue
    .line 153
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onResumeFragments()V

    .line 154
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneFragmentActivity;->c:Lcom/viber/voip/phone/call/a;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a;->b()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    .line 155
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/viber/voip/phone/PhoneFragmentActivity;->g:Z

    .line 156
    if-eqz v0, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/viber/voip/phone/PhoneFragmentActivity;->d()V

    .line 158
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->b()Lcom/viber/voip/phone/call/l;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/phone/call/l;->a:Lcom/viber/voip/phone/call/l;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/n;->c()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 159
    const-string/jumbo v0, "incoming_call"

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/PhoneFragmentActivity;->a(Ljava/lang/String;)V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    invoke-direct {p0}, Lcom/viber/voip/phone/PhoneFragmentActivity;->c()V

    goto :goto_0

    .line 163
    :cond_2
    const-string/jumbo v0, "incall_call"

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/PhoneFragmentActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 124
    sget-object v0, Lcom/viber/voip/app/ViberActivity;->sLastUsedActivity:Landroid/app/Activity;

    .line 125
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onStart()V

    .line 126
    sput-object v0, Lcom/viber/voip/app/ViberActivity;->sLastUsedActivity:Landroid/app/Activity;

    .line 128
    invoke-static {}, Lcom/viber/voip/phone/i;->a()Lcom/viber/voip/phone/i;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/phone/i;->a(ZZ)V

    .line 129
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 191
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onStop()V

    .line 193
    invoke-static {}, Lcom/viber/voip/phone/i;->a()Lcom/viber/voip/phone/i;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/viber/voip/phone/i;->a(ZZ)V

    .line 194
    return-void
.end method
