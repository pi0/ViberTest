.class public Lcom/viber/voip/util/ak;
.super Landroid/text/format/DateUtils;
.source "SourceFile"


# static fields
.field private static final a:Ljava/text/SimpleDateFormat;

.field private static final b:Ljava/text/SimpleDateFormat;

.field private static c:Ljava/util/Date;

.field private static d:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "H:mm"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/viber/voip/util/ak;->a:Ljava/text/SimpleDateFormat;

    .line 23
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "h:mm a"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/viber/voip/util/ak;->b:Ljava/text/SimpleDateFormat;

    .line 67
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/viber/voip/util/ak;->c:Ljava/util/Date;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/viber/voip/util/ak;->d:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static a(J)Ljava/lang/String;
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const-wide/16 v4, 0xe10

    const-wide/16 v8, 0x3c

    const-wide/16 v2, 0x0

    .line 116
    .line 121
    cmp-long v0, p0, v4

    if-ltz v0, :cond_2

    .line 122
    div-long v0, p0, v4

    .line 123
    mul-long/2addr v4, v0

    sub-long v4, p0, v4

    move-wide v6, v0

    .line 125
    :goto_0
    cmp-long v0, v4, v8

    if-ltz v0, :cond_1

    .line 126
    div-long v0, v4, v8

    .line 127
    mul-long/2addr v8, v0

    sub-long/2addr v4, v8

    .line 131
    :goto_1
    cmp-long v2, v6, v2

    if-lez v2, :cond_0

    .line 132
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "%d:%02d:%02d"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v8, v10

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v8, v11

    const/4 v0, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v8, v0

    invoke-static {v2, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 134
    :goto_2
    return-object v0

    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "%02d:%02d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v11

    invoke-static {v2, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    move-wide v0, v2

    goto :goto_1

    :cond_2
    move-wide v6, v2

    move-wide v4, p0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 97
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 98
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    sget-object v1, Lcom/viber/voip/util/ak;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 101
    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/viber/voip/util/ak;->b:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/viber/voip/util/ak;->a(Landroid/content/Context;JZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;JZLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 78
    :cond_0
    sget-object v0, Lcom/viber/voip/util/ak;->c:Ljava/util/Date;

    invoke-virtual {v0, p1, p2}, Ljava/util/Date;->setTime(J)V

    .line 80
    sget-object v0, Lcom/viber/voip/util/ak;->d:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 81
    invoke-static {p1, p2}, Lcom/viber/voip/util/ak;->isToday(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    sget-object v0, Lcom/viber/voip/util/ak;->d:Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/util/ak;->c:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :cond_1
    :goto_0
    sget-object v0, Lcom/viber/voip/util/ak;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 84
    :cond_2
    if-eqz p4, :cond_3

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 85
    sget-object v0, Lcom/viber/voip/util/ak;->d:Ljava/lang/StringBuilder;

    invoke-static {p4, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 89
    :goto_1
    if-eqz p3, :cond_1

    .line 90
    sget-object v0, Lcom/viber/voip/util/ak;->d:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    sget-object v3, Lcom/viber/voip/util/ak;->c:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 87
    :cond_3
    sget-object v0, Lcom/viber/voip/util/ak;->d:Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/util/ak;->c:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static a(JJ)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
