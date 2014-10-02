.class public Lcom/viber/voip/api/ViberUrlHandlerActivity;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/api/aa;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string/jumbo v0, "(?i)http://viber.com/client/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/api/ViberUrlHandlerActivity;->a:Ljava/util/regex/Pattern;

    .line 62
    const-string/jumbo v0, "(?i)viber://"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/api/ViberUrlHandlerActivity;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    .line 74
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/api/ViberUrlHandlerActivity;->d:Z

    .line 55
    return-void
.end method

.method static synthetic a()Lcom/viber/voip/registration/ActivationController;
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->e()Lcom/viber/voip/registration/ActivationController;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 5
    .parameter

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 99
    if-nez v1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->finish()V

    .line 166
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 104
    const-string/jumbo v0, ""

    .line 105
    const-string/jumbo v3, "http"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 106
    sget-object v0, Lcom/viber/voip/api/ViberUrlHandlerActivity;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v0

    .line 110
    :cond_1
    :goto_1
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 112
    iget-object v2, p0, Lcom/viber/voip/api/ViberUrlHandlerActivity;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 113
    new-instance v3, Lcom/viber/voip/api/c;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/viber/voip/api/c;-><init>(Lcom/viber/voip/api/ViberUrlHandlerActivity;Ljava/util/Iterator;[Ljava/lang/String;Landroid/net/Uri;)V

    .line 149
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 151
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.viber.voip.action.VIBER_SERVICE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/viber/voip/ViberApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 152
    new-instance v1, Lcom/viber/voip/api/d;

    invoke-direct {v1, p0, v3}, Lcom/viber/voip/api/d;-><init>(Lcom/viber/voip/api/ViberUrlHandlerActivity;Lcom/viber/voip/api/y;)V

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->addInitializedListener(Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;)V

    goto :goto_0

    .line 107
    :cond_2
    const-string/jumbo v3, "viber"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    sget-object v0, Lcom/viber/voip/api/ViberUrlHandlerActivity;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 159
    :cond_3
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {v3, v0, v1}, Lcom/viber/voip/api/y;->a(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/api/ViberUrlHandlerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->d()V

    return-void
.end method

.method private static a(Lcom/viber/voip/api/z;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 711
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    .line 712
    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDelegatesManager()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/jni/PhoneControllerListener;->getConnectionListener()Lcom/viber/jni/connection/ConnectionListener;

    move-result-object v1

    .line 713
    new-instance v2, Lcom/viber/voip/api/l;

    invoke-direct {v2, v0, v1, p0}, Lcom/viber/voip/api/l;-><init>(Lcom/viber/jni/PhoneControllerWrapper;Lcom/viber/jni/connection/ConnectionListener;Lcom/viber/voip/api/z;)V

    .line 733
    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 734
    invoke-interface {p0, v0}, Lcom/viber/voip/api/z;->a(Lcom/viber/jni/PhoneControllerWrapper;)V

    .line 739
    :goto_0
    return-void

    .line 736
    :cond_0
    invoke-static {}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->f()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 737
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/viber/jni/connection/ConnectionDelegate;

    aput-object v2, v0, v5

    invoke-virtual {v1, v0}, Lcom/viber/jni/connection/ConnectionListener;->registerDelegate([Ljava/lang/Object;)Lcom/viber/jni/controller/ControllerListener;

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;Lcom/viber/voip/api/w;Lcom/viber/voip/api/y;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-static {p0, p1, p2}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->b(Ljava/lang/String;Lcom/viber/voip/api/w;Lcom/viber/voip/api/y;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Lcom/viber/voip/api/x;Lcom/viber/voip/api/y;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-static {p0, p1, p2}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->b(Ljava/lang/String;Lcom/viber/voip/api/x;Lcom/viber/voip/api/y;)V

    return-void
.end method

.method public static a(Landroid/net/Uri;)Z
    .locals 2
    .parameter

    .prologue
    .line 225
    if-eqz p0, :cond_0

    const-string/jumbo v0, "viber"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->f()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/viber/voip/api/ViberUrlHandlerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->c()V

    return-void
.end method

.method private static b(Ljava/lang/String;Lcom/viber/voip/api/w;Lcom/viber/voip/api/y;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 678
    new-instance v0, Lcom/viber/voip/api/j;

    invoke-direct {v0, p1, p0, p2}, Lcom/viber/voip/api/j;-><init>(Lcom/viber/voip/api/w;Ljava/lang/String;Lcom/viber/voip/api/y;)V

    invoke-static {v0}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->a(Lcom/viber/voip/api/z;)V

    .line 703
    return-void
.end method

.method private static b(Ljava/lang/String;Lcom/viber/voip/api/x;Lcom/viber/voip/api/y;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 655
    new-instance v0, Lcom/viber/voip/api/h;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/voip/api/h;-><init>(Ljava/lang/String;Lcom/viber/voip/api/x;Lcom/viber/voip/api/y;)V

    invoke-static {v0}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->a(Lcom/viber/voip/api/z;)V

    .line 671
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    :goto_0
    return-void

    .line 174
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 175
    const v1, 0x7f0c06ee

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 189
    const v1, 0x7f0c06ef

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 190
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 191
    const v1, 0x7f0c02b5

    new-instance v2, Lcom/viber/voip/api/f;

    invoke-direct {v2, p0}, Lcom/viber/voip/api/f;-><init>(Lcom/viber/voip/api/ViberUrlHandlerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 203
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/viber/voip/api/ViberUrlHandlerActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/viber/voip/api/ViberUrlHandlerActivity;->d:Z

    return v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    :goto_0
    return-void

    .line 211
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 212
    const v1, 0x7f0c037f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 213
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 214
    const v1, 0x7f0c02b5

    new-instance v2, Lcom/viber/voip/api/g;

    invoke-direct {v2, p0}, Lcom/viber/voip/api/g;-><init>(Lcom/viber/voip/api/ViberUrlHandlerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 220
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private static e()Lcom/viber/voip/registration/ActivationController;
    .locals 1

    .prologue
    .line 229
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getActivationController()Lcom/viber/voip/registration/ActivationController;

    move-result-object v0

    return-object v0
.end method

.method private static f()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 746
    sget-object v0, Lcom/viber/voip/dk;->g:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/api/ViberUrlHandlerActivity;->c:Ljava/util/List;

    .line 81
    iget-object v0, p0, Lcom/viber/voip/api/ViberUrlHandlerActivity;->c:Ljava/util/List;

    new-instance v1, Lcom/viber/voip/api/m;

    invoke-direct {v1}, Lcom/viber/voip/api/m;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/viber/voip/api/ViberUrlHandlerActivity;->c:Ljava/util/List;

    new-instance v1, Lcom/viber/voip/api/q;

    invoke-direct {v1}, Lcom/viber/voip/api/q;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/viber/voip/api/ViberUrlHandlerActivity;->c:Ljava/util/List;

    new-instance v1, Lcom/viber/voip/api/o;

    invoke-direct {v1, p0}, Lcom/viber/voip/api/o;-><init>(Lcom/viber/voip/api/ViberUrlHandlerActivity;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/viber/voip/api/ViberUrlHandlerActivity;->c:Ljava/util/List;

    new-instance v1, Lcom/viber/voip/api/t;

    invoke-direct {v1, p0}, Lcom/viber/voip/api/t;-><init>(Lcom/viber/voip/api/ViberUrlHandlerActivity;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {p0}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 87
    invoke-direct {p0, v0}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->a(Landroid/content/Intent;)V

    .line 88
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 94
    invoke-direct {p0, p1}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->a(Landroid/content/Intent;)V

    .line 95
    return-void
.end method
