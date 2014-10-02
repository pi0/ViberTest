.class public Lcom/viber/voip/user/StatisticsUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AMOUNT_NUMBERS:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final MB_STRING:Ljava/lang/String; = " MB"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/viber/voip/user/StatisticsUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/user/StatisticsUtil;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAll3GTraffic()J
    .locals 13

    .prologue
    .line 49
    const-wide/16 v1, -0x1

    .line 51
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v3

    .line 52
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    .line 53
    add-long v0, v3, v5

    .line 54
    const/4 v2, 0x3

    :try_start_1
    sget-object v7, Lcom/viber/voip/user/StatisticsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getAll3GTraffic in: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", out: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", resByte: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v7, v3}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    .line 58
    :goto_0
    return-wide v0

    .line 55
    :catch_0
    move-exception v0

    move-object v10, v0

    move-wide v11, v1

    move-wide v0, v11

    move-object v2, v10

    .line 56
    :goto_1
    const/4 v3, 0x6

    sget-object v4, Lcom/viber/voip/user/StatisticsUtil;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private static getMbFromBytes(DI)D
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 40
    .line 42
    double-to-float v0, p0

    const/high16 v1, 0x4980

    div-float/2addr v0, v1

    .line 43
    new-instance v1, Ljava/math/BigDecimal;

    float-to-double v2, v0

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 44
    const/4 v0, 0x4

    invoke-virtual {v1, p2, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static getRecMsgStatisticsCount(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 100
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "msg_received"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSentMsgStatisticsCount(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 104
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "msg_sent"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getViber3GStatistic(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 64
    :try_start_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    const-string/jumbo v2, "3g_data"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;J)J

    move-result-wide v1

    .line 65
    invoke-static {}, Lcom/viber/voip/user/StatisticsUtil;->getAll3GTraffic()J

    move-result-wide v3

    sub-long v1, v3, v1

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v1, v1

    const/4 v4, 0x2

    invoke-static {v1, v2, v4}, Lcom/viber/voip/user/StatisticsUtil;->getMbFromBytes(DI)D

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " MB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    .line 67
    :catch_0
    move-exception v1

    .line 68
    const/4 v2, 0x6

    sget-object v3, Lcom/viber/voip/user/StatisticsUtil;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getViberWifiStatistic(Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .parameter

    .prologue
    .line 74
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 75
    const/4 v0, 0x0

    .line 77
    :try_start_0
    invoke-static {v1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    .line 78
    invoke-static {v1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v4

    .line 79
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    const-string/jumbo v6, "wifi_data"

    const-wide/16 v7, 0x0

    invoke-interface {v1, v6, v7, v8}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;J)J

    move-result-wide v6

    .line 80
    add-long v8, v2, v4

    sub-long/2addr v8, v6

    .line 81
    const/4 v1, 0x3

    sget-object v10, Lcom/viber/voip/user/StatisticsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getWifiStatistic in: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", out: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", resetBytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", resByte: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v10, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v2, v8

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/viber/voip/user/StatisticsUtil;->getMbFromBytes(DI)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " MB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    .line 83
    :catch_0
    move-exception v1

    .line 84
    const/4 v2, 0x6

    sget-object v3, Lcom/viber/voip/user/StatisticsUtil;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static incRecMsgStatisticsCount(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 90
    invoke-static {p0}, Lcom/viber/voip/user/StatisticsUtil;->getRecMsgStatisticsCount(Landroid/content/Context;)I

    move-result v0

    .line 91
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    const-string/jumbo v2, "msg_received"

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v2, v0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 92
    return-void
.end method

.method public static incSentMsgStatisticsCount(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 95
    invoke-static {p0}, Lcom/viber/voip/user/StatisticsUtil;->getSentMsgStatisticsCount(Landroid/content/Context;)I

    move-result v0

    .line 96
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    const-string/jumbo v2, "msg_sent"

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v2, v0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 97
    return-void
.end method

.method public static resetUsageStatistic(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    .line 25
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/settings/k;->b:Ljava/util/Set;

    invoke-interface {v0, v1}, Lcom/viber/voip/settings/l;->a(Ljava/util/Set;)Lcom/viber/voip/settings/l;

    .line 28
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 29
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v1

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v3

    add-long v0, v1, v3

    .line 30
    invoke-static {}, Lcom/viber/voip/user/StatisticsUtil;->getAll3GTraffic()J

    move-result-wide v2

    .line 32
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v4

    const-string/jumbo v5, "wifi_data"

    invoke-interface {v4, v5, v0, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;J)Lcom/viber/voip/settings/l;

    .line 33
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "3g_data"

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;J)Lcom/viber/voip/settings/l;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    const/4 v1, 0x6

    sget-object v2, Lcom/viber/voip/user/StatisticsUtil;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
