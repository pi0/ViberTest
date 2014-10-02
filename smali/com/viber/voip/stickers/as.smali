.class public Lcom/viber/voip/stickers/as;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/viber/voip/stickers/r;

.field private d:Landroid/os/Handler;

.field private e:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/viber/voip/stickers/as;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/stickers/as;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/stickers/r;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/stickers/as;->b:Ljava/util/List;

    .line 45
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/stickers/as;->d:Landroid/os/Handler;

    .line 46
    sget-object v0, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/stickers/as;->e:Landroid/os/Handler;

    .line 49
    iput-object p1, p0, Lcom/viber/voip/stickers/as;->c:Lcom/viber/voip/stickers/r;

    .line 50
    return-void
.end method

.method private a(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 86
    const-string/jumbo v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 1
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/viber/voip/stickers/as;->c:Lcom/viber/voip/stickers/r;

    invoke-virtual {v0, p1}, Lcom/viber/voip/stickers/r;->h(I)V

    .line 212
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/stickers/as;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/viber/voip/stickers/as;->c()V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/stickers/as;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/viber/voip/stickers/as;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/stickers/as;Lcom/viber/voip/stickers/ax;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/viber/voip/stickers/as;->a(Lcom/viber/voip/stickers/ax;)V

    return-void
.end method

.method private a(Lcom/viber/voip/stickers/ax;)V
    .locals 2
    .parameter

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updatePromotedPackages(), promo ids: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/stickers/as;->b:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/viber/voip/stickers/as;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/stickers/as;->a(Ljava/lang/String;)V

    .line 117
    iget-object v0, p1, Lcom/viber/voip/stickers/ax;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/viber/voip/stickers/as;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    const-string/jumbo v0, "updatePromotedPackages(), updating promo packages"

    invoke-static {v0}, Lcom/viber/voip/stickers/as;->a(Ljava/lang/String;)V

    .line 119
    iget-object v0, p1, Lcom/viber/voip/stickers/ax;->a:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/viber/voip/stickers/as;->b:Ljava/util/List;

    .line 120
    iget-object v0, p0, Lcom/viber/voip/stickers/as;->c:Lcom/viber/voip/stickers/r;

    iget-object v1, p0, Lcom/viber/voip/stickers/as;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/viber/voip/stickers/r;->a(Ljava/util/List;)V

    .line 123
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/stickers/as;->c()V

    .line 124
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 223
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/stickers/as;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/viber/voip/stickers/as;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/viber/voip/stickers/as;)Lcom/viber/voip/stickers/ax;
    .locals 1
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/viber/voip/stickers/as;->d()Lcom/viber/voip/stickers/ax;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/viber/voip/stickers/as;->e:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/stickers/au;

    invoke-direct {v1, p0}, Lcom/viber/voip/stickers/au;-><init>(Lcom/viber/voip/stickers/as;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    return-void
.end method

.method static synthetic d(Lcom/viber/voip/stickers/as;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/viber/voip/stickers/as;->d:Landroid/os/Handler;

    return-object v0
.end method

.method private d()Lcom/viber/voip/stickers/ax;
    .locals 14

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    .line 129
    :try_start_0
    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/bd;->X:Ljava/lang/String;

    .line 130
    invoke-static {v0}, Lcom/viber/voip/ViberEnv;->newHttpRequest(Ljava/lang/String;)Lcom/viber/voip/util/http/HttpRequest;

    move-result-object v0

    .line 131
    invoke-interface {v0}, Lcom/viber/voip/util/http/HttpRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 132
    invoke-static {v0}, Lcom/viber/voip/billing/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 134
    new-instance v5, Lcom/viber/voip/stickers/ax;

    const/4 v1, 0x0

    invoke-direct {v5, v1}, Lcom/viber/voip/stickers/ax;-><init>(Lcom/viber/voip/stickers/at;)V

    .line 136
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 137
    const-string/jumbo v0, "promo"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/registration/cp;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 139
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/registration/cp;->e()Ljava/lang/String;

    move-result-object v10

    .line 143
    if-nez v0, :cond_2

    move-object v4, v6

    .line 173
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v9, v0, v2

    .line 180
    if-eqz v4, :cond_a

    .line 181
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_a

    .line 182
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 183
    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 181
    :cond_1
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 150
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v11

    move-object v2, v6

    move-object v3, v6

    move-object v4, v6

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 151
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 155
    const-string/jumbo v12, ""

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 156
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    move-object v2, v3

    move-object v3, v4

    :goto_4
    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    .line 162
    goto :goto_3

    .line 157
    :cond_3
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 158
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    move-object v3, v4

    move-object v13, v1

    move-object v1, v2

    move-object v2, v13

    goto :goto_4

    .line 159
    :cond_4
    if-eqz v10, :cond_c

    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 160
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    move-object v13, v2

    move-object v2, v3

    move-object v3, v1

    move-object v1, v13

    goto :goto_4

    .line 164
    :cond_5
    if-nez v4, :cond_0

    .line 166
    if-eqz v3, :cond_6

    move-object v4, v3

    .line 167
    goto :goto_0

    .line 168
    :cond_6
    if-eqz v2, :cond_b

    move-object v4, v2

    .line 169
    goto :goto_0

    .line 185
    :cond_7
    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 186
    const-string/jumbo v1, "expires"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string/jumbo v1, "expires"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v1, v11, v7

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v9, v0

    if-gez v0, :cond_1

    .line 193
    :cond_8
    iget-object v0, v5, Lcom/viber/voip/stickers/ax;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_2

    .line 197
    :catch_0
    move-exception v0

    .line 198
    const-string/jumbo v1, "Error fetching package promotions"

    invoke-static {v1, v0}, Lcom/viber/voip/stickers/as;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_6
    move-object v0, v6

    .line 207
    :goto_7
    return-object v0

    :cond_9
    move-wide v0, v7

    .line 186
    goto :goto_5

    :cond_a
    move-object v0, v5

    .line 196
    goto :goto_7

    .line 200
    :catch_1
    move-exception v0

    .line 201
    const-string/jumbo v1, "Error fetching package promotions"

    invoke-static {v1, v0}, Lcom/viber/voip/stickers/as;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 203
    :catch_2
    move-exception v0

    .line 204
    const-string/jumbo v1, "Error parsing package promotions"

    invoke-static {v1, v0}, Lcom/viber/voip/stickers/as;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_6

    :cond_b
    move-object v4, v6

    goto/16 :goto_0

    :cond_c
    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_4
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 53
    const-string/jumbo v0, "ctor, scheduling download of pending icons in 5000ms"

    invoke-static {v0}, Lcom/viber/voip/stickers/as;->a(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/viber/voip/stickers/as;->d:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/stickers/at;

    invoke-direct {v1, p0}, Lcom/viber/voip/stickers/at;-><init>(Lcom/viber/voip/stickers/as;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 61
    iget-object v0, p0, Lcom/viber/voip/stickers/as;->c:Lcom/viber/voip/stickers/r;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/r;->j()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/stickers/as;->b:Ljava/util/List;

    .line 63
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/viber/voip/stickers/as;->e:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/stickers/av;

    invoke-direct {v1, p0}, Lcom/viber/voip/stickers/av;-><init>(Lcom/viber/voip/stickers/as;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 113
    return-void
.end method
