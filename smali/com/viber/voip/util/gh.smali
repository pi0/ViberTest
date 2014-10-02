.class final Lcom/viber/voip/util/gh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:I


# direct methods
.method constructor <init>(Ljava/util/Set;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/viber/voip/util/gh;->a:Ljava/util/Set;

    iput p2, p0, Lcom/viber/voip/util/gh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 229
    :try_start_0
    invoke-static {}, Lcom/viber/voip/util/gg;->a()Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    move-object v3, v1

    .line 232
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v2, v0

    move v1, v0

    .line 233
    :goto_1
    if-ge v2, v4, :cond_1

    .line 234
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 235
    const-string/jumbo v5, "watchedTime"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 236
    if-eqz v0, :cond_3

    .line 237
    add-int/lit8 v0, v1, 0x1

    .line 233
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 230
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-static {}, Lcom/viber/voip/util/gg;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object v3, v1

    goto :goto_0

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/util/gh;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/h;

    .line 241
    invoke-interface {v0}, Lcom/viber/voip/contacts/b/h;->getId()J

    move-result-wide v4

    const/4 v0, 0x0

    invoke-static {v4, v5, v0}, Lcom/viber/voip/util/gg;->a(JI)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 245
    :catch_0
    move-exception v0

    .line 246
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/fz;->a(Ljava/lang/String;)V

    .line 248
    :goto_4
    return-void

    .line 243
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v2, "recents_count"

    iget v4, p0, Lcom/viber/voip/util/gh;->b:I

    sub-int v1, v4, v1

    invoke-interface {v0, v2, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 244
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gg;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :cond_3
    move v0, v1

    goto :goto_2
.end method
