.class Lcom/viber/voip/stickers/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/viber/voip/stickers/ay;


# direct methods
.method constructor <init>(Lcom/viber/voip/stickers/ay;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/viber/voip/stickers/az;->b:Lcom/viber/voip/stickers/ay;

    iput-object p2, p0, Lcom/viber/voip/stickers/az;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 68
    iget-object v0, p0, Lcom/viber/voip/stickers/az;->b:Lcom/viber/voip/stickers/ay;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/ay;->a()Z

    move-result v1

    .line 70
    iget-object v0, p0, Lcom/viber/voip/stickers/az;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 72
    if-nez v1, :cond_1

    :try_start_0
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/viber/voip/stickers/r;->b(I)Lcom/viber/voip/stickers/c/d;

    move-result-object v3

    invoke-interface {v3}, Lcom/viber/voip/stickers/c/d;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/viber/voip/stickers/ay;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 74
    iget-object v4, p0, Lcom/viber/voip/stickers/az;->b:Lcom/viber/voip/stickers/ay;

    invoke-static {v4}, Lcom/viber/voip/stickers/ay;->a(Lcom/viber/voip/stickers/ay;)Lcom/viber/voip/stickers/a/a;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0, v3}, Lcom/viber/voip/stickers/a/a;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    goto :goto_0

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/stickers/az;->b:Lcom/viber/voip/stickers/ay;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/ay;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "PREF_UPGRADE_STICKER_PACKAGES_NAME"

    invoke-interface {v0, v1, v5}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 88
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/stickers/az;->b:Lcom/viber/voip/stickers/ay;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/viber/voip/stickers/ay;->a(Lcom/viber/voip/stickers/ay;J)J

    .line 89
    iget-object v0, p0, Lcom/viber/voip/stickers/az;->b:Lcom/viber/voip/stickers/ay;

    invoke-static {v0, v5}, Lcom/viber/voip/stickers/ay;->a(Lcom/viber/voip/stickers/ay;Z)Z

    .line 90
    iget-object v0, p0, Lcom/viber/voip/stickers/az;->b:Lcom/viber/voip/stickers/ay;

    iget-object v1, p0, Lcom/viber/voip/stickers/az;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/viber/voip/stickers/ay;->a(Ljava/util/List;)V

    .line 91
    return-void

    .line 79
    :catch_1
    move-exception v0

    goto :goto_0
.end method
