.class public Lcom/viber/voip/registration/b;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field private static i:Landroid/os/Handler;

.field private static final m:Ljava/lang/String;


# instance fields
.field final b:Lcom/viber/voip/registration/p;

.field private c:Landroid/content/Context;

.field private d:Lcom/viber/voip/registration/o;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/Runnable;

.field private j:Lcom/viber/voip/util/fr;

.field private k:Landroid/telephony/TelephonyManager;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const-string/jumbo v0, "(\\d{2})(\\d)(\\d)(\\d)(\\d)(\\d{4})(\\d)(\\d)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/registration/b;->a:Ljava/util/regex/Pattern;

    .line 95
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ActivationCallReceiver"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 97
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/viber/voip/registration/b;->i:Landroid/os/Handler;

    .line 257
    const-class v0, Lcom/viber/voip/registration/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/registration/b;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/registration/o;Landroid/content/Context;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 37
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/viber/voip/registration/b;->e:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/viber/voip/registration/b;->f:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/registration/b;->g:Ljava/util/HashSet;

    .line 41
    new-instance v0, Lcom/viber/voip/registration/c;

    invoke-direct {v0, p0}, Lcom/viber/voip/registration/c;-><init>(Lcom/viber/voip/registration/b;)V

    iput-object v0, p0, Lcom/viber/voip/registration/b;->h:Ljava/lang/Runnable;

    .line 65
    new-instance v0, Lcom/viber/voip/registration/d;

    invoke-direct {v0, p0}, Lcom/viber/voip/registration/d;-><init>(Lcom/viber/voip/registration/b;)V

    iput-object v0, p0, Lcom/viber/voip/registration/b;->b:Lcom/viber/voip/registration/p;

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/registration/b;->l:Z

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Constructor listener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/registration/b;->c(Ljava/lang/String;)V

    .line 102
    iput-object p2, p0, Lcom/viber/voip/registration/b;->c:Landroid/content/Context;

    .line 103
    iput-object p1, p0, Lcom/viber/voip/registration/b;->d:Lcom/viber/voip/registration/o;

    .line 105
    iget-object v0, p0, Lcom/viber/voip/registration/b;->c:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/viber/voip/registration/b;->k:Landroid/telephony/TelephonyManager;

    .line 106
    new-instance v0, Lcom/viber/voip/util/fr;

    sget-object v1, Lcom/viber/voip/registration/b;->i:Landroid/os/Handler;

    iget-object v2, p0, Lcom/viber/voip/registration/b;->h:Ljava/lang/Runnable;

    const-wide/16 v3, 0xc8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/viber/voip/util/fr;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    iput-object v0, p0, Lcom/viber/voip/registration/b;->j:Lcom/viber/voip/util/fr;

    .line 108
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getActivationController()Lcom/viber/voip/registration/ActivationController;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/registration/b;->b:Lcom/viber/voip/registration/p;

    invoke-virtual {v0, v1}, Lcom/viber/voip/registration/ActivationController;->registerActivationStateListener(Lcom/viber/voip/registration/p;)V

    .line 109
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-static {p0}, Lcom/viber/voip/registration/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/registration/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/viber/voip/registration/b;->l:Z

    return v0
.end method

.method static synthetic b(Lcom/viber/voip/registration/b;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/viber/voip/registration/b;->d()V

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkForTzintuk incomingNumberRaw:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/registration/b;->c(Ljava/lang/String;)V

    .line 141
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return v1

    .line 143
    :cond_1
    const-string/jumbo v0, "[^0-9]"

    const-string/jumbo v3, ""

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkForTzintuk the number to be checked:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/registration/b;->c(Ljava/lang/String;)V

    .line 147
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0xc

    if-lt v0, v4, :cond_0

    .line 149
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/viber/voip/registration/b;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v4}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 153
    sget-object v4, Lcom/viber/voip/registration/b;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 154
    :cond_2
    :goto_1
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    if-ne v0, v8, :cond_2

    .line 156
    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 158
    iget-object v0, p0, Lcom/viber/voip/registration/b;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0e0025

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    move v0, v1

    .line 160
    :goto_2
    array-length v7, v6

    if-ge v0, v7, :cond_2

    .line 161
    aget-object v7, v6, v0

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 163
    invoke-virtual {v5, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    .line 164
    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v0, v5

    .line 165
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v0, v5

    .line 166
    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v0, v5

    .line 167
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v0, v5

    .line 168
    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v0, v5

    .line 169
    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v0, v5

    .line 170
    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v0, v5

    .line 172
    const/16 v5, 0x26

    if-ne v0, v5, :cond_3

    .line 173
    const/4 v0, 0x6

    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/registration/b;->e:Ljava/lang/String;

    .line 174
    iput-object v3, p0, Lcom/viber/voip/registration/b;->f:Ljava/lang/String;

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "checkForTzintuk incomingNumberRaw:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " is Tzintuk code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/registration/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/registration/b;->c(Ljava/lang/String;)V

    move v1, v2

    .line 176
    goto/16 :goto_0

    .line 178
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkForTzintuk INVALID NUMBER:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/registration/b;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 160
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2
.end method

.method static synthetic c(Lcom/viber/voip/registration/b;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/viber/voip/registration/b;->f()V

    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 262
    return-void
.end method

.method static synthetic d(Lcom/viber/voip/registration/b;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/viber/voip/registration/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 227
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/viber/voip/registration/RegistrationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    const/high16 v1, 0x3002

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 231
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 232
    return-void
.end method

.method static synthetic e(Lcom/viber/voip/registration/b;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/viber/voip/registration/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 244
    const-string/jumbo v0, "startFocusCapture"

    invoke-static {v0}, Lcom/viber/voip/registration/b;->c(Ljava/lang/String;)V

    .line 245
    iput-boolean v2, p0, Lcom/viber/voip/registration/b;->l:Z

    .line 246
    iget-object v0, p0, Lcom/viber/voip/registration/b;->j:Lcom/viber/voip/util/fr;

    invoke-virtual {v0}, Lcom/viber/voip/util/fr;->a()V

    .line 247
    iget-object v0, p0, Lcom/viber/voip/registration/b;->c:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 248
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 251
    const-string/jumbo v0, "stopFocusCapture"

    invoke-static {v0}, Lcom/viber/voip/registration/b;->c(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/viber/voip/registration/b;->c:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 253
    iput-boolean v2, p0, Lcom/viber/voip/registration/b;->l:Z

    .line 254
    iget-object v0, p0, Lcom/viber/voip/registration/b;->j:Lcom/viber/voip/util/fr;

    invoke-virtual {v0}, Lcom/viber/voip/util/fr;->b()V

    .line 255
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 112
    const-string/jumbo v0, "register()"

    invoke-static {v0}, Lcom/viber/voip/registration/b;->c(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/viber/voip/registration/b;->k:Landroid/telephony/TelephonyManager;

    const/16 v1, 0x21

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 117
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 120
    const-string/jumbo v0, "unregister()"

    invoke-static {v0}, Lcom/viber/voip/registration/b;->c(Ljava/lang/String;)V

    .line 122
    invoke-direct {p0}, Lcom/viber/voip/registration/b;->f()V

    .line 123
    iget-object v0, p0, Lcom/viber/voip/registration/b;->k:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 124
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getActivationController()Lcom/viber/voip/registration/ActivationController;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/registration/b;->b:Lcom/viber/voip/registration/p;

    invoke-virtual {v0, v1}, Lcom/viber/voip/registration/ActivationController;->unregisterActivationStateListener(Lcom/viber/voip/registration/p;)V

    .line 125
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/viber/voip/registration/b;->l:Z

    if-eqz v0, :cond_0

    .line 239
    invoke-direct {p0}, Lcom/viber/voip/registration/b;->d()V

    .line 241
    :cond_0
    return-void
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCallStateChanged state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " incomingNumber:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/registration/b;->c(Ljava/lang/String;)V

    .line 192
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getActivationController()Lcom/viber/voip/registration/ActivationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/registration/ActivationController;->getStep()I

    move-result v0

    .line 193
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 208
    :pswitch_0
    const-string/jumbo v0, "onCallStateChanged CALL_STATE_IDLE"

    invoke-static {v0}, Lcom/viber/voip/registration/b;->c(Ljava/lang/String;)V

    .line 209
    iget-boolean v0, p0, Lcom/viber/voip/registration/b;->l:Z

    if-eqz v0, :cond_0

    .line 211
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/registration/b;->g:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/viber/voip/registration/b;->g:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 213
    iget-object v0, p0, Lcom/viber/voip/registration/b;->g:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    :cond_2
    invoke-direct {p0}, Lcom/viber/voip/registration/b;->f()V

    .line 216
    iget-object v0, p0, Lcom/viber/voip/registration/b;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/viber/voip/registration/b;->d:Lcom/viber/voip/registration/o;

    iget-object v1, p0, Lcom/viber/voip/registration/b;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/viber/voip/registration/o;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :pswitch_1
    const-string/jumbo v0, "onCallStateChanged CALL_STATE_RINGING"

    invoke-static {v0}, Lcom/viber/voip/registration/b;->c(Ljava/lang/String;)V

    .line 198
    invoke-direct {p0}, Lcom/viber/voip/registration/b;->e()V

    .line 199
    invoke-direct {p0, p2}, Lcom/viber/voip/registration/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 201
    invoke-direct {p0}, Lcom/viber/voip/registration/b;->f()V

    goto :goto_0

    .line 203
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/registration/b;->g:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/viber/voip/registration/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
