.class public Lcom/viber/voip/util/bb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/text/SimpleDateFormat;

.field private static final k:Ljava/lang/String;


# instance fields
.field private b:J

.field private c:J

.field private d:J

.field private e:J

.field private f:Z

.field private g:Ljava/util/Calendar;

.field private h:J

.field private i:J

.field private j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/viber/voip/util/bc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/viber/voip/util/bb;->a:Ljava/text/SimpleDateFormat;

    .line 257
    const-class v0, Lcom/viber/voip/util/bb;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/util/bb;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/util/bb;->g:Ljava/util/Calendar;

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/util/bb;->b(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/util/bb;->h:J

    .line 44
    iget-wide v0, p0, Lcom/viber/voip/util/bb;->h:J

    iget-wide v2, p0, Lcom/viber/voip/util/bb;->e:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/viber/voip/util/bb;->i:J

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ctor cur day: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/util/bb;->h:J

    invoke-direct {p0, v1, v2}, Lcom/viber/voip/util/bb;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", next day:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/util/bb;->i:J

    invoke-direct {p0, v1, v2}, Lcom/viber/voip/util/bb;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/bb;->d(Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "DOWNLOAD_VALVE_DEBUG_ENABLED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/util/bb;->a(Z)V

    .line 47
    invoke-direct {p0}, Lcom/viber/voip/util/bb;->a()V

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/util/bb;)J
    .locals 2
    .parameter

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/viber/voip/util/bb;->b:J

    return-wide v0
.end method

.method static synthetic a(Lcom/viber/voip/util/bb;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/viber/voip/util/bb;->h:J

    return-wide p1
.end method

.method private a(J)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 180
    sget-object v0, Lcom/viber/voip/util/bb;->a:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 7

    .prologue
    .line 198
    const-string/jumbo v0, "load"

    invoke-static {v0}, Lcom/viber/voip/util/bb;->d(Ljava/lang/String;)V

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/util/bb;->j:Ljava/util/HashMap;

    .line 201
    :try_start_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "DOWNLOAD_VALVE_DATA"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 203
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 204
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 205
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 206
    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 207
    new-instance v4, Lcom/viber/voip/util/bc;

    invoke-direct {v4, p0, v3}, Lcom/viber/voip/util/bc;-><init>(Lcom/viber/voip/util/bb;Ljava/lang/String;)V

    .line 208
    const-string/jumbo v5, "count"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/viber/voip/util/bc;->c:I

    .line 209
    const-string/jumbo v5, "global_count"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 210
    const-string/jumbo v5, "global_count"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/viber/voip/util/bc;->d:I

    .line 212
    :cond_0
    const-string/jumbo v5, "time"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/viber/voip/util/bc;->b:J

    .line 214
    iget-object v2, p0, Lcom/viber/voip/util/bb;->j:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 220
    :cond_1
    invoke-direct {p0}, Lcom/viber/voip/util/bb;->c()V

    .line 221
    return-void
.end method

.method private b(J)J
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0xc

    const/4 v2, 0x0

    .line 184
    iget-object v0, p0, Lcom/viber/voip/util/bb;->g:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 185
    iget-boolean v0, p0, Lcom/viber/voip/util/bb;->f:Z

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/viber/voip/util/bb;->g:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 187
    iget-object v0, p0, Lcom/viber/voip/util/bb;->g:Ljava/util/Calendar;

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 192
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/util/bb;->g:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 193
    iget-object v0, p0, Lcom/viber/voip/util/bb;->g:Ljava/util/Calendar;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 194
    iget-object v0, p0, Lcom/viber/voip/util/bb;->g:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/util/bb;->g:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/viber/voip/util/bb;->g:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/viber/voip/util/bb;)J
    .locals 2
    .parameter

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/viber/voip/util/bb;->c:J

    return-wide v0
.end method

.method static synthetic b(Lcom/viber/voip/util/bb;J)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/util/bb;->b(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private b()V
    .locals 7

    .prologue
    .line 224
    const-string/jumbo v0, "save"

    invoke-static {v0}, Lcom/viber/voip/util/bb;->d(Ljava/lang/String;)V

    .line 225
    invoke-direct {p0}, Lcom/viber/voip/util/bb;->c()V

    .line 227
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 228
    iget-object v0, p0, Lcom/viber/voip/util/bb;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 229
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 230
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 231
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/util/bc;

    .line 232
    const-string/jumbo v5, "url"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    const-string/jumbo v1, "count"

    iget v5, v0, Lcom/viber/voip/util/bc;->c:I

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 234
    const-string/jumbo v1, "global_count"

    iget v5, v0, Lcom/viber/voip/util/bc;->d:I

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 235
    const-string/jumbo v1, "time"

    iget-wide v5, v0, Lcom/viber/voip/util/bc;->b:J

    invoke-virtual {v4, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 236
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 243
    :goto_1
    return-void

    .line 238
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    const-string/jumbo v2, "DOWNLOAD_VALVE_DATA"

    invoke-interface {v1, v2, v0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static synthetic c(Lcom/viber/voip/util/bb;)J
    .locals 2
    .parameter

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/viber/voip/util/bb;->d:J

    return-wide v0
.end method

.method static synthetic c(Lcom/viber/voip/util/bb;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/viber/voip/util/bb;->i:J

    return-wide p1
.end method

.method private c()V
    .locals 2

    .prologue
    .line 246
    const-string/jumbo v0, "ITEMS BEGIN"

    invoke-static {v0}, Lcom/viber/voip/util/bb;->d(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/viber/voip/util/bb;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 248
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/util/bc;

    .line 249
    invoke-virtual {v0}, Lcom/viber/voip/util/bc;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/bb;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :cond_0
    const-string/jumbo v0, "ITEMS END"

    invoke-static {v0}, Lcom/viber/voip/util/bb;->d(Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method static synthetic d(Lcom/viber/voip/util/bb;)J
    .locals 2
    .parameter

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/viber/voip/util/bb;->i:J

    return-wide v0
.end method

.method static synthetic d(Lcom/viber/voip/util/bb;J)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/util/bb;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    return-void
.end method

.method static synthetic e(Lcom/viber/voip/util/bb;)J
    .locals 2
    .parameter

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/viber/voip/util/bb;->h:J

    return-wide v0
.end method

.method private e(Ljava/lang/String;)J
    .locals 5
    .parameter

    .prologue
    .line 111
    .line 112
    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/util/bb;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/util/bc;

    .line 114
    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/viber/voip/util/bc;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/util/bc;-><init>(Lcom/viber/voip/util/bb;Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/viber/voip/util/bb;->j:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_0
    invoke-virtual {v0}, Lcom/viber/voip/util/bc;->b()V

    .line 119
    iget v1, v0, Lcom/viber/voip/util/bc;->d:I

    int-to-long v1, v1

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportError: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/bb;->d(Ljava/lang/String;)V

    .line 121
    invoke-direct {p0}, Lcom/viber/voip/util/bb;->b()V

    .line 122
    monitor-exit p0

    .line 123
    return-wide v1

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic f(Lcom/viber/voip/util/bb;)J
    .locals 2
    .parameter

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/viber/voip/util/bb;->e:J

    return-wide v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/viber/voip/util/bb;->e(Ljava/lang/String;)J

    move-result-wide v0

    .line 83
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v2

    const-string/jumbo v3, "General"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "corrupted_pack_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Content"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/viber/voip/a/bc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 84
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reportDownloadStatus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/bb;->d(Ljava/lang/String;)V

    .line 76
    if-lez p2, :cond_0

    const/16 v0, 0xc8

    if-lt p2, v0, :cond_1

    :cond_0
    const/16 v0, 0x12c

    if-lt p2, v0, :cond_2

    .line 77
    :cond_1
    invoke-direct {p0, p1}, Lcom/viber/voip/util/bb;->e(Ljava/lang/String;)J

    .line 79
    :cond_2
    return-void
.end method

.method public a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 54
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "DOWNLOAD_VALVE_DEBUG_ENABLED"

    invoke-interface {v0, v1, p1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 55
    iput-boolean p1, p0, Lcom/viber/voip/util/bb;->f:Z

    .line 56
    if-nez p1, :cond_0

    .line 57
    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/viber/voip/util/bb;->b:J

    .line 58
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/viber/voip/util/bb;->c:J

    .line 59
    const-wide/32 v0, 0x6ddd00

    iput-wide v0, p0, Lcom/viber/voip/util/bb;->d:J

    .line 60
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/viber/voip/util/bb;->e:J

    .line 67
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "debug: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/util/bb;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/bb;->d(Ljava/lang/String;)V

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "minTimeAfterAttempt1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/util/bb;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/bb;->d(Ljava/lang/String;)V

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "minTimeAfterAttempt2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/util/bb;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/bb;->d(Ljava/lang/String;)V

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "minTimeAfterAttempt3: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/util/bb;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/bb;->d(Ljava/lang/String;)V

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "millisInDay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/util/bb;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/bb;->d(Ljava/lang/String;)V

    .line 72
    return-void

    .line 62
    :cond_0
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/viber/voip/util/bb;->b:J

    .line 63
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/viber/voip/util/bb;->c:J

    .line 64
    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/viber/voip/util/bb;->d:J

    .line 65
    const-wide/32 v0, 0x2bf20

    iput-wide v0, p0, Lcom/viber/voip/util/bb;->e:J

    goto/16 :goto_0
.end method

.method public declared-synchronized b(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/util/bb;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/util/bc;

    .line 88
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Lcom/viber/voip/util/bc;->d()Z

    move-result v1

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "allowDownload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/bb;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 94
    :goto_0
    monitor-exit p0

    return v0

    .line 93
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "allowDownload: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/bb;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    const/4 v0, 0x1

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/util/bb;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/util/bc;

    .line 100
    if-eqz v0, :cond_0

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportSuccessfulDownload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/bb;->d(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/viber/voip/util/bb;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-direct {p0}, Lcom/viber/voip/util/bb;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :goto_0
    monitor-exit p0

    return-void

    .line 105
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reportSuccessfulDownload: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/bb;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
