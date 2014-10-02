.class public Lcom/viber/voip/market/ak;
.super Lcom/viber/voip/market/bp;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/market/bm;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Landroid/os/Handler;

.field private d:Lcom/viber/voip/market/bk;

.field private e:Lcom/viber/voip/market/bh;

.field private f:Landroid/content/Context;

.field private g:Lcom/viber/voip/market/MarketReceiver;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/viber/voip/market/ak;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/market/ak;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/viber/voip/market/bk;Lcom/viber/voip/market/bh;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 53
    const-string/jumbo v0, "Market"

    invoke-direct {p0, v0, p3}, Lcom/viber/voip/market/bp;-><init>(Ljava/lang/String;Lcom/viber/voip/market/bq;)V

    .line 35
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/market/ak;->c:Landroid/os/Handler;

    .line 49
    new-instance v0, Lcom/viber/voip/market/MarketReceiver;

    invoke-direct {v0}, Lcom/viber/voip/market/MarketReceiver;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/market/ak;->g:Lcom/viber/voip/market/MarketReceiver;

    .line 54
    iput-object p1, p0, Lcom/viber/voip/market/ak;->f:Landroid/content/Context;

    .line 55
    iput-object p3, p0, Lcom/viber/voip/market/ak;->e:Lcom/viber/voip/market/bh;

    .line 56
    iput-object p2, p0, Lcom/viber/voip/market/ak;->d:Lcom/viber/voip/market/bk;

    .line 57
    iget-object v0, p0, Lcom/viber/voip/market/ak;->d:Lcom/viber/voip/market/bk;

    invoke-virtual {v0, p0}, Lcom/viber/voip/market/bk;->a(Lcom/viber/voip/market/bm;)V

    .line 59
    new-instance v0, Lcom/viber/voip/market/am;

    invoke-direct {v0, p0, v2}, Lcom/viber/voip/market/am;-><init>(Lcom/viber/voip/market/ak;Lcom/viber/voip/market/al;)V

    const-string/jumbo v1, "App"

    invoke-interface {p3, v0, v1}, Lcom/viber/voip/market/bh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/viber/voip/market/ak;->g:Lcom/viber/voip/market/MarketReceiver;

    new-instance v1, Lcom/viber/voip/market/bg;

    invoke-direct {v1, p0, v2}, Lcom/viber/voip/market/bg;-><init>(Lcom/viber/voip/market/ak;Lcom/viber/voip/market/al;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/market/MarketReceiver;->a(Lcom/viber/voip/market/ac;)V

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/market/ak;)Lcom/viber/voip/market/bk;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/viber/voip/market/ak;->d:Lcom/viber/voip/market/bk;

    return-object v0
.end method

.method private a(Lcom/viber/voip/billing/bt;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 75
    const-string/jumbo v0, "onProductStatusChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/viber/voip/billing/bt;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/market/ak;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/market/ak;Lcom/viber/voip/billing/bt;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/market/ak;->b(Lcom/viber/voip/billing/bt;I)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/market/ak;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/viber/voip/market/ak;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/market/ak;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/market/ak;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/market/ak;Lorg/json/JSONObject;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/viber/voip/market/ak;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/market/ak;[Lcom/viber/voip/market/MarketApi$ProductInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/viber/voip/market/ak;->a([Lcom/viber/voip/market/MarketApi$ProductInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/market/ak;[Lcom/viber/voip/market/MarketApi$UserPublicGroupInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/viber/voip/market/ak;->a([Lcom/viber/voip/market/MarketApi$UserPublicGroupInfo;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/viber/voip/market/ak;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 158
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-static {p0}, Lcom/viber/voip/market/ak;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 128
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 129
    const-string/jumbo v1, "group_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 131
    const-string/jumbo v1, "onFollowPublicGroup"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/viber/voip/market/ak;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/viber/voip/market/ak;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 3
    .parameter

    .prologue
    .line 83
    const-string/jumbo v0, "onGetClientInfo"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/market/ak;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method private a([Lcom/viber/voip/market/MarketApi$ProductInfo;)V
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 87
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 88
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 90
    :try_start_0
    array-length v3, p1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, p1, v0

    .line 91
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 92
    const-string/jumbo v6, "id"

    iget-object v7, v4, Lcom/viber/voip/market/MarketApi$ProductInfo;->a:Lcom/viber/voip/billing/bt;

    invoke-virtual {v7}, Lcom/viber/voip/billing/bt;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    iget-object v6, v4, Lcom/viber/voip/market/MarketApi$ProductInfo;->b:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 96
    const-string/jumbo v6, "price_string"

    iget-object v7, v4, Lcom/viber/voip/market/MarketApi$ProductInfo;->b:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    :cond_0
    const-string/jumbo v6, "status"

    iget-object v4, v4, Lcom/viber/voip/market/MarketApi$ProductInfo;->c:Lcom/viber/voip/market/v;

    invoke-virtual {v4}, Lcom/viber/voip/market/v;->ordinal()I

    move-result v4

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 99
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_1
    const-string/jumbo v0, "products"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string/jumbo v0, "onGetProductsInfo"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/viber/voip/market/ak;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_1
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private a([Lcom/viber/voip/market/MarketApi$UserPublicGroupInfo;)V
    .locals 11
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 109
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 110
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 112
    :try_start_0
    array-length v5, p1

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v6, p1, v2

    .line 113
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 114
    const-string/jumbo v0, "group_id"

    iget-wide v8, v6, Lcom/viber/voip/market/MarketApi$UserPublicGroupInfo;->a:J

    const/16 v10, 0xa

    invoke-static {v8, v9, v10}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string/jumbo v8, "membership"

    iget v0, v6, Lcom/viber/voip/market/MarketApi$UserPublicGroupInfo;->b:I

    const/4 v9, 0x3

    if-ne v0, v9, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {v7, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 116
    const-string/jumbo v0, "name"

    iget-object v6, v6, Lcom/viber/voip/market/MarketApi$UserPublicGroupInfo;->c:Ljava/lang/String;

    invoke-virtual {v7, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 112
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 115
    :cond_0
    const/4 v0, 0x2

    goto :goto_1

    .line 119
    :cond_1
    const-string/jumbo v0, "groups"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string/jumbo v0, "onGetUserPublicGroups"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/market/ak;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_2
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method static synthetic b(Lcom/viber/voip/market/ak;)Lcom/viber/voip/market/bh;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/viber/voip/market/ak;->e:Lcom/viber/voip/market/bh;

    return-object v0
.end method

.method private b(Lcom/viber/voip/billing/bt;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 79
    const-string/jumbo v0, "onGetProductStatus"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/viber/voip/billing/bt;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/market/ak;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/market/ak;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/market/ak;->b(Ljava/lang/String;I)V

    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 442
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/market/ak;->b:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 443
    return-void
.end method

.method private b(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 139
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 140
    const-string/jumbo v1, "group_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 142
    const-string/jumbo v1, "onUnfollowPublicGroup"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/viber/voip/market/ak;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 445
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/market/ak;->b:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 446
    return-void
.end method

.method static synthetic c(Lcom/viber/voip/market/ak;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/viber/voip/market/ak;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/viber/voip/market/ak;)Z
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/viber/voip/market/ak;->h:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 415
    const-string/jumbo v0, "handleUiAttached"

    invoke-static {v0}, Lcom/viber/voip/market/ak;->b(Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method public a(Lcom/viber/voip/billing/bt;Lcom/viber/voip/market/v;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-virtual {p2}, Lcom/viber/voip/market/v;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/market/ak;->a(Lcom/viber/voip/billing/bt;I)V

    .line 151
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 419
    const-string/jumbo v0, "handleUiDetached"

    invoke-static {v0}, Lcom/viber/voip/market/ak;->b(Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 423
    const-string/jumbo v0, "handleUiDestroyed"

    invoke-static {v0}, Lcom/viber/voip/market/ak;->b(Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/viber/voip/market/ak;->g:Lcom/viber/voip/market/MarketReceiver;

    invoke-virtual {v0}, Lcom/viber/voip/market/MarketReceiver;->b()V

    .line 425
    return-void
.end method
