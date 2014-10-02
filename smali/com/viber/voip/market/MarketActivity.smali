.class public Lcom/viber/voip/market/MarketActivity;
.super Lcom/viber/voip/app/ViberFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/market/bh;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/view/ViewGroup;

.field private d:Landroid/webkit/WebView;

.field private e:Lcom/viber/voip/market/bk;

.field private f:Ljava/lang/String;

.field private g:Lcom/viber/voip/market/o;

.field private h:Lcom/viber/voip/process/i;

.field private i:Landroid/os/Handler;

.field private j:Lcom/viber/voip/market/ak;

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/viber/voip/market/MarketActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/market/MarketActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/viber/voip/app/ViberFragmentActivity;-><init>()V

    .line 72
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/market/MarketActivity;->i:Landroid/os/Handler;

    .line 339
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/market/MarketActivity;->l:Z

    .line 588
    new-instance v0, Lcom/viber/voip/market/b;

    invoke-direct {v0, p0}, Lcom/viber/voip/market/b;-><init>(Lcom/viber/voip/market/MarketActivity;)V

    iput-object v0, p0, Lcom/viber/voip/market/MarketActivity;->m:Ljava/lang/Runnable;

    return-void
.end method

.method public static a(I)Landroid/content/Intent;
    .locals 2
    .parameter

    .prologue
    .line 90
    sget-object v0, Lcom/viber/voip/market/o;->b:Lcom/viber/voip/market/o;

    invoke-static {v0}, Lcom/viber/voip/market/MarketActivity;->a(Lcom/viber/voip/market/o;)Landroid/content/Intent;

    move-result-object v0

    .line 91
    const-string/jumbo v1, "sticker_package_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    return-object v0
.end method

.method private static a(Lcom/viber/voip/market/o;)Landroid/content/Intent;
    .locals 3
    .parameter

    .prologue
    .line 128
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    .line 129
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/viber/voip/market/MarketActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    const/high16 v0, 0x1400

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 131
    const-string/jumbo v0, "method"

    invoke-virtual {p0}, Lcom/viber/voip/market/o;->ordinal()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    invoke-static {v1}, Lcom/viber/voip/util/hy;->a(Landroid/content/Intent;)Landroid/content/Intent;

    .line 133
    return-object v1
.end method

.method public static a(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter

    .prologue
    .line 108
    sget-object v0, Lcom/viber/voip/market/o;->d:Lcom/viber/voip/market/o;

    invoke-static {v0}, Lcom/viber/voip/market/MarketActivity;->a(Lcom/viber/voip/market/o;)Landroid/content/Intent;

    move-result-object v0

    .line 109
    invoke-static {p0}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    const-string/jumbo v1, "search_query"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    :cond_0
    return-object v0
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/viber/voip/market/o;->a:Lcom/viber/voip/market/o;

    invoke-static {v0}, Lcom/viber/voip/market/MarketActivity;->a(Lcom/viber/voip/market/o;)Landroid/content/Intent;

    move-result-object v0

    .line 86
    invoke-static {v0}, Lcom/viber/voip/market/MarketActivity;->a(Landroid/content/Intent;)V

    .line 87
    return-void
.end method

.method private static a(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 136
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    .line 137
    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 138
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/market/MarketActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/viber/voip/market/MarketActivity;->f()V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/market/MarketActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/viber/voip/market/MarketActivity;->f(Ljava/lang/String;)V

    return-void
.end method

.method private a(Z)V
    .locals 4
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 193
    iget-object v3, p0, Lcom/viber/voip/market/MarketActivity;->b:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/viber/voip/market/MarketActivity;->c:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 195
    return-void

    :cond_0
    move v0, v2

    .line 193
    goto :goto_0

    :cond_1
    move v2, v1

    .line 194
    goto :goto_1
.end method

.method static synthetic a(Lcom/viber/voip/market/MarketActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/viber/voip/market/MarketActivity;->k:Z

    return p1
.end method

.method public static b()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/viber/voip/market/MarketActivity;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static b(I)Landroid/content/Intent;
    .locals 1
    .parameter

    .prologue
    .line 96
    invoke-static {p0}, Lcom/viber/voip/market/MarketActivity;->a(I)Landroid/content/Intent;

    move-result-object v0

    .line 97
    invoke-static {v0}, Lcom/viber/voip/e/u;->a(Landroid/content/Intent;)V

    .line 98
    return-object v0
.end method

.method static synthetic b(Lcom/viber/voip/market/MarketActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/viber/voip/market/MarketActivity;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/viber/voip/market/MarketActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/viber/voip/market/MarketActivity;->a(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLoadingProgressVisible: visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/market/MarketActivity;->f(Ljava/lang/String;)V

    .line 522
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/market/MarketActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/viber/voip/market/MarketActivity;->l:Z

    return v0
.end method

.method public static c(I)Landroid/content/Intent;
    .locals 2
    .parameter

    .prologue
    .line 102
    sget-object v0, Lcom/viber/voip/market/o;->c:Lcom/viber/voip/market/o;

    invoke-static {v0}, Lcom/viber/voip/market/MarketActivity;->a(Lcom/viber/voip/market/o;)Landroid/content/Intent;

    move-result-object v0

    .line 103
    const-string/jumbo v1, "sticker_package_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    return-object v0
.end method

.method static synthetic c(Lcom/viber/voip/market/MarketActivity;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/viber/voip/market/MarketActivity;->d:Landroid/webkit/WebView;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    sget-object v0, Lcom/viber/voip/market/c;->a:[I

    iget-object v1, p0, Lcom/viber/voip/market/MarketActivity;->g:Lcom/viber/voip/market/o;

    invoke-virtual {v1}, Lcom/viber/voip/market/o;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 188
    const v0, 0x7f0c05a5

    invoke-virtual {p0, v0}, Lcom/viber/voip/market/MarketActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 186
    :pswitch_0
    const v0, 0x7f0c0694

    invoke-virtual {p0, v0}, Lcom/viber/voip/market/MarketActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic c(Lcom/viber/voip/market/MarketActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/viber/voip/market/MarketActivity;->b(Z)V

    return-void
.end method

.method static synthetic d(Lcom/viber/voip/market/MarketActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/viber/voip/market/MarketActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?utm_source=Android&utm_medium=Android&utm_term=%s&utm_content=getstickerbutton"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/viber/voip/ViberApplication;->getAppVersion()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 199
    const-string/jumbo v0, "syncProductsAndLoadMarket()"

    invoke-direct {p0, v0}, Lcom/viber/voip/market/MarketActivity;->f(Ljava/lang/String;)V

    .line 200
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "PREF_MARKET_PRODUCTS_SYNCED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/viber/voip/market/MarketActivity;->f()V

    .line 216
    :goto_0
    return-void

    .line 203
    :cond_0
    const-string/jumbo v0, "syncing products"

    invoke-direct {p0, v0}, Lcom/viber/voip/market/MarketActivity;->f(Ljava/lang/String;)V

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/market/MarketActivity;->k:Z

    .line 205
    new-instance v0, Lcom/viber/voip/market/d;

    invoke-direct {v0, p0}, Lcom/viber/voip/market/d;-><init>(Lcom/viber/voip/market/MarketActivity;)V

    invoke-static {v0}, Lcom/viber/voip/billing/bv;->a(Lcom/viber/voip/billing/cj;)V

    goto :goto_0
.end method

.method public static d(I)V
    .locals 1
    .parameter

    .prologue
    .line 120
    invoke-static {p0}, Lcom/viber/voip/market/MarketActivity;->a(I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/market/MarketActivity;->a(Landroid/content/Intent;)V

    .line 121
    return-void
.end method

.method static synthetic e(Lcom/viber/voip/market/MarketActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/viber/voip/market/MarketActivity;->m:Ljava/lang/Runnable;

    return-object v0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/viber/voip/market/MarketActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 242
    invoke-static {}, Lcom/viber/voip/market/o;->values()[Lcom/viber/voip/market/o;

    move-result-object v1

    const-string/jumbo v2, "method"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    aget-object v0, v1, v0

    .line 243
    sget-object v1, Lcom/viber/voip/market/c;->a:[I

    invoke-virtual {v0}, Lcom/viber/voip/market/o;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 248
    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v1

    iget-object v1, v1, Lcom/viber/voip/bd;->U:Ljava/lang/String;

    iput-object v1, p0, Lcom/viber/voip/market/MarketActivity;->f:Ljava/lang/String;

    .line 251
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBaseUrl() method = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/market/MarketActivity;->f(Ljava/lang/String;)V

    .line 252
    return-void

    .line 245
    :pswitch_0
    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v1

    iget-object v1, v1, Lcom/viber/voip/bd;->ac:Ljava/lang/String;

    iput-object v1, p0, Lcom/viber/voip/market/MarketActivity;->f:Ljava/lang/String;

    goto :goto_0

    .line 243
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static e(I)V
    .locals 1
    .parameter

    .prologue
    .line 124
    invoke-static {p0}, Lcom/viber/voip/market/MarketActivity;->c(I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/market/MarketActivity;->a(Landroid/content/Intent;)V

    .line 125
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 309
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/viber/voip/market/MarketActivity;->a(Z)V

    .line 311
    new-instance v0, Lcom/viber/voip/market/e;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/market/e;-><init>(Lcom/viber/voip/market/MarketActivity;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/viber/voip/market/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 337
    return-void
.end method

.method static synthetic f(Lcom/viber/voip/market/MarketActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/viber/voip/market/MarketActivity;->i:Landroid/os/Handler;

    return-object v0
.end method

.method private f(I)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 300
    invoke-static {p1}, Lcom/viber/voip/billing/bt;->a(I)Lcom/viber/voip/billing/bt;

    move-result-object v0

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/viber/voip/market/MarketActivity;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 255
    const-string/jumbo v0, "loadMarket()"

    invoke-direct {p0, v0}, Lcom/viber/voip/market/MarketActivity;->f(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/viber/voip/market/MarketActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 258
    sget-object v1, Lcom/viber/voip/market/c;->a:[I

    iget-object v3, p0, Lcom/viber/voip/market/MarketActivity;->g:Lcom/viber/voip/market/o;

    invoke-virtual {v3}, Lcom/viber/voip/market/o;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 285
    iget-object v0, p0, Lcom/viber/voip/market/MarketActivity;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/viber/voip/market/MarketActivity;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    :goto_0
    new-instance v3, Lcom/viber/voip/market/bk;

    iget-object v1, p0, Lcom/viber/voip/market/MarketActivity;->g:Lcom/viber/voip/market/o;

    sget-object v4, Lcom/viber/voip/market/o;->a:Lcom/viber/voip/market/o;

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-direct {v3, p0, v1}, Lcom/viber/voip/market/bk;-><init>(Landroid/content/Context;Z)V

    iput-object v3, p0, Lcom/viber/voip/market/MarketActivity;->e:Lcom/viber/voip/market/bk;

    .line 292
    new-instance v1, Lcom/viber/voip/market/ak;

    iget-object v2, p0, Lcom/viber/voip/market/MarketActivity;->e:Lcom/viber/voip/market/bk;

    invoke-direct {v1, p0, v2, p0}, Lcom/viber/voip/market/ak;-><init>(Landroid/content/Context;Lcom/viber/voip/market/bk;Lcom/viber/voip/market/bh;)V

    iput-object v1, p0, Lcom/viber/voip/market/MarketActivity;->j:Lcom/viber/voip/market/ak;

    .line 293
    iget-object v1, p0, Lcom/viber/voip/market/MarketActivity;->j:Lcom/viber/voip/market/ak;

    invoke-virtual {v1}, Lcom/viber/voip/market/ak;->a()V

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Loading url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/market/MarketActivity;->f(Ljava/lang/String;)V

    .line 296
    invoke-direct {p0, v0}, Lcom/viber/voip/market/MarketActivity;->e(Ljava/lang/String;)V

    .line 297
    return-void

    .line 260
    :pswitch_0
    const-string/jumbo v1, "sticker_package_id"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/viber/voip/market/MarketActivity;->f(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 263
    :pswitch_1
    const-string/jumbo v1, "sticker_package_id"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/viber/voip/market/MarketActivity;->f(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/market/MarketActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 266
    :pswitch_2
    invoke-virtual {p0}, Lcom/viber/voip/market/MarketActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    const v3, 0x7f0c0694

    invoke-virtual {v1, v3}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 268
    const-string/jumbo v1, "search_query"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 271
    iget-object v1, p0, Lcom/viber/voip/market/MarketActivity;->f:Ljava/lang/String;

    .line 272
    if-eqz v3, :cond_1

    .line 273
    const-string/jumbo v0, ""

    .line 275
    :try_start_0
    const-string/jumbo v4, "utf-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 279
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "?search="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PG search, url = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/market/MarketActivity;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 276
    :catch_0
    move-exception v3

    .line 277
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    :cond_0
    move v1, v2

    .line 291
    goto/16 :goto_1

    :cond_1
    move-object v0, v1

    goto/16 :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private f(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 516
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/market/MarketActivity;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 517
    return-void
.end method

.method static synthetic g(Lcom/viber/voip/market/MarketActivity;)Lcom/viber/voip/process/i;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/viber/voip/market/MarketActivity;->h:Lcom/viber/voip/process/i;

    return-object v0
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 582
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    .line 583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "?t="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 386
    invoke-direct {p0}, Lcom/viber/voip/market/MarketActivity;->h()V

    .line 388
    const v0, 0x7f0702a1

    invoke-virtual {p0, v0}, Lcom/viber/voip/market/MarketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/viber/voip/market/MarketActivity;->d:Landroid/webkit/WebView;

    .line 389
    iget-object v0, p0, Lcom/viber/voip/market/MarketActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 390
    iget-object v0, p0, Lcom/viber/voip/market/MarketActivity;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/viber/voip/market/f;

    invoke-direct {v1, p0}, Lcom/viber/voip/market/f;-><init>(Lcom/viber/voip/market/MarketActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 394
    iget-object v0, p0, Lcom/viber/voip/market/MarketActivity;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/viber/voip/market/n;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/viber/voip/market/n;-><init>(Lcom/viber/voip/market/MarketActivity;Lcom/viber/voip/market/a;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 396
    iget-object v0, p0, Lcom/viber/voip/market/MarketActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 398
    invoke-virtual {p0}, Lcom/viber/voip/market/MarketActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/market/MarketActivity;->d:Landroid/webkit/WebView;

    invoke-static {v0, v1}, Lcom/viber/voip/util/hy;->a(Landroid/content/Intent;Landroid/webkit/WebView;)V

    .line 399
    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    const v3, 0x7f0702c2

    .line 402
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "PREF_MARKET_ENABLE_URL_CHANGE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    invoke-virtual {p0, v3}, Lcom/viber/voip/market/MarketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 433
    :goto_0
    return-void

    .line 405
    :cond_0
    invoke-virtual {p0, v3}, Lcom/viber/voip/market/MarketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/market/g;

    invoke-direct {v1, p0}, Lcom/viber/voip/market/g;-><init>(Lcom/viber/voip/market/MarketActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 530
    new-instance v0, Lcom/viber/voip/market/l;

    invoke-direct {v0, p0}, Lcom/viber/voip/market/l;-><init>(Lcom/viber/voip/market/MarketActivity;)V

    iput-object v0, p0, Lcom/viber/voip/market/MarketActivity;->h:Lcom/viber/voip/process/i;

    .line 569
    invoke-static {}, Lcom/viber/voip/process/e;->a()Lcom/viber/voip/process/e;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/market/MarketActivity;->h:Lcom/viber/voip/process/i;

    invoke-virtual {v0, v1}, Lcom/viber/voip/process/e;->a(Lcom/viber/voip/process/i;)V

    .line 571
    new-instance v0, Lcom/viber/voip/market/m;

    invoke-direct {v0, p0}, Lcom/viber/voip/market/m;-><init>(Lcom/viber/voip/market/MarketActivity;)V

    invoke-virtual {v0, p0}, Lcom/viber/voip/market/m;->a(Landroid/content/Context;)V

    .line 579
    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/market/bi;)V
    .locals 1
    .parameter

    .prologue
    .line 436
    new-instance v0, Lcom/viber/voip/market/j;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/market/j;-><init>(Lcom/viber/voip/market/MarketActivity;Lcom/viber/voip/market/bi;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/market/MarketActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 442
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 457
    iget-object v0, p0, Lcom/viber/voip/market/MarketActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 458
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPageTitle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/market/MarketActivity;->f(Ljava/lang/String;)V

    .line 447
    new-instance v0, Lcom/viber/voip/market/k;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/market/k;-><init>(Lcom/viber/voip/market/MarketActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/market/MarketActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 453
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "evaluateJS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/market/MarketActivity;->f(Ljava/lang/String;)V

    .line 464
    iget-boolean v1, p0, Lcom/viber/voip/market/MarketActivity;->l:Z

    if-eqz v1, :cond_0

    .line 467
    :goto_0
    return-void

    .line 465
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/market/MarketActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 466
    const-string/jumbo v0, "evaluateJS: load"

    invoke-direct {p0, v0}, Lcom/viber/voip/market/MarketActivity;->f(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 360
    iget-object v0, p0, Lcom/viber/voip/market/MarketActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 361
    iget-object v0, p0, Lcom/viber/voip/market/MarketActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 368
    :goto_0
    return-void

    .line 362
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/market/MarketActivity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 363
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/viber/voip/market/MarketActivity;->g:Lcom/viber/voip/market/o;

    sget-object v2, Lcom/viber/voip/market/o;->d:Lcom/viber/voip/market/o;

    if-eq v0, v2, :cond_1

    const-string/jumbo v0, "com.viber.voip.action.YOU"

    :goto_1
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/viber/voip/market/MarketActivity;->startActivity(Landroid/content/Intent;)V

    .line 364
    invoke-virtual {p0}, Lcom/viber/voip/market/MarketActivity;->finish()V

    goto :goto_0

    .line 363
    :cond_1
    const-string/jumbo v0, "com.viber.voip.action.PUBLIC_GROUP"

    goto :goto_1

    .line 366
    :cond_2
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 143
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCreate, sticker pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/market/MarketActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "sticker_package_id"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/market/MarketActivity;->f(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/viber/voip/market/o;->values()[Lcom/viber/voip/market/o;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/market/MarketActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "method"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/viber/voip/market/MarketActivity;->g:Lcom/viber/voip/market/o;

    .line 149
    invoke-virtual {p0}, Lcom/viber/voip/market/MarketActivity;->getActionBarSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/ActionBarSherlock;->requestFeature(I)Z

    .line 150
    invoke-virtual {p0}, Lcom/viber/voip/market/MarketActivity;->getActionBarSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->getActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 151
    invoke-virtual {p0}, Lcom/viber/voip/market/MarketActivity;->getActionBarSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->getActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 152
    invoke-virtual {p0}, Lcom/viber/voip/market/MarketActivity;->getActionBarSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/ActionBarSherlock;->setProgressBarIndeterminateVisibility(Z)V

    .line 154
    invoke-virtual {p0}, Lcom/viber/voip/market/MarketActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-direct {p0}, Lcom/viber/voip/market/MarketActivity;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 156
    invoke-direct {p0}, Lcom/viber/voip/market/MarketActivity;->e()V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCreate, baseUrl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/market/MarketActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/market/MarketActivity;->f(Ljava/lang/String;)V

    .line 160
    const v0, 0x7f0300c9

    invoke-virtual {p0, v0}, Lcom/viber/voip/market/MarketActivity;->setContentView(I)V

    .line 162
    const v0, 0x7f070119

    invoke-virtual {p0, v0}, Lcom/viber/voip/market/MarketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/viber/voip/market/MarketActivity;->b:Landroid/view/ViewGroup;

    .line 163
    const v0, 0x7f070257

    invoke-virtual {p0, v0}, Lcom/viber/voip/market/MarketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/viber/voip/market/MarketActivity;->c:Landroid/view/ViewGroup;

    .line 164
    const v0, 0x7f070258

    invoke-virtual {p0, v0}, Lcom/viber/voip/market/MarketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/market/a;

    invoke-direct {v1, p0}, Lcom/viber/voip/market/a;-><init>(Lcom/viber/voip/market/MarketActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    invoke-direct {p0, v4}, Lcom/viber/voip/market/MarketActivity;->a(Z)V

    .line 172
    invoke-direct {p0, v3}, Lcom/viber/voip/market/MarketActivity;->b(Z)V

    .line 173
    invoke-direct {p0}, Lcom/viber/voip/market/MarketActivity;->g()V

    .line 175
    invoke-direct {p0}, Lcom/viber/voip/market/MarketActivity;->d()V

    .line 177
    iget-object v0, p0, Lcom/viber/voip/market/MarketActivity;->g:Lcom/viber/voip/market/o;

    sget-object v1, Lcom/viber/voip/market/o;->d:Lcom/viber/voip/market/o;

    if-eq v0, v1, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/viber/voip/market/MarketActivity;->i()V

    .line 179
    invoke-static {p0}, Lcom/viber/voip/stickers/e/c;->a(Landroid/content/Context;)V

    .line 181
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/viber/voip/market/MarketActivity;->g:Lcom/viber/voip/market/o;

    sget-object v1, Lcom/viber/voip/market/o;->d:Lcom/viber/voip/market/o;

    if-eq v0, v1, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/viber/voip/market/MarketActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 222
    const v1, 0x7f100014

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 223
    const/4 v0, 0x1

    .line 225
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 343
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onDestroy()V

    .line 344
    const-string/jumbo v0, "onDestroy: MarketActivity"

    invoke-direct {p0, v0}, Lcom/viber/voip/market/MarketActivity;->f(Ljava/lang/String;)V

    .line 346
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/market/MarketActivity;->l:Z

    .line 347
    invoke-static {}, Lcom/viber/voip/process/e;->a()Lcom/viber/voip/process/e;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/market/MarketActivity;->h:Lcom/viber/voip/process/i;

    invoke-virtual {v0, v1}, Lcom/viber/voip/process/e;->b(Lcom/viber/voip/process/i;)V

    .line 348
    iget-object v0, p0, Lcom/viber/voip/market/MarketActivity;->e:Lcom/viber/voip/market/bk;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/viber/voip/market/MarketActivity;->e:Lcom/viber/voip/market/bk;

    invoke-virtual {v0}, Lcom/viber/voip/market/bk;->a()V

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/market/MarketActivity;->j:Lcom/viber/voip/market/ak;

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/viber/voip/market/MarketActivity;->j:Lcom/viber/voip/market/ak;

    invoke-virtual {v0}, Lcom/viber/voip/market/ak;->c()V

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/market/MarketActivity;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/market/MarketActivity;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 355
    iget-object v0, p0, Lcom/viber/voip/market/MarketActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 356
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    .line 231
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 232
    invoke-virtual {p0, p1}, Lcom/viber/voip/market/MarketActivity;->setIntent(Landroid/content/Intent;)V

    .line 233
    invoke-direct {p0}, Lcom/viber/voip/market/MarketActivity;->e()V

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onNewIntent, sticker pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/market/MarketActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "sticker_package_id"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/market/MarketActivity;->f(Ljava/lang/String;)V

    .line 235
    iget-boolean v0, p0, Lcom/viber/voip/market/MarketActivity;->k:Z

    if-nez v0, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/viber/voip/market/MarketActivity;->f()V

    .line 238
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 372
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 381
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 374
    :sswitch_0
    invoke-virtual {p0}, Lcom/viber/voip/market/MarketActivity;->onBackPressed()V

    goto :goto_0

    .line 377
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/viber/voip/market/MarketSettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 378
    invoke-virtual {p0, v1}, Lcom/viber/voip/market/MarketActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 372
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f070475 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 509
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onPause()V

    .line 510
    iget-object v0, p0, Lcom/viber/voip/market/MarketActivity;->j:Lcom/viber/voip/market/ak;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/viber/voip/market/MarketActivity;->j:Lcom/viber/voip/market/ak;

    invoke-virtual {v0}, Lcom/viber/voip/market/ak;->b()V

    .line 513
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 501
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onResume()V

    .line 502
    iget-object v0, p0, Lcom/viber/voip/market/MarketActivity;->j:Lcom/viber/voip/market/ak;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/viber/voip/market/MarketActivity;->j:Lcom/viber/voip/market/ak;

    invoke-virtual {v0}, Lcom/viber/voip/market/ak;->a()V

    .line 505
    :cond_0
    return-void
.end method
