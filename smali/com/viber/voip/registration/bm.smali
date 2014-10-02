.class public Lcom/viber/voip/registration/bm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/viber/voip/registration/bm;->a:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/viber/voip/registration/bm;->b:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/viber/voip/registration/bm;->c:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/viber/voip/registration/bm;->d:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/viber/voip/registration/bm;->e:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/viber/voip/registration/bm;->f:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/viber/voip/registration/bm;->g:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/viber/voip/registration/bm;->h:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/viber/voip/registration/bm;->a:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/viber/voip/registration/bm;
    .locals 3
    .parameter

    .prologue
    .line 52
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 53
    new-instance v0, Lcom/viber/voip/registration/bm;

    const-string/jumbo v2, "number"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/viber/voip/registration/bm;-><init>(Ljava/lang/String;)V

    .line 54
    const-string/jumbo v2, "hardware_key"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/viber/voip/registration/bm;->b:Ljava/lang/String;

    .line 55
    const-string/jumbo v2, "udid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/viber/voip/registration/bm;->c:Ljava/lang/String;

    .line 56
    const-string/jumbo v2, "secondary_udid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/viber/voip/registration/bm;->d:Ljava/lang/String;

    .line 57
    const-string/jumbo v2, "device_key"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/viber/voip/registration/bm;->e:Ljava/lang/String;

    .line 58
    const-string/jumbo v2, "secondary_device_key"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/viber/voip/registration/bm;->f:Ljava/lang/String;

    .line 60
    const-string/jumbo v2, "rakuten_r_token"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    const-string/jumbo v2, "rakuten_r_token"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/viber/voip/registration/bm;->g:Ljava/lang/String;

    .line 64
    :cond_0
    const-string/jumbo v2, "encrypted_phone_number"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    const-string/jumbo v2, "encrypted_phone_number"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/viber/voip/registration/bm;->h:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_1
    :goto_0
    return-object v0

    .line 69
    :catch_0
    move-exception v0

    .line 72
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/viber/voip/registration/bm;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 77
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 78
    const-string/jumbo v1, "number"

    iget-object v2, p0, Lcom/viber/voip/registration/bm;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string/jumbo v1, "hardware_key"

    iget-object v2, p0, Lcom/viber/voip/registration/bm;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string/jumbo v1, "udid"

    iget-object v2, p0, Lcom/viber/voip/registration/bm;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string/jumbo v1, "secondary_udid"

    iget-object v2, p0, Lcom/viber/voip/registration/bm;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string/jumbo v1, "device_key"

    iget-object v2, p0, Lcom/viber/voip/registration/bm;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string/jumbo v1, "secondary_device_key"

    iget-object v2, p0, Lcom/viber/voip/registration/bm;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string/jumbo v1, "rakuten_r_token"

    iget-object v2, p0, Lcom/viber/voip/registration/bm;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string/jumbo v1, "encrypted_phone_number"

    iget-object v2, p0, Lcom/viber/voip/registration/bm;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    .line 87
    :catch_0
    move-exception v0

    .line 89
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/viber/voip/registration/dl;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 119
    const-string/jumbo v0, ""

    .line 120
    sget-object v1, Lcom/viber/voip/registration/bl;->a:[I

    invoke-virtual {p1}, Lcom/viber/voip/registration/dl;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 143
    :goto_0
    return-object v0

    .line 122
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/registration/bm;->b:Ljava/lang/String;

    goto :goto_0

    .line 125
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/registration/bm;->c:Ljava/lang/String;

    goto :goto_0

    .line 128
    :pswitch_2
    iget-object v0, p0, Lcom/viber/voip/registration/bm;->d:Ljava/lang/String;

    goto :goto_0

    .line 131
    :pswitch_3
    iget-object v0, p0, Lcom/viber/voip/registration/bm;->e:Ljava/lang/String;

    goto :goto_0

    .line 134
    :pswitch_4
    iget-object v0, p0, Lcom/viber/voip/registration/bm;->f:Ljava/lang/String;

    goto :goto_0

    .line 137
    :pswitch_5
    iget-object v0, p0, Lcom/viber/voip/registration/bm;->g:Ljava/lang/String;

    goto :goto_0

    .line 140
    :pswitch_6
    iget-object v0, p0, Lcom/viber/voip/registration/bm;->h:Ljava/lang/String;

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public a(Lcom/viber/voip/registration/dl;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 93
    sget-object v0, Lcom/viber/voip/registration/bl;->a:[I

    invoke-virtual {p1}, Lcom/viber/voip/registration/dl;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 116
    :goto_0
    return-void

    .line 95
    :pswitch_0
    iput-object p2, p0, Lcom/viber/voip/registration/bm;->b:Ljava/lang/String;

    goto :goto_0

    .line 98
    :pswitch_1
    iput-object p2, p0, Lcom/viber/voip/registration/bm;->c:Ljava/lang/String;

    goto :goto_0

    .line 101
    :pswitch_2
    iput-object p2, p0, Lcom/viber/voip/registration/bm;->d:Ljava/lang/String;

    goto :goto_0

    .line 104
    :pswitch_3
    iput-object p2, p0, Lcom/viber/voip/registration/bm;->e:Ljava/lang/String;

    goto :goto_0

    .line 107
    :pswitch_4
    iput-object p2, p0, Lcom/viber/voip/registration/bm;->f:Ljava/lang/String;

    goto :goto_0

    .line 110
    :pswitch_5
    iput-object p2, p0, Lcom/viber/voip/registration/bm;->g:Ljava/lang/String;

    goto :goto_0

    .line 113
    :pswitch_6
    iput-object p2, p0, Lcom/viber/voip/registration/bm;->h:Ljava/lang/String;

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
