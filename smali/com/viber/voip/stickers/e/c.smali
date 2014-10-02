.class public Lcom/viber/voip/stickers/e/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:Ljava/lang/Integer;

.field private static d:Ljava/lang/Integer;

.field private static e:Ljava/lang/Long;

.field private static f:Landroid/app/PendingIntent;

.field private static final g:J

.field private static h:Landroid/content/BroadcastReceiver;

.field private static i:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/viber/voip/stickers/e/c;->a:Z

    .line 56
    sget-boolean v0, Lcom/viber/voip/stickers/e/c;->a:Z

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x1d4c0

    :goto_0
    sput-wide v0, Lcom/viber/voip/stickers/e/c;->g:J

    return-void

    :cond_0
    const-wide/32 v0, 0x5265c00

    goto :goto_0
.end method

.method public static declared-synchronized a()I
    .locals 3

    .prologue
    .line 63
    const-class v1, Lcom/viber/voip/stickers/e/c;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/viber/voip/stickers/e/c;->h()Z

    .line 64
    invoke-static {}, Lcom/viber/voip/stickers/e/c;->b()I

    move-result v0

    invoke-static {}, Lcom/viber/voip/stickers/e/c;->j()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    sub-int/2addr v0, v2

    .line 65
    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    monitor-exit v1

    return v0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lorg/json/JSONObject;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-static {p0}, Lcom/viber/voip/stickers/e/c;->b(Lorg/json/JSONObject;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-static {p0}, Lcom/viber/voip/stickers/e/c;->b(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)V
    .locals 2
    .parameter

    .prologue
    .line 164
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/stickers/e/c;->c:Ljava/lang/Integer;

    .line 165
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "all_sticker_pack_count"

    invoke-interface {v0, v1, p0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 166
    return-void
.end method

.method static synthetic a(J)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcom/viber/voip/stickers/e/c;->b(J)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 69
    const-string/jumbo v0, "onOpenStickerMarket"

    invoke-static {v0}, Lcom/viber/voip/stickers/e/c;->b(Ljava/lang/String;)V

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.stickers.notification.OPEN_STICKER_MARKET_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 71
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-static {p0}, Lcom/viber/voip/stickers/e/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Z)Z
    .locals 0
    .parameter

    .prologue
    .line 34
    sput-boolean p0, Lcom/viber/voip/stickers/e/c;->b:Z

    return p0
.end method

.method public static b()I
    .locals 3

    .prologue
    .line 140
    sget-object v0, Lcom/viber/voip/stickers/e/c;->c:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 141
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "all_sticker_pack_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/stickers/e/c;->c:Ljava/lang/Integer;

    .line 143
    :cond_0
    sget-object v0, Lcom/viber/voip/stickers/e/c;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static b(Lorg/json/JSONObject;)I
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 231
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    .line 232
    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v0

    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/viber/voip/registration/cp;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 235
    const/4 v0, 0x0

    .line 236
    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getHardwareParameters()Lcom/viber/voip/registration/HardwareParameters;

    move-result-object v3

    invoke-interface {v3}, Lcom/viber/voip/registration/HardwareParameters;->getMCC()Ljava/lang/String;

    move-result-object v3

    .line 237
    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getHardwareParameters()Lcom/viber/voip/registration/HardwareParameters;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/registration/HardwareParameters;->getMNC()Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/viber/voip/registration/cp;->e()Ljava/lang/String;

    move-result-object v7

    .line 240
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 241
    const-string/jumbo v0, "%s/%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v2

    const/4 v3, 0x1

    aput-object v1, v4, v3

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 253
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    move v3, v2

    move v4, v2

    move v5, v2

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 254
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 259
    :try_start_0
    const-string/jumbo v9, ""

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 260
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    :cond_0
    :goto_2
    move v0, v2

    move v2, v3

    move v3, v4

    move v4, v5

    :goto_3
    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v0

    .line 271
    goto :goto_1

    .line 261
    :cond_1
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 262
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    .line 263
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 264
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    .line 265
    :cond_3
    if-eqz v7, :cond_0

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 266
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_2

    .line 268
    :catch_0
    move-exception v0

    .line 269
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move v0, v2

    move v2, v3

    move v3, v4

    move v4, v5

    goto :goto_3

    .line 273
    :cond_4
    if-eqz v5, :cond_5

    .line 280
    :goto_4
    return v5

    .line 275
    :cond_5
    if-eqz v3, :cond_6

    move v5, v3

    .line 276
    goto :goto_4

    .line 277
    :cond_6
    if-eqz v4, :cond_7

    move v5, v4

    .line 278
    goto :goto_4

    :cond_7
    move v5, v2

    .line 280
    goto :goto_4

    :cond_8
    move-object v1, v0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .locals 3
    .parameter

    .prologue
    .line 214
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 218
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v0

    .line 220
    :cond_0
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "got JSON: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/stickers/e/c;->b(Ljava/lang/String;)V

    .line 221
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 225
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v0
.end method

.method static synthetic b(I)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-static {p0}, Lcom/viber/voip/stickers/e/c;->c(I)V

    return-void
.end method

.method private static b(J)V
    .locals 2
    .parameter

    .prologue
    .line 154
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/stickers/e/c;->e:Ljava/lang/Long;

    .line 155
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "update_pack_count_time"

    invoke-interface {v0, v1, p0, p1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;J)Lcom/viber/voip/settings/l;

    .line 156
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 74
    new-instance v0, Lcom/viber/voip/stickers/e/d;

    invoke-direct {v0}, Lcom/viber/voip/stickers/e/d;-><init>()V

    sput-object v0, Lcom/viber/voip/stickers/e/c;->h:Landroid/content/BroadcastReceiver;

    .line 82
    new-instance v0, Lcom/viber/voip/stickers/e/e;

    invoke-direct {v0}, Lcom/viber/voip/stickers/e/e;-><init>()V

    sput-object v0, Lcom/viber/voip/stickers/e/c;->i:Landroid/content/BroadcastReceiver;

    .line 91
    sget-object v0, Lcom/viber/voip/stickers/e/c;->h:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.viber.voip.stickers.notification.CHECK_STICKER_PACKAGES_COUNT_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    sget-object v0, Lcom/viber/voip/stickers/e/c;->i:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.viber.voip.stickers.notification.OPEN_STICKER_MARKET_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.stickers.notification.CHECK_STICKER_PACKAGES_COUNT_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x800

    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/stickers/e/c;->f:Landroid/app/PendingIntent;

    .line 96
    invoke-static {}, Lcom/viber/voip/stickers/e/c;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/viber/voip/stickers/e/c;->e(Landroid/content/Context;)V

    .line 97
    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 285
    const/4 v0, 0x2

    const-string/jumbo v1, "NewStickerPackController"

    invoke-static {v0, v1, p0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public static c()V
    .locals 3

    .prologue
    .line 169
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.stickers.notification.UPDATE_STICKER_PACKAGES_COUNT_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 170
    return-void
.end method

.method private static c(I)V
    .locals 2
    .parameter

    .prologue
    .line 159
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/stickers/e/c;->d:Ljava/lang/Integer;

    .line 160
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "watched_sticker_pack_count"

    invoke-interface {v0, v1, p0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 161
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 107
    sget-object v0, Lcom/viber/voip/stickers/e/c;->h:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 108
    sget-object v0, Lcom/viber/voip/stickers/e/c;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 109
    sput-object v1, Lcom/viber/voip/stickers/e/c;->h:Landroid/content/BroadcastReceiver;

    .line 111
    :cond_0
    sget-object v0, Lcom/viber/voip/stickers/e/c;->i:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 112
    sget-object v0, Lcom/viber/voip/stickers/e/c;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 113
    sput-object v1, Lcom/viber/voip/stickers/e/c;->i:Landroid/content/BroadcastReceiver;

    .line 115
    :cond_1
    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 116
    sget-object v1, Lcom/viber/voip/stickers/e/c;->f:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 117
    return-void
.end method

.method static synthetic d(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-static {p0}, Lcom/viber/voip/stickers/e/c;->e(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic d()Z
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/viber/voip/stickers/e/c;->h()Z

    move-result v0

    return v0
.end method

.method static synthetic e()I
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/viber/voip/stickers/e/c;->j()I

    move-result v0

    return v0
.end method

.method private static e(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    .line 100
    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 101
    if-eqz v0, :cond_0

    sget-object v1, Lcom/viber/voip/stickers/e/c;->f:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 102
    const/4 v1, 0x0

    invoke-static {}, Lcom/viber/voip/stickers/e/c;->i()J

    move-result-wide v2

    sget-wide v4, Lcom/viber/voip/stickers/e/c;->g:J

    add-long/2addr v2, v4

    sget-object v4, Lcom/viber/voip/stickers/e/c;->f:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 104
    :cond_0
    return-void
.end method

.method static synthetic f()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/viber/voip/stickers/e/c;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/viber/voip/stickers/e/c;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method private static h()Z
    .locals 4

    .prologue
    .line 121
    :try_start_0
    sget-boolean v0, Lcom/viber/voip/stickers/e/c;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/viber/voip/stickers/e/c;->i()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/viber/voip/stickers/e/c;->g:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/ft;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const/4 v0, 0x1

    sput-boolean v0, Lcom/viber/voip/stickers/e/c;->b:Z

    .line 123
    invoke-static {}, Lcom/viber/voip/stickers/e/c;->k()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/viber/voip/stickers/e/c;->b:Z

    return v0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    const/4 v1, 0x0

    sput-boolean v1, Lcom/viber/voip/stickers/e/c;->b:Z

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/stickers/e/c;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static i()J
    .locals 4

    .prologue
    .line 133
    sget-object v0, Lcom/viber/voip/stickers/e/c;->e:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 134
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "update_pack_count_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/stickers/e/c;->e:Ljava/lang/Long;

    .line 136
    :cond_0
    sget-object v0, Lcom/viber/voip/stickers/e/c;->e:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static j()I
    .locals 3

    .prologue
    .line 147
    sget-object v0, Lcom/viber/voip/stickers/e/c;->d:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 148
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "watched_sticker_pack_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/stickers/e/c;->d:Ljava/lang/Integer;

    .line 150
    :cond_0
    sget-object v0, Lcom/viber/voip/stickers/e/c;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static k()V
    .locals 4

    .prologue
    .line 173
    sget-boolean v0, Lcom/viber/voip/stickers/e/c;->a:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "https://dl.dropboxusercontent.com/u/108762042/notifications.txt"

    .line 175
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestCountStickerPacksFromServer url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/stickers/e/c;->b(Ljava/lang/String;)V

    .line 176
    new-instance v1, Lcom/viber/voip/stickers/e/f;

    invoke-direct {v1}, Lcom/viber/voip/stickers/e/f;-><init>()V

    .line 209
    new-instance v2, Lcom/viber/voip/d/b;

    invoke-direct {v2}, Lcom/viber/voip/d/b;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Lcom/viber/voip/d/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/d/d;)Lcom/viber/voip/d/c;

    .line 210
    return-void

    .line 173
    :cond_0
    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/bd;->X:Ljava/lang/String;

    goto :goto_0
.end method
