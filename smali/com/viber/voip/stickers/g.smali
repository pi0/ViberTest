.class Lcom/viber/voip/stickers/g;
.super Lcom/viber/voip/util/fd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/voip/util/fd",
        "<",
        "Ljava/lang/String;",
        "Lcom/viber/voip/stickers/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/viber/voip/stickers/b;


# direct methods
.method public constructor <init>(Lcom/viber/voip/stickers/b;)V
    .locals 4
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/viber/voip/stickers/g;->a:Lcom/viber/voip/stickers/b;

    .line 133
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "StickerBitmapLoader.BitmapCache"

    const v2, 0x3dcccccd

    const/high16 v3, 0x3d80

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/viber/voip/util/fd;-><init>(Landroid/content/Context;Ljava/lang/String;FF)V

    .line 135
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Lcom/viber/voip/stickers/h;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-virtual {p2}, Lcom/viber/voip/stickers/h;->c()I

    move-result v0

    return v0
.end method

.method public a(Lcom/viber/voip/stickers/c/a;ZZLcom/viber/voip/stickers/ba;)Lcom/viber/voip/stickers/h;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 149
    invoke-virtual {p1, p2, p3, p4}, Lcom/viber/voip/stickers/c/a;->a(ZZLcom/viber/voip/stickers/ba;)Ljava/lang/String;

    move-result-object v2

    .line 150
    monitor-enter p0

    .line 152
    :try_start_0
    invoke-static {v2}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    invoke-virtual {p0, v2}, Lcom/viber/voip/stickers/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/stickers/h;

    .line 154
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/viber/voip/stickers/h;->a()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    .line 155
    invoke-virtual {p0, v2}, Lcom/viber/voip/stickers/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 159
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/stickers/c/a;ZZLcom/viber/voip/stickers/ba;Lcom/viber/voip/stickers/h;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Lcom/viber/voip/stickers/h;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/stickers/g;->a:Lcom/viber/voip/stickers/b;

    invoke-virtual {v0, p4}, Lcom/viber/voip/stickers/b;->a(Lcom/viber/voip/stickers/ba;)V

    .line 167
    invoke-virtual {p1, p2, p3, p4}, Lcom/viber/voip/stickers/c/a;->a(ZZLcom/viber/voip/stickers/ba;)Ljava/lang/String;

    move-result-object v0

    .line 169
    monitor-enter p0

    .line 170
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/viber/voip/stickers/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 171
    invoke-virtual {p5}, Lcom/viber/voip/stickers/h;->b()V

    .line 172
    invoke-virtual {p0, v0, p5}, Lcom/viber/voip/stickers/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected a(ZLjava/lang/String;Lcom/viber/voip/stickers/h;Lcom/viber/voip/stickers/h;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 145
    invoke-virtual {p3}, Lcom/viber/voip/stickers/h;->d()V

    .line 146
    return-void
.end method

.method protected synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/viber/voip/stickers/h;

    check-cast p4, Lcom/viber/voip/stickers/h;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/viber/voip/stickers/g;->a(ZLjava/lang/String;Lcom/viber/voip/stickers/h;Lcom/viber/voip/stickers/h;)V

    return-void
.end method

.method protected synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 131
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/viber/voip/stickers/h;

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/stickers/g;->a(Ljava/lang/String;Lcom/viber/voip/stickers/h;)I

    move-result v0

    return v0
.end method
