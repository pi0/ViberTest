.class public Lcom/viber/voip/market/bk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/viber/voip/market/bm;

.field private c:Lcom/viber/voip/process/i;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/viber/voip/market/MarketApi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/market/bk;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean p2, p0, Lcom/viber/voip/market/bk;->d:Z

    .line 49
    new-instance v0, Lcom/viber/voip/market/bl;

    invoke-direct {v0, p0}, Lcom/viber/voip/market/bl;-><init>(Lcom/viber/voip/market/bk;)V

    iput-object v0, p0, Lcom/viber/voip/market/bk;->c:Lcom/viber/voip/process/i;

    .line 82
    invoke-static {}, Lcom/viber/voip/process/e;->a()Lcom/viber/voip/process/e;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/market/bk;->c:Lcom/viber/voip/process/i;

    invoke-virtual {v0, v1}, Lcom/viber/voip/process/e;->a(Lcom/viber/voip/process/i;)V

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/market/bk;)Lcom/viber/voip/market/bm;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/viber/voip/market/bk;->b:Lcom/viber/voip/market/bm;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-static {p0}, Lcom/viber/voip/market/bk;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 130
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 132
    :try_start_0
    const-string/jumbo v0, "version"

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    const-string/jumbo v0, "system"

    invoke-static {}, Lcom/viber/jni/ClientMessages$DeviceTypes;->getDeviceId()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 134
    const-string/jumbo v0, "language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    const-string/jumbo v0, "country"

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/registration/cp;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    const-string/jumbo v0, "mcc"

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getHardwareParameters()Lcom/viber/voip/registration/HardwareParameters;

    move-result-object v2

    invoke-interface {v2}, Lcom/viber/voip/registration/HardwareParameters;->getMCC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    const-string/jumbo v0, "mnc"

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getHardwareParameters()Lcom/viber/voip/registration/HardwareParameters;

    move-result-object v2

    invoke-interface {v2}, Lcom/viber/voip/registration/HardwareParameters;->getMNC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    const-string/jumbo v0, "phone_prefix"

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/registration/cp;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    const-string/jumbo v0, "visit_count"

    invoke-direct {p0}, Lcom/viber/voip/market/bk;->c()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-object v1

    .line 140
    :catch_0
    move-exception v0

    .line 141
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 161
    sget-object v0, Lcom/viber/voip/market/bk;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/viber/voip/billing/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method private c()I
    .locals 4

    .prologue
    const/16 v1, 0x3e8

    .line 147
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v2, "PREF_MARKET_VISIT_COUNT"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v0

    .line 148
    if-ge v0, v1, :cond_1

    .line 149
    iget-boolean v1, p0, Lcom/viber/voip/market/bk;->d:Z

    if-eqz v1, :cond_0

    .line 150
    add-int/lit8 v0, v0, 0x1

    .line 151
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    const-string/jumbo v2, "PREF_MARKET_VISIT_COUNT"

    invoke-interface {v1, v2, v0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 157
    :cond_0
    :goto_0
    return v0

    .line 153
    :cond_1
    if-le v0, v1, :cond_0

    .line 155
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v2, "PREF_MARKET_VISIT_COUNT"

    invoke-interface {v0, v2, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 86
    invoke-static {}, Lcom/viber/voip/process/e;->a()Lcom/viber/voip/process/e;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/market/bk;->c:Lcom/viber/voip/process/i;

    invoke-virtual {v0, v1}, Lcom/viber/voip/process/e;->b(Lcom/viber/voip/process/i;)V

    .line 87
    return-void
.end method

.method public a(Lcom/viber/voip/billing/bn;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 107
    new-instance v0, Lcom/viber/voip/market/a/l;

    invoke-direct {v0}, Lcom/viber/voip/market/a/l;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/market/a/l;->a(Lcom/viber/voip/billing/bn;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public a(Lcom/viber/voip/billing/bt;Lcom/viber/voip/market/w;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 99
    new-instance v0, Lcom/viber/voip/market/a/g;

    invoke-direct {v0}, Lcom/viber/voip/market/a/g;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/market/a/g;->a(Lcom/viber/voip/billing/bt;Lcom/viber/voip/market/w;)V

    .line 100
    return-void
.end method

.method public a(Lcom/viber/voip/billing/bt;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 103
    new-instance v0, Lcom/viber/voip/market/a/c;

    invoke-direct {v0}, Lcom/viber/voip/market/a/c;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/market/a/c;->a(Lcom/viber/voip/billing/bt;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public a(Lcom/viber/voip/market/MarketPublicGroupInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 119
    new-instance v0, Lcom/viber/voip/market/a/m;

    invoke-direct {v0}, Lcom/viber/voip/market/a/m;-><init>()V

    invoke-virtual {v0, p1}, Lcom/viber/voip/market/a/m;->a(Lcom/viber/voip/market/MarketPublicGroupInfo;)V

    .line 120
    return-void
.end method

.method public a(Lcom/viber/voip/market/MarketPublicGroupInfo;Lcom/viber/voip/market/r;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 123
    new-instance v0, Lcom/viber/voip/market/a/d;

    invoke-direct {v0}, Lcom/viber/voip/market/a/d;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/viber/voip/market/a/d;->a(Lcom/viber/voip/market/MarketPublicGroupInfo;ZLcom/viber/voip/market/r;)V

    .line 124
    return-void
.end method

.method public a(Lcom/viber/voip/market/bm;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/viber/voip/market/bk;->b:Lcom/viber/voip/market/bm;

    .line 91
    return-void
.end method

.method public a(Lcom/viber/voip/market/q;)V
    .locals 1
    .parameter

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/viber/voip/market/bk;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/viber/voip/market/q;->a(Lorg/json/JSONObject;)V

    .line 112
    return-void
.end method

.method public a(Lcom/viber/voip/market/s;)V
    .locals 1
    .parameter

    .prologue
    .line 115
    new-instance v0, Lcom/viber/voip/market/a/k;

    invoke-direct {v0}, Lcom/viber/voip/market/a/k;-><init>()V

    invoke-virtual {v0, p1}, Lcom/viber/voip/market/a/k;->a(Lcom/viber/voip/market/s;)V

    .line 116
    return-void
.end method

.method public a([Lcom/viber/voip/billing/bn;Lcom/viber/voip/market/u;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 95
    new-instance v0, Lcom/viber/voip/market/a/i;

    invoke-direct {v0}, Lcom/viber/voip/market/a/i;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/market/a/i;->a([Lcom/viber/voip/billing/bn;Lcom/viber/voip/market/u;)V

    .line 96
    return-void
.end method

.method public b(Lcom/viber/voip/market/MarketPublicGroupInfo;Lcom/viber/voip/market/r;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 127
    new-instance v0, Lcom/viber/voip/market/a/d;

    invoke-direct {v0}, Lcom/viber/voip/market/a/d;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/viber/voip/market/a/d;->a(Lcom/viber/voip/market/MarketPublicGroupInfo;ZLcom/viber/voip/market/r;)V

    .line 128
    return-void
.end method
