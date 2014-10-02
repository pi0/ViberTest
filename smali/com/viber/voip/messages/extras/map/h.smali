.class Lcom/viber/voip/messages/extras/map/h;
.super Lcom/viber/voip/messages/extras/map/e;
.source "SourceFile"


# instance fields
.field final synthetic d:Lcom/viber/voip/messages/extras/map/d;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/extras/map/d;DD)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, Lcom/viber/voip/messages/extras/map/h;->d:Lcom/viber/voip/messages/extras/map/d;

    .line 381
    invoke-direct/range {p0 .. p5}, Lcom/viber/voip/messages/extras/map/e;-><init>(Lcom/viber/voip/messages/extras/map/d;DD)V

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/messages/extras/map/h;->e:Ljava/lang/String;

    .line 383
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/messages/extras/map/d;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lcom/viber/voip/messages/extras/map/h;->d:Lcom/viber/voip/messages/extras/map/d;

    .line 376
    invoke-static {p1}, Lcom/viber/voip/messages/extras/map/d;->d(Lcom/viber/voip/messages/extras/map/d;)D

    move-result-wide v2

    invoke-static {p1}, Lcom/viber/voip/messages/extras/map/d;->e(Lcom/viber/voip/messages/extras/map/d;)D

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/extras/map/e;-><init>(Lcom/viber/voip/messages/extras/map/d;DD)V

    .line 377
    iput-object p2, p0, Lcom/viber/voip/messages/extras/map/h;->e:Ljava/lang/String;

    .line 378
    return-void
.end method


# virtual methods
.method public b()V
    .locals 13

    .prologue
    const/4 v0, 0x0

    const-wide v11, 0x412e848000000000L

    .line 387
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 389
    :try_start_0
    iget-object v1, p0, Lcom/viber/voip/messages/extras/map/h;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v3, p0, Lcom/viber/voip/messages/extras/map/h;->a:D

    iget-wide v5, p0, Lcom/viber/voip/messages/extras/map/h;->b:D

    invoke-static {v3, v4, v5, v6}, Lcom/viber/voip/messages/extras/map/d;->b(DD)Ljava/lang/String;

    move-result-object v1

    .line 390
    :goto_0
    const-string/jumbo v3, "[\' \']"

    const-string/jumbo v4, "+"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 391
    invoke-static {v1}, Lcom/viber/voip/ViberEnv;->newHttpRequest(Ljava/lang/String;)Lcom/viber/voip/util/http/HttpRequest;

    move-result-object v3

    .line 393
    iget-object v4, p0, Lcom/viber/voip/messages/extras/map/h;->d:Lcom/viber/voip/messages/extras/map/d;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Google Geocode request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/viber/voip/messages/extras/map/d;->a(Lcom/viber/voip/messages/extras/map/d;Ljava/lang/String;)V

    .line 394
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-interface {v3}, Lcom/viber/voip/util/http/HttpRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v4, v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 395
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 398
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 399
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 423
    :catch_0
    move-exception v0

    .line 425
    :try_start_1
    iget-object v1, p0, Lcom/viber/voip/messages/extras/map/h;->d:Lcom/viber/voip/messages/extras/map/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getGeocode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/viber/voip/messages/extras/map/d;->a(Lcom/viber/voip/messages/extras/map/d;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/h;->d:Lcom/viber/voip/messages/extras/map/d;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/map/d;->c(Lcom/viber/voip/messages/extras/map/d;)Lcom/viber/voip/messages/extras/map/j;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/viber/voip/messages/extras/map/k;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/messages/extras/map/k;

    invoke-interface {v1, v0}, Lcom/viber/voip/messages/extras/map/j;->a([Lcom/viber/voip/messages/extras/map/k;)V

    .line 431
    :goto_2
    return-void

    .line 389
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/viber/voip/messages/extras/map/h;->e:Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/messages/extras/map/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 401
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 403
    const-string/jumbo v3, "OK"

    const-string/jumbo v4, "status"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 404
    const-string/jumbo v3, "results"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 405
    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 406
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 407
    new-instance v4, Lcom/viber/voip/messages/extras/map/k;

    invoke-direct {v4}, Lcom/viber/voip/messages/extras/map/k;-><init>()V

    .line 408
    const-string/jumbo v5, "formatted_address"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 409
    invoke-virtual {v4, v5}, Lcom/viber/voip/messages/extras/map/k;->d(Ljava/lang/String;)V

    .line 410
    invoke-virtual {v4, v5}, Lcom/viber/voip/messages/extras/map/k;->e(Ljava/lang/String;)V

    .line 412
    const-string/jumbo v5, "geometry"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "location"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "lng"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 413
    const-string/jumbo v6, "geometry"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "location"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "lat"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 414
    new-instance v7, Lcom/viber/voip/messages/extras/map/b;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    mul-double/2addr v8, v11

    double-to-int v8, v8

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    mul-double/2addr v9, v11

    double-to-int v9, v9

    invoke-direct {v7, v8, v9}, Lcom/viber/voip/messages/extras/map/b;-><init>(II)V

    invoke-virtual {v4, v7}, Lcom/viber/voip/messages/extras/map/k;->a(Lcom/viber/voip/messages/extras/map/b;)V

    .line 415
    iget-object v7, p0, Lcom/viber/voip/messages/extras/map/h;->d:Lcom/viber/voip/messages/extras/map/d;

    invoke-static {v7}, Lcom/viber/voip/messages/extras/map/d;->a(Lcom/viber/voip/messages/extras/map/d;)Lcom/viber/dexshared/GMaps$Factory;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-interface {v7, v8, v9, v5, v6}, Lcom/viber/dexshared/GMaps$Factory;->newLatLng(DD)Lcom/viber/dexshared/GMaps$LatLng;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/viber/voip/messages/extras/map/k;->a(Lcom/viber/dexshared/GMaps$LatLng;)V

    .line 417
    const-string/jumbo v5, "types"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 418
    invoke-virtual {v4, v3}, Lcom/viber/voip/messages/extras/map/k;->a(Ljava/lang/String;)V

    .line 420
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_1

    .line 405
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 429
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/h;->d:Lcom/viber/voip/messages/extras/map/d;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/map/d;->c(Lcom/viber/voip/messages/extras/map/d;)Lcom/viber/voip/messages/extras/map/j;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/viber/voip/messages/extras/map/k;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/messages/extras/map/k;

    invoke-interface {v1, v0}, Lcom/viber/voip/messages/extras/map/j;->a([Lcom/viber/voip/messages/extras/map/k;)V

    goto/16 :goto_2

    .line 426
    :catch_1
    move-exception v0

    .line 427
    :try_start_3
    iget-object v1, p0, Lcom/viber/voip/messages/extras/map/h;->d:Lcom/viber/voip/messages/extras/map/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getGeocode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/viber/voip/messages/extras/map/d;->a(Lcom/viber/voip/messages/extras/map/d;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 429
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/h;->d:Lcom/viber/voip/messages/extras/map/d;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/map/d;->c(Lcom/viber/voip/messages/extras/map/d;)Lcom/viber/voip/messages/extras/map/j;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/viber/voip/messages/extras/map/k;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/messages/extras/map/k;

    invoke-interface {v1, v0}, Lcom/viber/voip/messages/extras/map/j;->a([Lcom/viber/voip/messages/extras/map/k;)V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/h;->d:Lcom/viber/voip/messages/extras/map/d;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/map/d;->c(Lcom/viber/voip/messages/extras/map/d;)Lcom/viber/voip/messages/extras/map/j;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/viber/voip/messages/extras/map/k;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/messages/extras/map/k;

    invoke-interface {v3, v0}, Lcom/viber/voip/messages/extras/map/j;->a([Lcom/viber/voip/messages/extras/map/k;)V

    throw v1
.end method
