.class public Lcom/viber/voip/billing/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lorg/json/JSONObject;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Lcom/viber/voip/billing/s;


# direct methods
.method public constructor <init>(Lcom/viber/voip/billing/s;)V
    .locals 1
    .parameter

    .prologue
    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/billing/m;->c:I

    .line 485
    iput-object p1, p0, Lcom/viber/voip/billing/m;->e:Lcom/viber/voip/billing/s;

    .line 486
    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;)V
    .locals 1
    .parameter

    .prologue
    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/billing/m;->c:I

    .line 489
    invoke-static {}, Lcom/viber/voip/billing/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    sget-object v0, Lcom/viber/voip/billing/s;->c:Lcom/viber/voip/billing/s;

    iput-object v0, p0, Lcom/viber/voip/billing/m;->e:Lcom/viber/voip/billing/s;

    .line 494
    :goto_0
    return-void

    .line 492
    :cond_0
    sget-object v0, Lcom/viber/voip/billing/s;->a:Lcom/viber/voip/billing/s;

    iput-object v0, p0, Lcom/viber/voip/billing/m;->e:Lcom/viber/voip/billing/s;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/billing/m;->c:I

    .line 480
    iput-object p1, p0, Lcom/viber/voip/billing/m;->b:Ljava/lang/String;

    .line 481
    iput-object p2, p0, Lcom/viber/voip/billing/m;->d:Ljava/lang/String;

    .line 482
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 476
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/viber/voip/billing/m;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 477
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    const/4 v2, -0x1

    iput v2, p0, Lcom/viber/voip/billing/m;->c:I

    .line 455
    iput-object p1, p0, Lcom/viber/voip/billing/m;->a:Lorg/json/JSONObject;

    .line 456
    iput-object p2, p0, Lcom/viber/voip/billing/m;->d:Ljava/lang/String;

    .line 458
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 460
    :try_start_0
    const-string/jumbo v2, "status"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 461
    const-string/jumbo v2, "status"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/viber/voip/billing/m;->c:I

    .line 462
    iget v2, p0, Lcom/viber/voip/billing/m;->c:I

    if-ne v2, v0, :cond_1

    .line 466
    :goto_0
    if-nez v0, :cond_0

    .line 467
    sget-object v0, Lcom/viber/voip/billing/s;->b:Lcom/viber/voip/billing/s;

    iput-object v0, p0, Lcom/viber/voip/billing/m;->e:Lcom/viber/voip/billing/s;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 462
    goto :goto_0

    :cond_2
    move v0, v1

    .line 464
    goto :goto_0

    .line 470
    :catch_0
    move-exception v0

    .line 471
    sget-object v0, Lcom/viber/voip/billing/s;->b:Lcom/viber/voip/billing/s;

    iput-object v0, p0, Lcom/viber/voip/billing/m;->e:Lcom/viber/voip/billing/s;

    goto :goto_1
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/viber/voip/billing/m;->e:Lcom/viber/voip/billing/s;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lcom/viber/voip/billing/s;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/viber/voip/billing/m;->e:Lcom/viber/voip/billing/s;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Lcom/viber/voip/billing/m;->c:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/viber/voip/billing/m;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/viber/voip/billing/m;->b:Ljava/lang/String;

    return-object v0
.end method
