.class public Lcom/viber/voip/rakuten/l;
.super Lcom/viber/jni/PhoneControllerDelegateAdapter;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/viber/voip/registration/df;

.field private c:Lcom/viber/voip/rakuten/r;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/viber/voip/rakuten/q;

.field private h:Lcom/viber/voip/rakuten/o;

.field private i:Lcom/viber/voip/rakuten/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/viber/voip/rakuten/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/rakuten/l;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/viber/jni/PhoneControllerDelegateAdapter;-><init>()V

    .line 71
    sget-object v0, Lcom/viber/voip/rakuten/r;->a:Lcom/viber/voip/rakuten/r;

    invoke-direct {p0, v0}, Lcom/viber/voip/rakuten/l;->a(Lcom/viber/voip/rakuten/r;)V

    .line 73
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    .line 74
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    .line 75
    invoke-virtual {v0, p0}, Lcom/viber/jni/PhoneControllerWrapper;->registerDelegate(Lcom/viber/jni/PhoneControllerDelegate;)V

    .line 86
    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/rakuten/m;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/viber/voip/rakuten/l;-><init>()V

    return-void
.end method

.method public static a()Lcom/viber/voip/rakuten/l;
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/viber/voip/rakuten/n;->a()Lcom/viber/voip/rakuten/l;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/rakuten/l;Lcom/viber/voip/rakuten/o;)Lcom/viber/voip/rakuten/o;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/viber/voip/rakuten/l;->h:Lcom/viber/voip/rakuten/o;

    return-object p1
.end method

.method static synthetic a(Lcom/viber/voip/rakuten/l;Lcom/viber/voip/rakuten/p;)Lcom/viber/voip/rakuten/p;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/viber/voip/rakuten/l;->i:Lcom/viber/voip/rakuten/p;

    return-object p1
.end method

.method static synthetic a(Lcom/viber/voip/rakuten/l;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/viber/voip/rakuten/l;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/rakuten/l;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/viber/voip/rakuten/l;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/viber/voip/rakuten/l;Lcom/viber/voip/rakuten/r;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/viber/voip/rakuten/l;->a(Lcom/viber/voip/rakuten/r;)V

    return-void
.end method

.method private a(Lcom/viber/voip/rakuten/r;)V
    .locals 2
    .parameter

    .prologue
    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "switchState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->c(Ljava/lang/String;)V

    .line 272
    iput-object p1, p0, Lcom/viber/voip/rakuten/l;->c:Lcom/viber/voip/rakuten/r;

    .line 273
    invoke-direct {p0}, Lcom/viber/voip/rakuten/l;->o()V

    .line 274
    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/viber/voip/rakuten/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic b(Lcom/viber/voip/rakuten/l;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/viber/voip/rakuten/l;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-static {p0}, Lcom/viber/voip/rakuten/l;->c(Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 448
    return-void
.end method

.method static synthetic c(Lcom/viber/voip/rakuten/l;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/viber/voip/rakuten/l;->d:Ljava/lang/String;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 445
    return-void
.end method

.method private c(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 213
    iget-object v0, p0, Lcom/viber/voip/rakuten/l;->b:Lcom/viber/voip/registration/df;

    if-eqz v0, :cond_2

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processActivationResult, url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/rakuten/l;->b:Lcom/viber/voip/registration/df;

    iget-object v1, v1, Lcom/viber/voip/registration/df;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->c(Ljava/lang/String;)V

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processActivationResult, rToken:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/rakuten/l;->b:Lcom/viber/voip/registration/df;

    iget-object v1, v1, Lcom/viber/voip/registration/df;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->c(Ljava/lang/String;)V

    .line 216
    sget-object v0, Lcom/viber/voip/rakuten/m;->a:[I

    iget-object v1, p0, Lcom/viber/voip/rakuten/l;->c:Lcom/viber/voip/rakuten/r;

    invoke-virtual {v1}, Lcom/viber/voip/rakuten/r;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processActivationResult unexpected state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/rakuten/l;->c:Lcom/viber/voip/rakuten/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->c(Ljava/lang/String;)V

    .line 232
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 235
    :goto_1
    return v0

    .line 218
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/rakuten/l;->b:Lcom/viber/voip/registration/df;

    iget-object v0, v0, Lcom/viber/voip/registration/df;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/viber/voip/rakuten/l;->b:Lcom/viber/voip/registration/df;

    iget-object v0, v0, Lcom/viber/voip/registration/df;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/viber/voip/rakuten/l;->a(Ljava/lang/String;)V

    .line 221
    iput-object v3, p0, Lcom/viber/voip/rakuten/l;->b:Lcom/viber/voip/registration/df;

    goto :goto_0

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/rakuten/l;->b:Lcom/viber/voip/registration/df;

    iget-object v0, v0, Lcom/viber/voip/registration/df;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 224
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/viber/voip/rakuten/l;->b:Lcom/viber/voip/registration/df;

    iget-object v2, v2, Lcom/viber/voip/registration/df;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 225
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 226
    iput-object v3, p0, Lcom/viber/voip/rakuten/l;->b:Lcom/viber/voip/registration/df;

    goto :goto_0

    .line 234
    :cond_2
    const-string/jumbo v0, "processActivationResult: no activation response"

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->c(Ljava/lang/String;)V

    .line 235
    const/4 v0, 0x0

    goto :goto_1

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic d(Lcom/viber/voip/rakuten/l;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/viber/voip/rakuten/l;->p()V

    return-void
.end method

.method private static n()Z
    .locals 3

    .prologue
    .line 277
    invoke-static {}, Lcom/viber/voip/registration/dj;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 278
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkPreconditions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/rakuten/l;->c(Ljava/lang/String;)V

    .line 279
    return v0

    .line 277
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private o()V
    .locals 3

    .prologue
    .line 283
    iget-object v0, p0, Lcom/viber/voip/rakuten/l;->g:Lcom/viber/voip/rakuten/q;

    if-eqz v0, :cond_0

    .line 284
    sget-object v0, Lcom/viber/voip/rakuten/m;->a:[I

    iget-object v1, p0, Lcom/viber/voip/rakuten/l;->c:Lcom/viber/voip/rakuten/r;

    invoke-virtual {v1}, Lcom/viber/voip/rakuten/r;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 286
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/rakuten/l;->g:Lcom/viber/voip/rakuten/q;

    invoke-interface {v0}, Lcom/viber/voip/rakuten/q;->d()V

    goto :goto_0

    .line 290
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/rakuten/l;->g:Lcom/viber/voip/rakuten/q;

    invoke-interface {v0}, Lcom/viber/voip/rakuten/q;->a()V

    goto :goto_0

    .line 293
    :pswitch_2
    iget-object v0, p0, Lcom/viber/voip/rakuten/l;->g:Lcom/viber/voip/rakuten/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/rakuten/l;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/rakuten/l;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/rakuten/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 296
    :pswitch_3
    iget-object v0, p0, Lcom/viber/voip/rakuten/l;->g:Lcom/viber/voip/rakuten/q;

    invoke-interface {v0}, Lcom/viber/voip/rakuten/q;->b()V

    goto :goto_0

    .line 299
    :pswitch_4
    iget-object v0, p0, Lcom/viber/voip/rakuten/l;->g:Lcom/viber/voip/rakuten/q;

    invoke-interface {v0}, Lcom/viber/voip/rakuten/q;->c()V

    goto :goto_0

    .line 284
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private p()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 307
    iput-object v0, p0, Lcom/viber/voip/rakuten/l;->d:Ljava/lang/String;

    .line 308
    iput-object v0, p0, Lcom/viber/voip/rakuten/l;->e:Ljava/lang/String;

    .line 309
    iput-object v0, p0, Lcom/viber/voip/rakuten/l;->f:Ljava/lang/String;

    .line 310
    return-void
.end method

.method private q()V
    .locals 2

    .prologue
    .line 317
    sget-object v0, Lcom/viber/voip/rakuten/r;->b:Lcom/viber/voip/rakuten/r;

    invoke-direct {p0, v0}, Lcom/viber/voip/rakuten/l;->a(Lcom/viber/voip/rakuten/r;)V

    .line 318
    new-instance v0, Lcom/viber/voip/rakuten/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/rakuten/o;-><init>(Lcom/viber/voip/rakuten/l;Lcom/viber/voip/rakuten/m;)V

    iput-object v0, p0, Lcom/viber/voip/rakuten/l;->h:Lcom/viber/voip/rakuten/o;

    .line 319
    iget-object v0, p0, Lcom/viber/voip/rakuten/l;->h:Lcom/viber/voip/rakuten/o;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/viber/voip/rakuten/o;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 320
    return-void
.end method

.method private r()V
    .locals 2

    .prologue
    .line 323
    sget-object v0, Lcom/viber/voip/rakuten/r;->b:Lcom/viber/voip/rakuten/r;

    invoke-direct {p0, v0}, Lcom/viber/voip/rakuten/l;->a(Lcom/viber/voip/rakuten/r;)V

    .line 324
    new-instance v0, Lcom/viber/voip/rakuten/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/rakuten/p;-><init>(Lcom/viber/voip/rakuten/l;Lcom/viber/voip/rakuten/m;)V

    iput-object v0, p0, Lcom/viber/voip/rakuten/l;->i:Lcom/viber/voip/rakuten/p;

    .line 325
    iget-object v0, p0, Lcom/viber/voip/rakuten/l;->i:Lcom/viber/voip/rakuten/p;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/viber/voip/rakuten/p;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 326
    return-void
.end method

.method private s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getHardwareParameters()Lcom/viber/voip/registration/HardwareParameters;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/registration/HardwareParameters;->getUdid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleActivationScreen activity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->c(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/viber/voip/rakuten/l;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-direct {p0, p1}, Lcom/viber/voip/rakuten/l;->c(Landroid/content/Context;)Z

    .line 121
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 124
    const-string/jumbo v0, "handleHomeActivityOpened()"

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->c(Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/viber/voip/rakuten/l;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/viber/voip/rakuten/l;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/rakuten/l;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 127
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 128
    iget-object v0, p0, Lcom/viber/voip/rakuten/l;->c:Lcom/viber/voip/rakuten/r;

    sget-object v1, Lcom/viber/voip/rakuten/r;->a:Lcom/viber/voip/rakuten/r;

    if-ne v0, v1, :cond_1

    .line 129
    invoke-direct {p0}, Lcom/viber/voip/rakuten/l;->q()V

    .line 131
    :cond_1
    const-string/jumbo v0, "handleHomeActivityOpened() launching RakutenRegistrationActivity"

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->c(Ljava/lang/String;)V

    .line 132
    invoke-static {p1}, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->a(Landroid/content/Context;)V

    .line 142
    :cond_2
    :goto_0
    return-void

    .line 134
    :cond_3
    const-string/jumbo v0, "handleHomeActivityOpened() not activated yet"

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_4
    invoke-direct {p0, p1}, Lcom/viber/voip/rakuten/l;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 137
    const-string/jumbo v0, "handleHomeActivityOpened() activation result processed"

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_5
    const-string/jumbo v0, "handleHomeActivityOpened() no rtoken referral or activation result"

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/viber/voip/rakuten/l;->l()Ljava/lang/String;

    move-result-object v1

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v2

    iget-object v2, v2, Lcom/viber/voip/bd;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "?s="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/rakuten/l;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "&t="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "openRakutenAccount() url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/rakuten/l;->c(Ljava/lang/String;)V

    .line 175
    invoke-static {p1, v0}, Lcom/viber/voip/util/gy;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleRakutenSchemeUri() token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", referral="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->c(Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lcom/viber/voip/rakuten/l;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Lcom/viber/voip/rakuten/RakutenUrlSchemeData;

    invoke-direct {v0, p2, p3}, Lcom/viber/voip/rakuten/RakutenUrlSchemeData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    sget-object v1, Lcom/viber/voip/rakuten/m;->a:[I

    iget-object v2, p0, Lcom/viber/voip/rakuten/l;->c:Lcom/viber/voip/rakuten/r;

    invoke-virtual {v2}, Lcom/viber/voip/rakuten/r;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleRakutenSchemeUri() unexpected state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/rakuten/l;->c:Lcom/viber/voip/rakuten/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->c(Ljava/lang/String;)V

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 197
    :pswitch_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    iget-object v1, v0, Lcom/viber/voip/rakuten/RakutenUrlSchemeData;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/viber/voip/rakuten/l;->d:Ljava/lang/String;

    .line 199
    iget-object v0, v0, Lcom/viber/voip/rakuten/RakutenUrlSchemeData;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/viber/voip/rakuten/l;->e:Ljava/lang/String;

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleRakutenSchemeUri, referral:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/rakuten/l;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->c(Ljava/lang/String;)V

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleRakutenSchemeUri, rToken:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/rakuten/l;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_1
    const-string/jumbo v0, "handleRakutenSchemeUri, not activated, ignoring"

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/viber/voip/rakuten/q;)V
    .locals 1
    .parameter

    .prologue
    .line 89
    const-string/jumbo v0, "registerUiCallbacks"

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->c(Ljava/lang/String;)V

    .line 90
    iput-object p1, p0, Lcom/viber/voip/rakuten/l;->g:Lcom/viber/voip/rakuten/q;

    .line 91
    invoke-direct {p0}, Lcom/viber/voip/rakuten/l;->o()V

    .line 92
    return-void
.end method

.method public a(Lcom/viber/voip/registration/df;)V
    .locals 2
    .parameter

    .prologue
    .line 103
    invoke-static {}, Lcom/viber/voip/rakuten/l;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    if-eqz p1, :cond_2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleActivateUserResponse, url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/viber/voip/registration/df;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->c(Ljava/lang/String;)V

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleActivateUserResponse, rToken:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/viber/voip/registration/df;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->c(Ljava/lang/String;)V

    .line 107
    iget-object v0, p1, Lcom/viber/voip/registration/df;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/viber/voip/registration/df;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 108
    :cond_0
    iput-object p1, p0, Lcom/viber/voip/rakuten/l;->b:Lcom/viber/voip/registration/df;

    .line 114
    :cond_1
    :goto_0
    return-void

    .line 111
    :cond_2
    const-string/jumbo v0, "handleActivateUserResponse, result = null"

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 432
    sget-object v0, Lcom/viber/voip/registration/dl;->f:Lcom/viber/voip/registration/dl;

    invoke-static {v0, p1}, Lcom/viber/voip/registration/bk;->a(Lcom/viber/voip/registration/dl;Ljava/lang/String;)V

    .line 433
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 157
    const-string/jumbo v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/rakuten/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public b(Lcom/viber/voip/rakuten/q;)V
    .locals 1
    .parameter

    .prologue
    .line 95
    const-string/jumbo v0, "unregisterUiCallbacks"

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->c(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/viber/voip/rakuten/l;->g:Lcom/viber/voip/rakuten/q;

    if-ne v0, p1, :cond_0

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/rakuten/l;->g:Lcom/viber/voip/rakuten/q;

    .line 99
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 4

    .prologue
    .line 145
    invoke-static {}, Lcom/viber/voip/rakuten/l;->n()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 149
    :goto_0
    return v0

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/rakuten/l;->l()Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-static {}, Lcom/viber/voip/registration/dj;->c()Z

    move-result v0

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isRakutenAccountVisible rToken:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", isJapanese:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/rakuten/l;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/viber/voip/rakuten/l;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 181
    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/bd;->i:Ljava/lang/String;

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reconnect() url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/rakuten/l;->c(Ljava/lang/String;)V

    .line 183
    const-string/jumbo v1, ""

    invoke-virtual {p0, v1}, Lcom/viber/voip/rakuten/l;->a(Ljava/lang/String;)V

    .line 184
    invoke-direct {p0}, Lcom/viber/voip/rakuten/l;->p()V

    .line 185
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 186
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 187
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->startActivity(Landroid/content/Intent;)V

    .line 188
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 240
    const-string/jumbo v0, "handleConfirmationOk"

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->c(Ljava/lang/String;)V

    .line 241
    invoke-direct {p0}, Lcom/viber/voip/rakuten/l;->r()V

    .line 242
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 245
    const-string/jumbo v0, "handleConfirmationCancel"

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->c(Ljava/lang/String;)V

    .line 246
    sget-object v0, Lcom/viber/voip/rakuten/r;->a:Lcom/viber/voip/rakuten/r;

    invoke-direct {p0, v0}, Lcom/viber/voip/rakuten/l;->a(Lcom/viber/voip/rakuten/r;)V

    .line 247
    invoke-direct {p0}, Lcom/viber/voip/rakuten/l;->p()V

    .line 248
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 252
    const-string/jumbo v0, "handleRegistrationSuccessOk"

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->c(Ljava/lang/String;)V

    .line 253
    sget-object v0, Lcom/viber/voip/rakuten/r;->a:Lcom/viber/voip/rakuten/r;

    invoke-direct {p0, v0}, Lcom/viber/voip/rakuten/l;->a(Lcom/viber/voip/rakuten/r;)V

    .line 254
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 256
    const-string/jumbo v0, "handleRegistrationSuccessCancel"

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->c(Ljava/lang/String;)V

    .line 257
    sget-object v0, Lcom/viber/voip/rakuten/r;->a:Lcom/viber/voip/rakuten/r;

    invoke-direct {p0, v0}, Lcom/viber/voip/rakuten/l;->a(Lcom/viber/voip/rakuten/r;)V

    .line 258
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 261
    const-string/jumbo v0, "handleRegistrationFailureOk"

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->c(Ljava/lang/String;)V

    .line 262
    sget-object v0, Lcom/viber/voip/rakuten/r;->a:Lcom/viber/voip/rakuten/r;

    invoke-direct {p0, v0}, Lcom/viber/voip/rakuten/l;->a(Lcom/viber/voip/rakuten/r;)V

    .line 263
    return-void
.end method

.method j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    invoke-static {}, Lcom/viber/voip/billing/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    sget-object v0, Lcom/viber/voip/registration/dl;->g:Lcom/viber/voip/registration/dl;

    invoke-static {v0}, Lcom/viber/voip/registration/bk;->a(Lcom/viber/voip/registration/dl;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    sget-object v0, Lcom/viber/voip/registration/dl;->f:Lcom/viber/voip/registration/dl;

    invoke-static {v0}, Lcom/viber/voip/registration/bk;->a(Lcom/viber/voip/registration/dl;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()V
    .locals 0

    .prologue
    .line 441
    return-void
.end method

.method public onEncryptedPhoneNumber(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onEncryptedPhoneNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->c(Ljava/lang/String;)V

    .line 416
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    sget-object v0, Lcom/viber/voip/registration/dl;->g:Lcom/viber/voip/registration/dl;

    invoke-static {v0, p1}, Lcom/viber/voip/registration/bk;->a(Lcom/viber/voip/registration/dl;Ljava/lang/String;)V

    .line 421
    :cond_0
    return-void
.end method
