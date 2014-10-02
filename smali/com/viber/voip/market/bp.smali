.class public Lcom/viber/voip/market/bp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/viber/voip/market/bq;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/viber/voip/market/bq;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/viber/voip/market/bp;->b:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/viber/voip/market/bp;->a:Lcom/viber/voip/market/bq;

    .line 18
    return-void
.end method


# virtual methods
.method protected varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 22
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 23
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p2

    if-ge v1, v0, :cond_6

    .line 24
    aget-object v0, p2, v1

    .line 25
    if-nez v0, :cond_1

    .line 23
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 27
    :cond_1
    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    .line 28
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 51
    :goto_2
    return-void

    .line 29
    :cond_2
    :try_start_1
    instance-of v3, v0, Ljava/lang/Long;

    if-eqz v3, :cond_3

    .line 30
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 31
    :cond_3
    instance-of v3, v0, Ljava/lang/Double;

    if-eqz v3, :cond_4

    .line 32
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 33
    :cond_4
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 34
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 35
    :cond_5
    instance-of v3, v0, Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    .line 36
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 39
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    iget-object v1, p0, Lcom/viber/voip/market/bp;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x28

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 42
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .line 43
    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    :cond_7
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/viber/voip/market/bp;->a:Lcom/viber/voip/market/bq;

    invoke-interface {v1, v0}, Lcom/viber/voip/market/bq;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
