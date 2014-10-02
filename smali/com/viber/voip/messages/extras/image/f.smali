.class Lcom/viber/voip/messages/extras/image/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/extras/image/b;

.field private b:Landroid/content/Context;

.field private c:[Landroid/net/Uri;

.field private d:Ljava/lang/String;

.field private e:Lcom/viber/voip/messages/extras/image/l;

.field private f:I

.field private g:I

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/extras/image/b;ILandroid/content/Context;[Landroid/net/Uri;Ljava/lang/String;Lcom/viber/voip/messages/extras/image/l;IIZ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/viber/voip/messages/extras/image/f;->a:Lcom/viber/voip/messages/extras/image/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    sget-object v0, Lcom/viber/voip/messages/extras/image/l;->b:Lcom/viber/voip/messages/extras/image/l;

    iput-object v0, p0, Lcom/viber/voip/messages/extras/image/f;->e:Lcom/viber/voip/messages/extras/image/l;

    .line 146
    iput-object p3, p0, Lcom/viber/voip/messages/extras/image/f;->b:Landroid/content/Context;

    .line 147
    iput-object p4, p0, Lcom/viber/voip/messages/extras/image/f;->c:[Landroid/net/Uri;

    .line 148
    iput-object p5, p0, Lcom/viber/voip/messages/extras/image/f;->d:Ljava/lang/String;

    .line 149
    iput-object p6, p0, Lcom/viber/voip/messages/extras/image/f;->e:Lcom/viber/voip/messages/extras/image/l;

    .line 150
    iput p8, p0, Lcom/viber/voip/messages/extras/image/f;->f:I

    .line 151
    iput p2, p0, Lcom/viber/voip/messages/extras/image/f;->h:I

    .line 152
    iput p7, p0, Lcom/viber/voip/messages/extras/image/f;->g:I

    .line 153
    iput-boolean p9, p0, Lcom/viber/voip/messages/extras/image/f;->i:Z

    .line 154
    return-void
.end method

.method private a(Landroid/net/Uri;IZ)Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 209
    .line 210
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/extras/image/f;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 211
    invoke-static {p1}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/f;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/viber/voip/messages/extras/image/f;->d:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 219
    :goto_0
    :try_start_0
    const-string/jumbo v0, "image"

    iget-object v2, p0, Lcom/viber/voip/messages/extras/image/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 220
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/f;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/viber/voip/messages/extras/image/f;->e:Lcom/viber/voip/messages/extras/image/l;

    const/4 v5, 0x1

    iget v6, p0, Lcom/viber/voip/messages/extras/image/f;->f:I

    move v3, p2

    move v4, p2

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/viber/voip/messages/extras/image/l;IIZI)Lcom/viber/voip/messages/extras/image/a;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 221
    if-nez v0, :cond_2

    move-object v0, v7

    .line 252
    :cond_0
    :goto_1
    return-object v0

    .line 213
    :cond_1
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/extras/image/f;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 214
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/f;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/viber/voip/messages/extras/image/h;->d(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 222
    :cond_2
    :try_start_1
    iget-object p1, v0, Lcom/viber/voip/messages/extras/image/a;->a:Landroid/net/Uri;

    .line 225
    :cond_3
    new-instance v0, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    invoke-direct {v0}, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;-><init>()V

    .line 226
    iput-object v1, v0, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->a:Landroid/net/Uri;

    .line 227
    iput-object p1, v0, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->b:Landroid/net/Uri;

    .line 228
    iget-object v2, p0, Lcom/viber/voip/messages/extras/image/f;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/viber/voip/messages/extras/image/f;->d:Ljava/lang/String;

    invoke-static {v2, p1, v3}, Lcom/viber/voip/messages/extras/image/m;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->f:J

    .line 229
    iget-object v2, p0, Lcom/viber/voip/messages/extras/image/f;->d:Ljava/lang/String;

    iput-object v2, v0, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->d:Ljava/lang/String;

    .line 231
    if-eqz p3, :cond_0

    .line 233
    iget-object v2, p0, Lcom/viber/voip/messages/extras/image/f;->b:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/viber/voip/messages/extras/image/m;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/viber/voip/messages/extras/image/a;

    move-result-object v1

    .line 235
    if-eqz v1, :cond_0

    .line 236
    iget-object v2, v1, Lcom/viber/voip/messages/extras/image/a;->a:Landroid/net/Uri;

    iput-object v2, v0, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->c:Landroid/net/Uri;

    .line 237
    iget v2, v1, Lcom/viber/voip/messages/extras/image/a;->b:I

    iput v2, v0, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->g:I

    .line 238
    iget v1, v1, Lcom/viber/voip/messages/extras/image/a;->c:I

    iput v1, v0, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->h:I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 243
    :catch_0
    move-exception v0

    .line 244
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resizeImage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/b;->a(Ljava/lang/String;)V

    move-object v0, v7

    .line 246
    goto :goto_1

    .line 247
    :catch_1
    move-exception v0

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resizeImage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/b;->a(Ljava/lang/String;)V

    move-object v0, v7

    .line 249
    goto :goto_1

    .line 250
    :catch_2
    move-exception v0

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resizeImage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/b;->a(Ljava/lang/String;)V

    move-object v0, v7

    .line 252
    goto/16 :goto_1

    :cond_4
    move-object v1, p1

    goto/16 :goto_0
.end method

.method private a([Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;)V
    .locals 4
    .parameter

    .prologue
    .line 198
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 199
    aget-object v1, p1, v0

    .line 200
    if-nez v1, :cond_0

    .line 198
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "delete generated image "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/messages/extras/image/b;->a(Ljava/lang/String;)V

    .line 202
    iget-object v2, p0, Lcom/viber/voip/messages/extras/image/f;->b:Landroid/content/Context;

    iget-object v3, v1, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->b:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 203
    iget-object v2, p0, Lcom/viber/voip/messages/extras/image/f;->b:Landroid/content/Context;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->c:Landroid/net/Uri;

    invoke-static {v2, v1}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/content/Context;Landroid/net/Uri;)Z

    goto :goto_1

    .line 205
    :cond_1
    return-void
.end method

.method private a(Landroid/net/Uri;)Z
    .locals 2
    .parameter

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_0

    const-string/jumbo v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a([Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 177
    iget-object v1, p0, Lcom/viber/voip/messages/extras/image/f;->a:Lcom/viber/voip/messages/extras/image/b;

    invoke-static {v1}, Lcom/viber/voip/messages/extras/image/b;->b(Lcom/viber/voip/messages/extras/image/b;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 178
    :try_start_0
    iget-object v2, p0, Lcom/viber/voip/messages/extras/image/f;->a:Lcom/viber/voip/messages/extras/image/b;

    invoke-static {v2}, Lcom/viber/voip/messages/extras/image/b;->b(Lcom/viber/voip/messages/extras/image/b;)Ljava/util/Set;

    move-result-object v2

    iget v3, p0, Lcom/viber/voip/messages/extras/image/f;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processing seq: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/viber/voip/messages/extras/image/f;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " was canceled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/messages/extras/image/b;->a(Ljava/lang/String;)V

    .line 180
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/extras/image/f;->a([Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;)V

    .line 181
    monitor-exit v1

    .line 194
    :goto_0
    return v0

    .line 183
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 185
    iget-object v1, p0, Lcom/viber/voip/messages/extras/image/f;->a:Lcom/viber/voip/messages/extras/image/b;

    invoke-static {v1}, Lcom/viber/voip/messages/extras/image/b;->c(Lcom/viber/voip/messages/extras/image/b;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 186
    :try_start_1
    iget-object v2, p0, Lcom/viber/voip/messages/extras/image/f;->a:Lcom/viber/voip/messages/extras/image/b;

    invoke-static {v2}, Lcom/viber/voip/messages/extras/image/b;->c(Lcom/viber/voip/messages/extras/image/b;)Ljava/util/Set;

    move-result-object v2

    iget v3, p0, Lcom/viber/voip/messages/extras/image/f;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processing seq: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/viber/voip/messages/extras/image/f;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " was stopped"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/messages/extras/image/b;->a(Ljava/lang/String;)V

    .line 191
    monitor-exit v1

    goto :goto_0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 183
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 193
    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 194
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/net/Uri;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 257
    invoke-static {p1}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    :cond_0
    :goto_0
    return v0

    .line 258
    :cond_1
    invoke-static {p1}, Lcom/viber/voip/util/bj;->a(Landroid/net/Uri;)I

    move-result v1

    .line 259
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/viber/voip/messages/extras/image/f;->a(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 158
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/f;->c:[Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/f;->c:[Landroid/net/Uri;

    array-length v1, v0

    .line 160
    new-array v2, v1, [Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    .line 161
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    .line 163
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/viber/voip/messages/extras/image/f;->a([Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 165
    iget-object v3, p0, Lcom/viber/voip/messages/extras/image/f;->c:[Landroid/net/Uri;

    aget-object v3, v3, v0

    iget v4, p0, Lcom/viber/voip/messages/extras/image/f;->g:I

    iget-boolean v5, p0, Lcom/viber/voip/messages/extras/image/f;->i:Z

    invoke-direct {p0, v3, v4, v5}, Lcom/viber/voip/messages/extras/image/f;->a(Landroid/net/Uri;IZ)Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 167
    aget-object v3, v2, v0

    invoke-direct {p0, v2, v3}, Lcom/viber/voip/messages/extras/image/f;->a([Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 169
    aget-object v3, v2, v0

    if-eqz v3, :cond_2

    .line 170
    iget-object v3, p0, Lcom/viber/voip/messages/extras/image/f;->a:Lcom/viber/voip/messages/extras/image/b;

    iget v4, p0, Lcom/viber/voip/messages/extras/image/f;->h:I

    aget-object v5, v2, v0

    invoke-static {v3, v4, v5, v0, v1}, Lcom/viber/voip/messages/extras/image/b;->a(Lcom/viber/voip/messages/extras/image/b;ILcom/viber/voip/messages/ui/media/SendMediaDataContainer;II)V

    .line 161
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/f;->a:Lcom/viber/voip/messages/extras/image/b;

    iget v1, p0, Lcom/viber/voip/messages/extras/image/f;->h:I

    invoke-static {v0, v1, v2}, Lcom/viber/voip/messages/extras/image/b;->a(Lcom/viber/voip/messages/extras/image/b;I[Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;)V

    goto :goto_0
.end method
