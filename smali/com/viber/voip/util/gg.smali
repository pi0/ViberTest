.class Lcom/viber/voip/util/gg;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    invoke-static {}, Lcom/viber/voip/util/gg;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(JI)Lorg/json/JSONObject;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 214
    invoke-static {p0, p1, p2}, Lcom/viber/voip/util/gg;->b(JI)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILjava/util/Set;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/contacts/b/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    if-nez p1, :cond_0

    .line 250
    :goto_0
    return-void

    .line 225
    :cond_0
    sget-object v0, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/util/gh;

    invoke-direct {v1, p1, p0}, Lcom/viber/voip/util/gh;-><init>(Ljava/util/Set;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static a(JLcom/viber/voip/util/gi;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "doWatchContact watchedContactId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/fz;->a(Ljava/lang/String;)V

    .line 289
    :try_start_0
    invoke-static {}, Lcom/viber/voip/util/gg;->b()Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 291
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 292
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 293
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 294
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 295
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_2

    .line 296
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 297
    const-string/jumbo v6, "contactId"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 298
    const-string/jumbo v8, "watchedTime"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 299
    cmp-long v8, v6, p0

    if-nez v8, :cond_0

    .line 300
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 295
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 302
    :cond_0
    invoke-static {v6, v7, v0}, Lcom/viber/voip/util/gg;->b(JI)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 308
    :catch_0
    move-exception v0

    .line 309
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/fz;->a(Ljava/lang/String;)V

    .line 311
    :cond_1
    :goto_2
    return-void

    .line 305
    :cond_2
    if-eqz p2, :cond_3

    :try_start_1
    invoke-interface {p2, v5}, Lcom/viber/voip/util/gi;->a(Ljava/util/Set;)V

    .line 306
    :cond_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Lcom/viber/voip/util/gg;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string/jumbo v0, ""
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public static a(Lcom/viber/voip/util/gi;)V
    .locals 9
    .parameter

    .prologue
    .line 260
    const-string/jumbo v0, "doWatchContactList"

    invoke-static {v0}, Lcom/viber/voip/util/fz;->a(Ljava/lang/String;)V

    .line 262
    :try_start_0
    invoke-static {}, Lcom/viber/voip/util/gg;->b()Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 264
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 265
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 266
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 267
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 268
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_2

    .line 269
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 270
    const-string/jumbo v6, "contactId"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 271
    const-string/jumbo v8, "watchedTime"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 272
    add-int/lit8 v0, v0, 0x1

    const/4 v8, 0x2

    if-lt v0, v8, :cond_0

    .line 273
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 268
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 275
    :cond_0
    invoke-static {v6, v7, v0}, Lcom/viber/voip/util/gg;->b(JI)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 281
    :catch_0
    move-exception v0

    .line 282
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/fz;->a(Ljava/lang/String;)V

    .line 284
    :cond_1
    :goto_2
    return-void

    .line 278
    :cond_2
    if-eqz p0, :cond_3

    :try_start_1
    invoke-interface {p0, v3}, Lcom/viber/voip/util/gi;->a(Ljava/util/Set;)V

    .line 279
    :cond_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Lcom/viber/voip/util/gg;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string/jumbo v0, ""
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    invoke-static {p0}, Lcom/viber/voip/util/gg;->b(Ljava/lang/String;)V

    return-void
.end method

.method private static b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 314
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "json_watched"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCurrentData retValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/util/fz;->a(Ljava/lang/String;)V

    .line 316
    return-object v0
.end method

.method private static b(JI)Lorg/json/JSONObject;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 253
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 254
    const-string/jumbo v1, "contactId"

    invoke-virtual {v0, v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 255
    const-string/jumbo v1, "watchedTime"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 256
    return-object v0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCurrentData data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/fz;->a(Ljava/lang/String;)V

    .line 321
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "json_watched"

    invoke-interface {v0, v1, p0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 322
    return-void
.end method
