.class public Lcom/viber/voip/util/upload/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:Z

.field private static b:Landroid/os/Handler;

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/util/upload/p;",
            ">;>;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/viber/voip/util/http/HttpRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/viber/voip/util/upload/al;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-class v0, Lcom/viber/voip/util/upload/ac;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/viber/voip/util/upload/ac;->a:Z

    .line 66
    sget-object v0, Lcom/viber/voip/dk;->j:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/util/upload/ac;->b:Landroid/os/Handler;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/util/upload/ac;->c:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/util/upload/ac;->d:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/util/upload/ac;->e:Ljava/util/Map;

    .line 70
    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 541
    return-void
.end method

.method public static a()V
    .locals 3

    .prologue
    .line 645
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "check_data_roaming"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 646
    return-void
.end method

.method public static a(Landroid/net/Uri;Landroid/net/Uri;Lcom/viber/voip/util/upload/p;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 150
    new-instance v0, Lcom/viber/voip/util/upload/ai;

    sget-object v2, Lcom/viber/voip/util/upload/ak;->b:Lcom/viber/voip/util/upload/ak;

    const-string/jumbo v4, "image"

    new-instance v6, Lcom/viber/voip/util/upload/ad;

    invoke-direct {v6, p1, p2}, Lcom/viber/voip/util/upload/ad;-><init>(Landroid/net/Uri;Lcom/viber/voip/util/upload/p;)V

    move-object v1, p0

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/util/upload/ai;-><init>(Landroid/net/Uri;Lcom/viber/voip/util/upload/ak;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/upload/p;)V

    invoke-static {v0}, Lcom/viber/voip/util/upload/ac;->b(Lcom/viber/voip/util/upload/ah;)V

    .line 171
    return-void
.end method

.method static synthetic a(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Lcom/viber/voip/util/upload/p;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-static {p0, p1, p2, p3}, Lcom/viber/voip/util/upload/ac;->b(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Lcom/viber/voip/util/upload/p;)V

    return-void
.end method

.method private static a(Landroid/net/Uri;Lcom/viber/voip/util/upload/ak;Ljava/lang/String;Ljava/lang/String;ILcom/viber/voip/util/upload/p;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 260
    new-instance v0, Lcom/viber/voip/util/upload/aj;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/util/upload/aj;-><init>(Landroid/net/Uri;Lcom/viber/voip/util/upload/ak;Ljava/lang/String;Ljava/lang/String;ILcom/viber/voip/util/upload/p;)V

    invoke-static {v0}, Lcom/viber/voip/util/upload/ac;->b(Lcom/viber/voip/util/upload/ah;)V

    .line 261
    return-void
.end method

.method public static a(Landroid/net/Uri;Lcom/viber/voip/util/upload/p;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 341
    sget-object v0, Lcom/viber/voip/util/upload/ac;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 342
    if-eqz v0, :cond_0

    .line 343
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 345
    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-static {p0, p1, p2}, Lcom/viber/voip/util/upload/ac;->b(Landroid/net/Uri;Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/upload/p;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    new-instance v0, Lcom/viber/voip/util/upload/ai;

    sget-object v2, Lcom/viber/voip/util/upload/ak;->a:Lcom/viber/voip/util/upload/ak;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/util/upload/ai;-><init>(Landroid/net/Uri;Lcom/viber/voip/util/upload/ak;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/upload/p;)V

    invoke-static {v0}, Lcom/viber/voip/util/upload/ac;->b(Lcom/viber/voip/util/upload/ah;)V

    .line 147
    return-void
.end method

.method public static a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Landroid/net/Uri;Lcom/viber/voip/util/upload/p;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 185
    sget-object v1, Lcom/viber/voip/util/upload/ak;->f:Lcom/viber/voip/util/upload/ak;

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isImage()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "jpg"

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/viber/voip/util/upload/ae;

    invoke-direct {v5, p2, p1, p0}, Lcom/viber/voip/util/upload/ae;-><init>(Lcom/viber/voip/util/upload/p;Landroid/net/Uri;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/util/upload/ac;->a(Landroid/net/Uri;Lcom/viber/voip/util/upload/ak;Ljava/lang/String;Ljava/lang/String;ILcom/viber/voip/util/upload/p;)V

    .line 215
    return-void

    .line 185
    :cond_0
    const-string/jumbo v2, "mp4"

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/util/upload/ah;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-static {p0}, Lcom/viber/voip/util/upload/ac;->b(Lcom/viber/voip/util/upload/ah;)V

    return-void
.end method

.method public static a(Lcom/viber/voip/util/upload/ak;Landroid/net/Uri;Lcom/viber/voip/util/upload/p;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 174
    sget-boolean v0, Lcom/viber/voip/util/upload/ac;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/viber/voip/util/upload/ak;->d:Lcom/viber/voip/util/upload/ak;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/viber/voip/util/upload/ak;->e:Lcom/viber/voip/util/upload/ak;

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 175
    :cond_0
    const-string/jumbo v2, "jpg"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/util/upload/ac;->a(Landroid/net/Uri;Lcom/viber/voip/util/upload/ak;Ljava/lang/String;Ljava/lang/String;ILcom/viber/voip/util/upload/p;)V

    .line 182
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-static {p0}, Lcom/viber/voip/util/upload/ac;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 124
    const-string/jumbo v0, "====== HEADERS ========"

    invoke-static {v0}, Lcom/viber/voip/util/upload/ac;->b(Ljava/lang/String;)V

    .line 125
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "HEADER "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/upload/ac;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_0
    const-string/jumbo v0, "======================="

    invoke-static {v0}, Lcom/viber/voip/util/upload/ac;->b(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 633
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v3, "check_data_roaming"

    invoke-interface {v0, v3, v1}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 634
    if-eqz v0, :cond_1

    .line 635
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 636
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 637
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 638
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 641
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 638
    goto :goto_0

    :cond_1
    move v0, v2

    .line 641
    goto :goto_0
.end method

.method public static a(Landroid/net/Uri;)Z
    .locals 4
    .parameter

    .prologue
    .line 328
    sget-object v0, Lcom/viber/voip/util/upload/ac;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/util/http/HttpRequest;

    .line 330
    sget-object v0, Lcom/viber/voip/util/upload/ac;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 331
    if-eqz v0, :cond_0

    .line 332
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/util/upload/p;

    .line 333
    const/4 v3, 0x4

    invoke-interface {v1, p0, v3}, Lcom/viber/voip/util/upload/p;->a(Landroid/net/Uri;I)V

    goto :goto_0

    .line 337
    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic b(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-static {p0}, Lcom/viber/voip/util/upload/ac;->c(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b()Ljava/util/Map;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/viber/voip/util/upload/ac;->c:Ljava/util/Map;

    return-object v0
.end method

.method private static b(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Lcom/viber/voip/util/upload/p;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 219
    .line 221
    const/16 v0, 0x10

    :try_start_0
    invoke-static {p2, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 222
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "hex id from server parsed successfully: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", decimal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/upload/ac;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 227
    :goto_0
    sget-object v1, Lcom/viber/voip/util/upload/ak;->f:Lcom/viber/voip/util/upload/ak;

    const-string/jumbo v2, "jpg"

    const/16 v4, 0x190

    new-instance v5, Lcom/viber/voip/util/upload/af;

    invoke-direct {v5, p3, p0, p2}, Lcom/viber/voip/util/upload/af;-><init>(Lcom/viber/voip/util/upload/p;Landroid/net/Uri;Ljava/lang/String;)V

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/util/upload/ac;->a(Landroid/net/Uri;Lcom/viber/voip/util/upload/ak;Ljava/lang/String;Ljava/lang/String;ILcom/viber/voip/util/upload/p;)V

    .line 251
    return-void

    .line 223
    :catch_0
    move-exception v0

    move-object v3, p2

    .line 224
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Invalid hex id from server: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/upload/ac;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static b(Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyListeners key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", statusCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/upload/ac;->b(Ljava/lang/String;)V

    .line 293
    sget-object v1, Lcom/viber/voip/util/upload/ac;->c:Ljava/util/Map;

    monitor-enter v1

    .line 294
    :try_start_0
    sget-object v0, Lcom/viber/voip/util/upload/ac;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 295
    packed-switch p2, :pswitch_data_0

    .line 313
    if-eqz v0, :cond_0

    .line 314
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/util/upload/p;

    .line 315
    invoke-interface {v0, p0}, Lcom/viber/voip/util/upload/p;->a(Landroid/net/Uri;)V

    goto :goto_0

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 297
    :pswitch_0
    if-eqz v0, :cond_0

    .line 298
    :try_start_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/util/upload/p;

    .line 299
    invoke-interface {v0, p0, p1}, Lcom/viber/voip/util/upload/p;->a(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_1

    .line 306
    :pswitch_1
    if-eqz v0, :cond_0

    .line 307
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/util/upload/p;

    .line 308
    invoke-interface {v0, p0, p2}, Lcom/viber/voip/util/upload/p;->a(Landroid/net/Uri;I)V

    goto :goto_2

    .line 321
    :cond_0
    sget-object v0, Lcom/viber/voip/util/upload/ac;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 324
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    return-void

    .line 295
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static b(Lcom/viber/voip/util/upload/ah;)V
    .locals 4
    .parameter

    .prologue
    .line 265
    sget-object v1, Lcom/viber/voip/util/upload/ac;->e:Ljava/util/Map;

    monitor-enter v1

    .line 266
    :try_start_0
    sget-object v0, Lcom/viber/voip/util/upload/ac;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_0

    .line 269
    sget-object v0, Lcom/viber/voip/util/upload/ac;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/util/upload/al;

    .line 270
    sget-object v2, Lcom/viber/voip/util/upload/ac;->e:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    sget-object v1, Lcom/viber/voip/util/upload/ac;->c:Ljava/util/Map;

    monitor-enter v1

    .line 276
    :try_start_1
    sget-object v0, Lcom/viber/voip/util/upload/ac;->c:Ljava/util/Map;

    iget-object v2, p0, Lcom/viber/voip/util/upload/ah;->a:Landroid/net/Uri;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startUpload. This file is in uploading state, uri:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/viber/voip/util/upload/ah;->a:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " listener added"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/upload/ac;->b(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/viber/voip/util/upload/ah;->b:Lcom/viber/voip/util/upload/p;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/viber/voip/util/upload/ac;->c:Ljava/util/Map;

    iget-object v2, p0, Lcom/viber/voip/util/upload/ah;->a:Landroid/net/Uri;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iget-object v2, p0, Lcom/viber/voip/util/upload/ah;->b:Lcom/viber/voip/util/upload/p;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startUpload. put to the worker uri: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/viber/voip/util/upload/ah;->a:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " listener added"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/upload/ac;->b(Ljava/lang/String;)V

    .line 287
    sget-object v0, Lcom/viber/voip/util/upload/ac;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 288
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 289
    return-void

    .line 273
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 280
    :cond_2
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "workerSize = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/viber/voip/util/upload/ac;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", added uri = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/viber/voip/util/upload/ah;->a:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/upload/ac;->b(Ljava/lang/String;)V

    .line 281
    new-instance v0, Ljava/util/HashSet;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 282
    iget-object v2, p0, Lcom/viber/voip/util/upload/ah;->b:Lcom/viber/voip/util/upload/p;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/viber/voip/util/upload/ah;->b:Lcom/viber/voip/util/upload/p;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_3
    sget-object v2, Lcom/viber/voip/util/upload/ac;->c:Ljava/util/Map;

    iget-object v3, p0, Lcom/viber/voip/util/upload/ah;->a:Landroid/net/Uri;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 288
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 650
    return-void
.end method

.method private static c(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 608
    invoke-static {p0}, Lcom/viber/voip/util/upload/ac;->d(Landroid/net/Uri;)[B

    move-result-object v2

    .line 609
    const-string/jumbo v1, ""

    .line 610
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 611
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v3, v2, v0

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x100

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 610
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 613
    :cond_0
    return-object v1
.end method

.method static synthetic c()Ljava/util/Map;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/viber/voip/util/upload/ac;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d()Ljava/util/Map;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/viber/voip/util/upload/ac;->d:Ljava/util/Map;

    return-object v0
.end method

.method private static d(Landroid/net/Uri;)[B
    .locals 5
    .parameter

    .prologue
    .line 617
    invoke-static {}, Lcom/viber/voip/util/upload/ac;->h()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 619
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 620
    const-string/jumbo v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 623
    :cond_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 624
    if-lez v3, :cond_1

    .line 625
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 627
    :cond_1
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 628
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 629
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/viber/voip/util/upload/ac;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/viber/voip/util/upload/ac;->h()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private static g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 603
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getHardwareParameters()Lcom/viber/voip/registration/HardwareParameters;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/registration/HardwareParameters;->getUdid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static h()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 653
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method
