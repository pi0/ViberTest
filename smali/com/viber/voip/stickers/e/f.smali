.class final Lcom/viber/voip/stickers/e/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/d/d;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "statusCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/stickers/e/c;->a(Ljava/lang/String;)V

    .line 205
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/viber/voip/stickers/e/c;->a(Z)Z

    .line 206
    return-void
.end method

.method public a(Ljava/io/InputStream;)V
    .locals 3
    .parameter

    .prologue
    .line 180
    :try_start_0
    invoke-static {p1}, Lcom/viber/voip/stickers/e/c;->a(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/stickers/e/c;->a(Lorg/json/JSONObject;)I

    move-result v0

    .line 185
    invoke-static {}, Lcom/viber/voip/stickers/e/c;->b()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/viber/voip/stickers/e/c;->e()I

    move-result v1

    if-nez v1, :cond_0

    .line 186
    const-string/jumbo v1, "first sync WatchedPackagesCount == AllPackagesCount"

    invoke-static {v1}, Lcom/viber/voip/stickers/e/c;->a(Ljava/lang/String;)V

    .line 187
    invoke-static {v0}, Lcom/viber/voip/stickers/e/c;->b(I)V

    .line 190
    :cond_0
    invoke-static {v0}, Lcom/viber/voip/stickers/e/c;->a(I)V

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/viber/voip/stickers/e/c;->a(J)V

    .line 192
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/stickers/e/c;->d(Landroid/content/Context;)V

    .line 193
    invoke-static {}, Lcom/viber/voip/stickers/e/c;->c()V

    .line 194
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/viber/voip/stickers/e/c;->a(Z)Z

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAllPackagesCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/stickers/e/c;->f()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mWatchedPackagesCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/stickers/e/c;->g()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/stickers/e/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readJsonStream ex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/stickers/e/c;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
