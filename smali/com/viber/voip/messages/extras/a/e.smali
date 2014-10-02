.class public Lcom/viber/voip/messages/extras/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/extras/a/a;


# instance fields
.field private a:J

.field private b:Landroid/location/LocationManager;

.field private c:Landroid/location/Location;

.field private d:Landroid/location/Location;

.field private e:Landroid/location/Location;

.field private f:Landroid/location/Location;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/viber/voip/messages/extras/a/af;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/os/Handler;

.field private i:Landroid/location/Address;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/extras/a/e;->g:Ljava/util/Map;

    .line 57
    sget-object v0, Lcom/viber/voip/dk;->k:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/extras/a/e;->h:Landroid/os/Handler;

    .line 61
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/viber/voip/messages/extras/a/e;->b:Landroid/location/LocationManager;

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/extras/a/e;Landroid/location/Address;)Landroid/location/Address;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/viber/voip/messages/extras/a/e;->i:Landroid/location/Address;

    return-object p1
.end method

.method static synthetic a(Lcom/viber/voip/messages/extras/a/e;)Landroid/location/Location;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/e;->d:Landroid/location/Location;

    return-object v0
.end method

.method private a(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 567
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 580
    :cond_0
    :goto_0
    return-object p2

    .line 568
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo p2, ""

    goto :goto_0

    .line 569
    :cond_2
    invoke-virtual {p1}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    const/4 v0, 0x0

    const-string/jumbo v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 571
    :cond_3
    invoke-virtual {p1}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 573
    invoke-virtual {p1, v2}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 574
    invoke-virtual {p1, v2}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 577
    :cond_4
    const-string/jumbo v1, ",  "

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getAddressWithCuttingOwn.cutAddressString new address ready = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/messages/extras/a/e;Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/messages/extras/a/e;->a(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(JLcom/viber/voip/messages/extras/a/af;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 348
    iget-object v1, p0, Lcom/viber/voip/messages/extras/a/e;->g:Ljava/util/Map;

    monitor-enter v1

    .line 349
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/e;->g:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    monitor-exit v1

    .line 351
    return-void

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(JLcom/viber/voip/messages/extras/a/b;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onGetLocationTimeout msgId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->b(Ljava/lang/String;)V

    .line 406
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/extras/a/e;->b(Ljava/lang/Long;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/extras/a/e;->a(Ljava/lang/Long;)V

    .line 408
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lcom/viber/voip/messages/extras/a/b;->a(Landroid/location/Location;)V

    .line 409
    new-instance v0, Lcom/viber/logger/QaLogger$QaLocationReceivedEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/viber/logger/QaLogger$QaLocationReceivedEvent;-><init>(JZ)V

    invoke-static {v0}, Lcom/viber/logger/QaLogger;->a(Lcom/viber/logger/QaLogger$QaEvent;)V

    .line 411
    :cond_0
    return-void
.end method

.method private a(Landroid/location/Address;Ljava/lang/String;Lcom/viber/voip/messages/extras/a/c;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 704
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/extras/a/h;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/viber/voip/messages/extras/a/h;-><init>(Lcom/viber/voip/messages/extras/a/e;Lcom/viber/voip/messages/extras/a/c;Landroid/location/Address;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 710
    return-void
.end method

.method private a(Landroid/location/Location;)V
    .locals 2
    .parameter

    .prologue
    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cachedGPSLocation was init with location = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->b(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/e;->d:Landroid/location/Location;

    invoke-direct {p0, v0, p1}, Lcom/viber/voip/messages/extras/a/e;->a(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/viber/voip/messages/extras/a/e;->a(Landroid/location/Location;ZLcom/viber/voip/messages/extras/a/b;)V

    .line 358
    :cond_0
    iput-object p1, p0, Lcom/viber/voip/messages/extras/a/e;->d:Landroid/location/Location;

    .line 359
    return-void
.end method

.method private a(Landroid/location/Location;ZLcom/viber/voip/messages/extras/a/b;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 363
    if-eqz p1, :cond_0

    .line 364
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    new-instance v5, Lcom/viber/voip/messages/extras/a/v;

    invoke-direct {v5, p0, p2, p1, p3}, Lcom/viber/voip/messages/extras/a/v;-><init>(Lcom/viber/voip/messages/extras/a/e;ZLandroid/location/Location;Lcom/viber/voip/messages/extras/a/b;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/extras/a/e;->b(DDLcom/viber/voip/messages/extras/a/c;)V

    .line 385
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/extras/a/e;JLcom/viber/voip/messages/extras/a/af;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/messages/extras/a/e;->a(JLcom/viber/voip/messages/extras/a/af;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/extras/a/e;JLcom/viber/voip/messages/extras/a/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/messages/extras/a/e;->a(JLcom/viber/voip/messages/extras/a/b;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/extras/a/e;Landroid/location/Address;Ljava/lang/String;Lcom/viber/voip/messages/extras/a/c;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/messages/extras/a/e;->a(Landroid/location/Address;Ljava/lang/String;Lcom/viber/voip/messages/extras/a/c;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/extras/a/e;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/extras/a/e;->a(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/extras/a/e;Landroid/location/Location;ZLcom/viber/voip/messages/extras/a/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/messages/extras/a/e;->a(Landroid/location/Location;ZLcom/viber/voip/messages/extras/a/b;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/extras/a/e;Lcom/viber/voip/messages/extras/map/k;ZLcom/viber/voip/messages/extras/a/c;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/messages/extras/a/e;->a(Lcom/viber/voip/messages/extras/map/k;ZLcom/viber/voip/messages/extras/a/c;)V

    return-void
.end method

.method private a(Lcom/viber/voip/messages/extras/map/k;ZLcom/viber/voip/messages/extras/a/c;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 685
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 686
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 687
    :cond_0
    new-instance v1, Landroid/location/Address;

    invoke-direct {v1, v0}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 688
    invoke-virtual {p1}, Lcom/viber/voip/messages/extras/map/k;->b()Lcom/viber/voip/messages/extras/map/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/map/b;->b()I

    move-result v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/map/d;->a(I)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Address;->setLongitude(D)V

    .line 689
    invoke-virtual {p1}, Lcom/viber/voip/messages/extras/map/k;->b()Lcom/viber/voip/messages/extras/map/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/map/b;->a()I

    move-result v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/map/d;->a(I)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Address;->setLatitude(D)V

    .line 690
    invoke-virtual {p1}, Lcom/viber/voip/messages/extras/map/k;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    .line 691
    invoke-virtual {p1}, Lcom/viber/voip/messages/extras/map/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 692
    if-eqz p2, :cond_1

    .line 693
    invoke-direct {p0, v1, v0, p3}, Lcom/viber/voip/messages/extras/a/e;->a(Landroid/location/Address;Ljava/lang/String;Lcom/viber/voip/messages/extras/a/c;)V

    .line 697
    :goto_0
    return-void

    .line 695
    :cond_1
    invoke-interface {p3, v1, v0}, Lcom/viber/voip/messages/extras/a/c;->a(Landroid/location/Address;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-static {p0}, Lcom/viber/voip/messages/extras/a/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter

    .prologue
    .line 700
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string/jumbo v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    :cond_0
    return-void
.end method

.method private a(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 396
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    const/high16 v1, 0x447a

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/messages/extras/a/e;Lcom/viber/voip/messages/extras/a/b;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/extras/a/e;->b(Lcom/viber/voip/messages/extras/a/b;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/viber/voip/messages/extras/a/e;)Landroid/location/Location;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/e;->c:Landroid/location/Location;

    return-object v0
.end method

.method private b(Landroid/location/Location;)V
    .locals 2
    .parameter

    .prologue
    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cachedWPSLocation was init with location = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->b(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/e;->c:Landroid/location/Location;

    invoke-direct {p0, v0, p1}, Lcom/viber/voip/messages/extras/a/e;->a(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/viber/voip/messages/extras/a/e;->a(Landroid/location/Location;ZLcom/viber/voip/messages/extras/a/b;)V

    .line 392
    :cond_0
    iput-object p1, p0, Lcom/viber/voip/messages/extras/a/e;->c:Landroid/location/Location;

    .line 393
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/messages/extras/a/e;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/extras/a/e;->b(Landroid/location/Location;)V

    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 715
    return-void
.end method

.method private b(Lcom/viber/voip/messages/extras/a/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 280
    const-string/jumbo v0, "getGPSLocation GPS_PROVIDER is disabled or we don\'t need use GPS"

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->b(Ljava/lang/String;)V

    .line 281
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic b(Lcom/viber/voip/messages/extras/a/e;Lcom/viber/voip/messages/extras/a/b;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/extras/a/e;->c(Lcom/viber/voip/messages/extras/a/b;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/viber/voip/messages/extras/a/e;)Landroid/location/Location;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/e;->e:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic c(Lcom/viber/voip/messages/extras/a/e;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/viber/voip/messages/extras/a/e;->e:Landroid/location/Location;

    return-object p1
.end method

.method private c(Lcom/viber/voip/messages/extras/a/b;)Z
    .locals 6
    .parameter

    .prologue
    .line 286
    const-string/jumbo v0, "getWPSLocation"

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->b(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/e;->b:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    new-instance v5, Lcom/viber/voip/messages/extras/a/ad;

    new-instance v0, Lcom/viber/voip/messages/extras/a/s;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/messages/extras/a/s;-><init>(Lcom/viber/voip/messages/extras/a/e;Lcom/viber/voip/messages/extras/a/b;)V

    const/16 v1, 0x7530

    const/4 v2, 0x0

    invoke-direct {v5, p0, v0, v1, v2}, Lcom/viber/voip/messages/extras/a/ad;-><init>(Lcom/viber/voip/messages/extras/a/e;Lcom/viber/voip/messages/extras/a/b;ILcom/viber/voip/messages/extras/a/f;)V

    .line 296
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/e;->b:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 297
    const/4 v0, 0x1

    .line 300
    :goto_0
    return v0

    .line 299
    :cond_0
    const-string/jumbo v0, "getWPSLocation NETWORK_PROVIDER is disabled!"

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->b(Ljava/lang/String;)V

    .line 300
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/viber/voip/messages/extras/a/e;)Landroid/location/Location;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/e;->f:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic d(Lcom/viber/voip/messages/extras/a/e;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/viber/voip/messages/extras/a/e;->f:Landroid/location/Location;

    return-object p1
.end method

.method private d()V
    .locals 2

    .prologue
    .line 173
    sget-object v0, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/extras/a/i;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/extras/a/i;-><init>(Lcom/viber/voip/messages/extras/a/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 264
    return-void
.end method

.method private d(Lcom/viber/voip/messages/extras/a/b;)V
    .locals 2
    .parameter

    .prologue
    .line 305
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/e;->h:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/messages/extras/a/t;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/messages/extras/a/t;-><init>(Lcom/viber/voip/messages/extras/a/e;Lcom/viber/voip/messages/extras/a/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 343
    return-void
.end method

.method static synthetic e(Lcom/viber/voip/messages/extras/a/e;)Landroid/location/LocationManager;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/e;->b:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic f(Lcom/viber/voip/messages/extras/a/e;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/e;->h:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lcom/viber/voip/messages/extras/a/e;)Landroid/location/Address;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/e;->i:Landroid/location/Address;

    return-object v0
.end method


# virtual methods
.method public a(DD)Lcom/viber/voip/messages/extras/a/d;
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 615
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 616
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 617
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object v1, v0

    .line 618
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAddress lat = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", lng = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", locale (country) = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->b(Ljava/lang/String;)V

    .line 619
    new-instance v0, Landroid/location/Geocoder;

    invoke-direct {v0, v2, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 620
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 621
    const/4 v6, 0x0

    .line 623
    const/4 v5, 0x1

    move-wide v1, p1

    move-wide v3, p3

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0

    .line 624
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 625
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 626
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v1

    .line 627
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v2

    .line 628
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 630
    invoke-direct {p0, v7}, Lcom/viber/voip/messages/extras/a/e;->a(Ljava/lang/StringBuilder;)V

    .line 631
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    :cond_1
    invoke-direct {p0, v7}, Lcom/viber/voip/messages/extras/a/e;->a(Ljava/lang/StringBuilder;)V

    .line 634
    invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAddress return value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/messages/extras/a/e;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 642
    :goto_1
    new-instance v1, Lcom/viber/voip/messages/extras/a/d;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/viber/voip/messages/extras/a/d;-><init>(Landroid/location/Address;Ljava/lang/String;)V

    return-object v1

    .line 637
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    .line 638
    :goto_2
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/messages/extras/a/e;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 639
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    .line 640
    :goto_3
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/messages/extras/a/e;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 639
    :catch_2
    move-exception v1

    goto :goto_3

    .line 637
    :catch_3
    move-exception v1

    goto :goto_2

    :cond_2
    move-object v0, v6

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/a/e;->b()V

    .line 71
    return-void
.end method

.method public a(DDLcom/viber/voip/messages/extras/a/c;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getAddressWithCuttingOwn cachedOwnAddress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/extras/a/e;->i:Landroid/location/Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->b(Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/e;->i:Landroid/location/Address;

    if-nez v0, :cond_0

    .line 526
    new-instance v0, Lcom/viber/voip/messages/extras/a/w;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/messages/extras/a/w;-><init>(Lcom/viber/voip/messages/extras/a/e;DDLcom/viber/voip/messages/extras/a/c;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/extras/a/e;->a(Lcom/viber/voip/messages/extras/a/b;)V

    .line 564
    :goto_0
    return-void

    .line 557
    :cond_0
    const/4 v5, 0x1

    new-instance v6, Lcom/viber/voip/messages/extras/a/aa;

    invoke-direct {v6, p0, p5}, Lcom/viber/voip/messages/extras/a/aa;-><init>(Lcom/viber/voip/messages/extras/a/e;Lcom/viber/voip/messages/extras/a/c;)V

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/messages/extras/a/e;->a(DDZLcom/viber/voip/messages/extras/a/c;)V

    goto :goto_0
.end method

.method public a(DDZLcom/viber/voip/messages/extras/a/c;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 585
    iget-object v8, p0, Lcom/viber/voip/messages/extras/a/e;->h:Landroid/os/Handler;

    new-instance v0, Lcom/viber/voip/messages/extras/a/ab;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/messages/extras/a/ab;-><init>(Lcom/viber/voip/messages/extras/a/e;DDZLcom/viber/voip/messages/extras/a/c;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 610
    return-void
.end method

.method public a(JLcom/viber/voip/messages/extras/a/b;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getLocation msgId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",isPublicGroup:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->b(Ljava/lang/String;)V

    .line 93
    new-instance v0, Lcom/viber/logger/QaLogger$QaLocationAskEvent;

    invoke-direct {v0, p1, p2}, Lcom/viber/logger/QaLogger$QaLocationAskEvent;-><init>(J)V

    invoke-static {v0}, Lcom/viber/logger/QaLogger;->a(Lcom/viber/logger/QaLogger$QaEvent;)V

    .line 95
    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/e;->d:Landroid/location/Location;

    if-eqz v0, :cond_2

    .line 96
    :cond_0
    const-string/jumbo v0, "return cached GPSLocation"

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->b(Ljava/lang/String;)V

    .line 97
    new-instance v0, Lcom/viber/logger/QaLogger$QaLocationReceivedEvent;

    invoke-direct {v0, p1, p2, v2}, Lcom/viber/logger/QaLogger$QaLocationReceivedEvent;-><init>(JZ)V

    invoke-static {v0}, Lcom/viber/logger/QaLogger;->a(Lcom/viber/logger/QaLogger$QaEvent;)V

    .line 98
    if-eqz p4, :cond_4

    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/e;->e:Landroid/location/Location;

    :goto_0
    invoke-interface {p3, v0}, Lcom/viber/voip/messages/extras/a/b;->a(Landroid/location/Location;)V

    .line 129
    :goto_1
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/e;->d:Landroid/location/Location;

    if-nez v0, :cond_0

    .line 99
    :cond_2
    if-eqz p4, :cond_5

    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/e;->f:Landroid/location/Location;

    if-eqz v0, :cond_6

    .line 100
    :cond_3
    const-string/jumbo v0, "return cached WPSLocation"

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->b(Ljava/lang/String;)V

    .line 101
    new-instance v0, Lcom/viber/logger/QaLogger$QaLocationReceivedEvent;

    invoke-direct {v0, p1, p2, v2}, Lcom/viber/logger/QaLogger$QaLocationReceivedEvent;-><init>(JZ)V

    invoke-static {v0}, Lcom/viber/logger/QaLogger;->a(Lcom/viber/logger/QaLogger$QaEvent;)V

    .line 102
    if-eqz p4, :cond_7

    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/e;->f:Landroid/location/Location;

    :goto_2
    invoke-interface {p3, v0}, Lcom/viber/voip/messages/extras/a/b;->a(Landroid/location/Location;)V

    goto :goto_1

    .line 98
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/e;->d:Landroid/location/Location;

    goto :goto_0

    .line 99
    :cond_5
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/a/e;->c()Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_3

    .line 103
    :cond_6
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/e;->b:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 105
    const-string/jumbo v0, "all cached are empty. try to get location."

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->b(Ljava/lang/String;)V

    .line 107
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/extras/a/e;->b(Ljava/lang/Long;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "this msgId already in LocationUpdates, msgId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 102
    :cond_7
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/a/e;->c()Landroid/location/Location;

    move-result-object v0

    goto :goto_2

    .line 111
    :cond_8
    if-eqz p4, :cond_9

    .line 113
    new-instance v0, Lcom/viber/voip/messages/extras/a/f;

    invoke-direct {v0, p0, p3}, Lcom/viber/voip/messages/extras/a/f;-><init>(Lcom/viber/voip/messages/extras/a/e;Lcom/viber/voip/messages/extras/a/b;)V

    .line 119
    new-instance v5, Lcom/viber/voip/messages/extras/a/af;

    invoke-direct {v5, p0, v0, p1, p2}, Lcom/viber/voip/messages/extras/a/af;-><init>(Lcom/viber/voip/messages/extras/a/e;Lcom/viber/voip/messages/extras/a/b;J)V

    .line 123
    :goto_3
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/e;->b:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    const-wide/16 v2, 0x7d0

    const/high16 v4, 0x447a

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_1

    .line 121
    :cond_9
    new-instance v5, Lcom/viber/voip/messages/extras/a/af;

    invoke-direct {v5, p0, p3, p1, p2}, Lcom/viber/voip/messages/extras/a/af;-><init>(Lcom/viber/voip/messages/extras/a/e;Lcom/viber/voip/messages/extras/a/b;J)V

    goto :goto_3

    .line 126
    :cond_a
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lcom/viber/voip/messages/extras/a/b;->a(Landroid/location/Location;)V

    .line 127
    new-instance v0, Lcom/viber/logger/QaLogger$QaLocationReceivedEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/viber/logger/QaLogger$QaLocationReceivedEvent;-><init>(JZ)V

    invoke-static {v0}, Lcom/viber/logger/QaLogger;->a(Lcom/viber/logger/QaLogger$QaEvent;)V

    goto/16 :goto_1
.end method

.method public a(Lcom/viber/voip/messages/extras/a/b;)V
    .locals 1
    .parameter

    .prologue
    .line 133
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/messages/extras/a/e;->a(Lcom/viber/voip/messages/extras/a/b;Z)V

    .line 134
    return-void
.end method

.method public a(Lcom/viber/voip/messages/extras/a/b;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 138
    if-eqz p2, :cond_3

    .line 139
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/e;->d:Landroid/location/Location;

    if-eqz v0, :cond_1

    .line 140
    const-string/jumbo v0, "return cached GPSLocation"

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->b(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/e;->d:Landroid/location/Location;

    invoke-interface {p1, v0}, Lcom/viber/voip/messages/extras/a/b;->a(Landroid/location/Location;)V

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/a/e;->c()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 143
    const-string/jumbo v0, "return cached WPSLocation"

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->b(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/a/e;->c()Landroid/location/Location;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/viber/voip/messages/extras/a/b;->a(Landroid/location/Location;)V

    goto :goto_0

    .line 146
    :cond_2
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/extras/a/e;->c(Lcom/viber/voip/messages/extras/a/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    invoke-interface {p1, v1}, Lcom/viber/voip/messages/extras/a/b;->a(Landroid/location/Location;)V

    goto :goto_0

    .line 150
    :cond_3
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/extras/a/e;->b(Lcom/viber/voip/messages/extras/a/b;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 151
    invoke-interface {p1, v1}, Lcom/viber/voip/messages/extras/a/b;->a(Landroid/location/Location;)V

    goto :goto_0

    .line 152
    :cond_4
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/extras/a/e;->c(Lcom/viber/voip/messages/extras/a/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/extras/a/e;->d(Lcom/viber/voip/messages/extras/a/b;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Long;)V
    .locals 2
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/e;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/extras/a/af;

    .line 160
    if-eqz v0, :cond_0

    .line 161
    iget-object v1, p0, Lcom/viber/voip/messages/extras/a/e;->g:Ljava/util/Map;

    monitor-enter v1

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/e;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    monitor-exit v1

    .line 165
    :cond_0
    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 6

    .prologue
    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 77
    iget-wide v2, p0, Lcom/viber/voip/messages/extras/a/e;->a:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 78
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/viber/voip/messages/extras/a/e;->b(Landroid/location/Location;)V

    .line 79
    invoke-direct {p0}, Lcom/viber/voip/messages/extras/a/e;->d()V

    .line 83
    :goto_0
    iput-wide v0, p0, Lcom/viber/voip/messages/extras/a/e;->a:J

    .line 84
    return-void

    .line 81
    :cond_0
    const-string/jumbo v2, "cache time was not expired! nothing to do."

    invoke-static {v2}, Lcom/viber/voip/messages/extras/a/e;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(DDLcom/viber/voip/messages/extras/a/c;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 653
    new-instance v0, Lcom/viber/voip/messages/extras/map/d;

    invoke-direct {v0, v1, v1}, Lcom/viber/voip/messages/extras/map/d;-><init>(Lcom/viber/voip/messages/extras/map/j;Lcom/viber/voip/messages/extras/map/i;)V

    .line 654
    new-instance v5, Lcom/viber/voip/messages/extras/a/g;

    invoke-direct {v5, p0, p5}, Lcom/viber/voip/messages/extras/a/g;-><init>(Lcom/viber/voip/messages/extras/a/e;Lcom/viber/voip/messages/extras/a/c;)V

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/extras/map/d;->a(DDLcom/viber/voip/messages/extras/map/j;)V

    .line 682
    return-void
.end method

.method public b(Ljava/lang/Long;)Z
    .locals 1
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/e;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c()Landroid/location/Location;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/e;->c:Landroid/location/Location;

    return-object v0
.end method
