.class public abstract Lcom/viber/voip/stickers/b/e;
.super Lcom/viber/voip/stickers/b/a;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/upload/m;
.implements Ljava/lang/Runnable;


# static fields
.field private static b:Ljava/util/regex/Pattern;

.field private static c:Ljava/util/regex/Pattern;


# instance fields
.field private d:Lcom/viber/voip/stickers/r;

.field private final e:Lcom/viber/voip/stickers/b;

.field private final f:Lcom/viber/voip/stickers/bb;

.field private g:Lcom/viber/voip/stickers/c/e;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Lcom/viber/voip/util/upload/d;

.field private n:J

.field private o:Landroid/util/SparseIntArray;

.field private p:[[Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 46
    const-string/jumbo v0, "(^|/)([0-9a-f]{8})\\.(png|svg)$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/stickers/b/e;->b:Ljava/util/regex/Pattern;

    .line 47
    const-string/jumbo v0, "(^|/)([0-9a-f]{8})\\_frame.(png|svg)$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/stickers/b/e;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/stickers/c/e;Lcom/viber/voip/stickers/d/b;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p2}, Lcom/viber/voip/stickers/b/a;-><init>(Lcom/viber/voip/stickers/d/b;)V

    .line 62
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/stickers/b/e;->o:Landroid/util/SparseIntArray;

    .line 413
    const/4 v0, 0x5

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/viber/voip/stickers/b/e;->p:[[Z

    .line 68
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/stickers/b/e;->d:Lcom/viber/voip/stickers/r;

    .line 69
    iget-object v0, p0, Lcom/viber/voip/stickers/b/e;->d:Lcom/viber/voip/stickers/r;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/r;->d()Lcom/viber/voip/stickers/b;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/stickers/b/e;->e:Lcom/viber/voip/stickers/b;

    .line 70
    iget-object v0, p0, Lcom/viber/voip/stickers/b/e;->d:Lcom/viber/voip/stickers/r;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/r;->e()Lcom/viber/voip/stickers/bb;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/stickers/b/e;->f:Lcom/viber/voip/stickers/bb;

    .line 71
    iput-object p1, p0, Lcom/viber/voip/stickers/b/e;->g:Lcom/viber/voip/stickers/c/e;

    .line 73
    invoke-interface {p2, p1}, Lcom/viber/voip/stickers/d/b;->a(Lcom/viber/voip/stickers/c/d;)V

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "download package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/stickers/b/e;->g:Lcom/viber/voip/stickers/c/e;

    invoke-virtual {v1}, Lcom/viber/voip/stickers/c/e;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/stickers/b/e;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/stickers/b/e;->a(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method private a(Ljava/io/InputStream;)Lcom/viber/voip/stickers/c/d;
    .locals 12
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 267
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 268
    new-instance v8, Ljava/util/zip/ZipInputStream;

    invoke-direct {v8, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 269
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/stickers/r;->d()Lcom/viber/voip/stickers/b;

    move-result-object v9

    .line 272
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    move-object v6, v0

    move v2, v5

    :goto_0
    if-eqz v6, :cond_b

    .line 273
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_a

    .line 274
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/stickers/b/e;->b(Ljava/lang/String;)I

    move-result v0

    .line 275
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/stickers/b/e;->c(Ljava/lang/String;)I

    move-result v1

    .line 276
    if-gez v0, :cond_0

    if-ltz v1, :cond_5

    :cond_0
    move v3, v4

    .line 277
    :goto_1
    if-eqz v3, :cond_9

    .line 278
    add-int/lit8 v2, v2, 0x1

    .line 279
    if-ltz v1, :cond_6

    move v3, v4

    .line 280
    :goto_2
    if-ltz v0, :cond_7

    .line 281
    :goto_3
    iget-object v1, p0, Lcom/viber/voip/stickers/b/e;->d:Lcom/viber/voip/stickers/r;

    iget-object v10, p0, Lcom/viber/voip/stickers/b/e;->g:Lcom/viber/voip/stickers/c/e;

    invoke-virtual {v10}, Lcom/viber/voip/stickers/c/e;->e()I

    move-result v10

    invoke-virtual {v1, v0, v10, v5}, Lcom/viber/voip/stickers/r;->a(IIZ)Lcom/viber/voip/stickers/c/a;

    move-result-object v1

    .line 283
    new-instance v10, Lcom/viber/voip/stickers/c/a;

    iget-object v11, p0, Lcom/viber/voip/stickers/b/e;->g:Lcom/viber/voip/stickers/c/e;

    invoke-virtual {v11}, Lcom/viber/voip/stickers/c/e;->e()I

    move-result v11

    invoke-direct {v10, v0, v11}, Lcom/viber/voip/stickers/c/a;-><init>(II)V

    .line 284
    invoke-virtual {v1}, Lcom/viber/voip/stickers/c/a;->d()Z

    move-result v1

    invoke-virtual {v10, v1}, Lcom/viber/voip/stickers/c/a;->a(Z)V

    .line 285
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/stickers/b/e;->d(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v10, v1}, Lcom/viber/voip/stickers/c/a;->b(Z)V

    .line 287
    if-eqz v3, :cond_8

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unzip, saving sticker frame entry: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/stickers/b/e;->a(Ljava/lang/String;)V

    .line 289
    iget-object v1, v10, Lcom/viber/voip/stickers/c/a;->v:Ljava/lang/String;

    invoke-static {v1, v8}, Lcom/viber/voip/stickers/b/h;->a(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 295
    :cond_1
    :goto_4
    invoke-direct {p0, v0}, Lcom/viber/voip/stickers/b/e;->d(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 298
    invoke-direct {p0, v10}, Lcom/viber/voip/stickers/b/e;->a(Lcom/viber/voip/stickers/c/a;)V

    .line 301
    iget-object v0, p0, Lcom/viber/voip/stickers/b/e;->d:Lcom/viber/voip/stickers/r;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/r;->d()Lcom/viber/voip/stickers/b;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/viber/voip/stickers/b;->b(Lcom/viber/voip/stickers/c/a;)V

    .line 305
    :try_start_0
    sget-object v0, Lcom/viber/voip/stickers/ba;->a:Lcom/viber/voip/stickers/ba;

    invoke-virtual {v9, v10, v0}, Lcom/viber/voip/stickers/b;->a(Lcom/viber/voip/stickers/c/a;Lcom/viber/voip/stickers/ba;)V

    .line 306
    sget-object v0, Lcom/viber/voip/stickers/ba;->b:Lcom/viber/voip/stickers/ba;

    invoke-virtual {v9, v10, v0}, Lcom/viber/voip/stickers/b;->a(Lcom/viber/voip/stickers/c/a;Lcom/viber/voip/stickers/ba;)V
    :try_end_0
    .catch Lcom/viber/voip/stickers/ak; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    invoke-virtual {v10}, Lcom/viber/voip/stickers/c/a;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    invoke-direct {p0, v10}, Lcom/viber/voip/stickers/b/e;->c(Lcom/viber/voip/stickers/c/a;)V

    .line 317
    :cond_2
    iget-object v0, v10, Lcom/viber/voip/stickers/c/a;->c:Lcom/viber/voip/stickers/c/c;

    sget-object v1, Lcom/viber/voip/stickers/c/c;->a:Lcom/viber/voip/stickers/c/c;

    if-ne v0, v1, :cond_3

    .line 318
    iget-object v0, p0, Lcom/viber/voip/stickers/b/e;->a:Lcom/viber/voip/stickers/d/b;

    invoke-interface {v0, v10}, Lcom/viber/voip/stickers/d/b;->a(Lcom/viber/voip/stickers/c/a;)V

    .line 321
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unzip, add sticker to collection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/stickers/b/e;->a(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    move v0, v2

    .line 328
    :goto_5
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 272
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    move-object v6, v1

    move v2, v0

    goto/16 :goto_0

    :cond_5
    move v3, v5

    .line 276
    goto/16 :goto_1

    :cond_6
    move v3, v5

    .line 279
    goto/16 :goto_2

    :cond_7
    move v0, v1

    .line 280
    goto/16 :goto_3

    .line 290
    :cond_8
    if-ltz v0, :cond_1

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unzip, saving sticker entry: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/stickers/b/e;->a(Ljava/lang/String;)V

    .line 292
    iget-object v1, v10, Lcom/viber/voip/stickers/c/a;->u:Ljava/lang/String;

    invoke-static {v1, v8}, Lcom/viber/voip/stickers/b/h;->a(Ljava/lang/String;Ljava/io/InputStream;)V

    goto/16 :goto_4

    .line 307
    :catch_0
    move-exception v0

    .line 308
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Low storage during deployment! Aborting"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unzip, ignoring entry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/stickers/b/e;->a(Ljava/lang/String;)V

    :cond_a
    move v0, v2

    goto :goto_5

    .line 330
    :cond_b
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->close()V

    .line 331
    if-nez v2, :cond_c

    .line 332
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Unzip, no stickes unzipped, generating an exception"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_c
    invoke-direct {p0, v7, v9}, Lcom/viber/voip/stickers/b/e;->a(Ljava/util/ArrayList;Lcom/viber/voip/stickers/b;)V

    .line 337
    iget-object v0, p0, Lcom/viber/voip/stickers/b/e;->g:Lcom/viber/voip/stickers/c/e;

    invoke-virtual {v0, v5}, Lcom/viber/voip/stickers/c/e;->c(Z)V

    .line 338
    iget-object v0, p0, Lcom/viber/voip/stickers/b/e;->g:Lcom/viber/voip/stickers/c/e;

    invoke-virtual {v0, v4}, Lcom/viber/voip/stickers/c/e;->a(Z)V

    .line 339
    iget-object v0, p0, Lcom/viber/voip/stickers/b/e;->g:Lcom/viber/voip/stickers/c/e;

    invoke-virtual {v0, v4}, Lcom/viber/voip/stickers/c/e;->b(Z)V

    .line 341
    iget-object v0, p0, Lcom/viber/voip/stickers/b/e;->g:Lcom/viber/voip/stickers/c/e;

    invoke-virtual {v0, v7}, Lcom/viber/voip/stickers/c/e;->a(Ljava/util/ArrayList;)V

    .line 343
    invoke-direct {p0, v7}, Lcom/viber/voip/stickers/b/e;->a(Ljava/util/List;)V

    .line 345
    iget-object v0, p0, Lcom/viber/voip/stickers/b/e;->d:Lcom/viber/voip/stickers/r;

    iget-object v1, p0, Lcom/viber/voip/stickers/b/e;->g:Lcom/viber/voip/stickers/c/e;

    invoke-virtual {v0, v1}, Lcom/viber/voip/stickers/r;->b(Lcom/viber/voip/stickers/c/e;)V

    .line 347
    iget-object v0, p0, Lcom/viber/voip/stickers/b/e;->d:Lcom/viber/voip/stickers/r;

    iget-object v1, p0, Lcom/viber/voip/stickers/b/e;->g:Lcom/viber/voip/stickers/c/e;

    invoke-virtual {v0, v1}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/c/e;)V

    .line 348
    iget-object v0, p0, Lcom/viber/voip/stickers/b/e;->a:Lcom/viber/voip/stickers/d/b;

    iget-object v1, p0, Lcom/viber/voip/stickers/b/e;->g:Lcom/viber/voip/stickers/c/e;

    invoke-interface {v0, v1}, Lcom/viber/voip/stickers/d/b;->c(Lcom/viber/voip/stickers/c/d;)V

    .line 350
    const-string/jumbo v0, "Unzip, deploying stickers finished"

    invoke-static {v0}, Lcom/viber/voip/stickers/b/e;->a(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/viber/voip/stickers/b/e;->g:Lcom/viber/voip/stickers/c/e;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/stickers/b/e;)Lcom/viber/voip/util/upload/d;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/viber/voip/stickers/b/e;->m:Lcom/viber/voip/util/upload/d;

    return-object v0
.end method

.method private a(IIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 424
    move v1, p1

    :goto_0
    add-int v0, p1, p3

    if-ge v1, v0, :cond_1

    move v0, p2

    .line 425
    :goto_1
    add-int v2, p2, p4

    if-ge v0, v2, :cond_0

    .line 426
    iget-object v2, p0, Lcom/viber/voip/stickers/b/e;->p:[[Z

    aget-object v2, v2, v1

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    .line 425
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 424
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 429
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/stickers/b/e;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/viber/voip/stickers/b/e;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Lcom/viber/voip/stickers/c/a;)V
    .locals 7
    .parameter

    .prologue
    .line 355
    invoke-virtual {p1}, Lcom/viber/voip/stickers/c/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/viber/voip/stickers/b/e;->f:Lcom/viber/voip/stickers/bb;

    iget-object v1, p1, Lcom/viber/voip/stickers/c/a;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/viber/voip/stickers/bb;->c(Ljava/lang/String;)J

    move-result-wide v0

    .line 357
    iget-object v2, p0, Lcom/viber/voip/stickers/b/e;->f:Lcom/viber/voip/stickers/bb;

    iget-object v3, p1, Lcom/viber/voip/stickers/c/a;->v:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/viber/voip/stickers/bb;->c(Ljava/lang/String;)J

    move-result-wide v2

    .line 358
    iget-object v4, p0, Lcom/viber/voip/stickers/b/e;->f:Lcom/viber/voip/stickers/bb;

    iget-object v5, p1, Lcom/viber/voip/stickers/c/a;->u:Ljava/lang/String;

    new-instance v6, Lcom/viber/voip/stickers/f/a;

    invoke-direct {v6, v0, v1}, Lcom/viber/voip/stickers/f/a;-><init>(J)V

    invoke-virtual {v4, v5, v6}, Lcom/viber/voip/stickers/bb;->a(Ljava/lang/String;Lcom/viber/voip/stickers/f/a;)V

    .line 359
    iget-object v0, p0, Lcom/viber/voip/stickers/b/e;->f:Lcom/viber/voip/stickers/bb;

    iget-object v1, p1, Lcom/viber/voip/stickers/c/a;->v:Ljava/lang/String;

    new-instance v4, Lcom/viber/voip/stickers/f/a;

    invoke-direct {v4, v2, v3}, Lcom/viber/voip/stickers/f/a;-><init>(J)V

    invoke-virtual {v0, v1, v4}, Lcom/viber/voip/stickers/bb;->a(Ljava/lang/String;Lcom/viber/voip/stickers/f/a;)V

    .line 361
    :cond_0
    invoke-virtual {p1}, Lcom/viber/voip/stickers/c/a;->a()V

    .line 362
    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "exception during download/deployment: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/stickers/b/e;->a(Ljava/lang/String;)V

    .line 218
    instance-of v0, p1, Lcom/viber/voip/util/upload/e;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 219
    check-cast v0, Lcom/viber/voip/util/upload/e;

    invoke-virtual {v0}, Lcom/viber/voip/util/upload/e;->a()Lcom/viber/voip/util/upload/f;

    move-result-object v0

    .line 220
    sget-object v2, Lcom/viber/voip/util/upload/f;->e:Lcom/viber/voip/util/upload/f;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/viber/voip/util/upload/f;->g:Lcom/viber/voip/util/upload/f;

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 222
    :goto_0
    iget-object v1, p0, Lcom/viber/voip/stickers/b/e;->a:Lcom/viber/voip/stickers/d/b;

    iget-object v2, p0, Lcom/viber/voip/stickers/b/e;->g:Lcom/viber/voip/stickers/c/e;

    invoke-interface {v1, v0, v2}, Lcom/viber/voip/stickers/d/b;->a(ZLcom/viber/voip/stickers/c/d;)V

    .line 224
    iget-object v0, p0, Lcom/viber/voip/stickers/b/e;->m:Lcom/viber/voip/util/upload/d;

    invoke-virtual {v0}, Lcom/viber/voip/util/upload/d;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    invoke-direct {p0}, Lcom/viber/voip/stickers/b/e;->f()V

    .line 230
    :goto_1
    const-string/jumbo v0, "reportExceptionDuringDownload exception"

    invoke-static {v0, p1}, Lcom/viber/voip/stickers/b/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 231
    return-void

    :cond_1
    move v0, v1

    .line 220
    goto :goto_0

    .line 227
    :cond_2
    const-string/jumbo v0, "Download has not finished successfully, not blaming unpack"

    invoke-static {v0}, Lcom/viber/voip/stickers/b/e;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private a(Ljava/util/ArrayList;Lcom/viber/voip/stickers/b;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/voip/stickers/c/a;",
            ">;",
            "Lcom/viber/voip/stickers/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 384
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 386
    invoke-direct {p0}, Lcom/viber/voip/stickers/b/e;->g()V

    .line 388
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/stickers/c/a;

    .line 389
    invoke-direct {p0, v0}, Lcom/viber/voip/stickers/b/e;->b(Lcom/viber/voip/stickers/c/a;)V

    .line 390
    iget-object v2, p0, Lcom/viber/voip/stickers/b/e;->d:Lcom/viber/voip/stickers/r;

    invoke-virtual {v2, v0}, Lcom/viber/voip/stickers/r;->c(Lcom/viber/voip/stickers/c/a;)V

    goto :goto_0

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/stickers/b/e;->g:Lcom/viber/voip/stickers/c/e;

    invoke-static {v0, p1}, Lcom/viber/voip/stickers/an;->a(Lcom/viber/voip/stickers/c/e;Ljava/lang/Iterable;)Z

    .line 397
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/stickers/c/a;

    .line 398
    sget-object v2, Lcom/viber/voip/stickers/ba;->c:Lcom/viber/voip/stickers/ba;

    invoke-virtual {p2, v0, v2}, Lcom/viber/voip/stickers/b;->a(Lcom/viber/voip/stickers/c/a;Lcom/viber/voip/stickers/ba;)V
    :try_end_0
    .catch Lcom/viber/voip/stickers/ak; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 400
    :catch_0
    move-exception v0

    .line 401
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Low storage during deployment! Aborting"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_1
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/stickers/c/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 365
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/stickers/c/a;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/c/a;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 380
    :cond_0
    return-void

    .line 368
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/stickers/c/a;

    .line 369
    iget-object v2, p0, Lcom/viber/voip/stickers/b/e;->f:Lcom/viber/voip/stickers/bb;

    iget-object v3, v0, Lcom/viber/voip/stickers/c/a;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/viber/voip/stickers/bb;->a(Ljava/lang/String;)Lcom/viber/voip/stickers/f/a;

    move-result-object v2

    .line 370
    if-eqz v2, :cond_3

    .line 371
    iget-object v3, p0, Lcom/viber/voip/stickers/b/e;->f:Lcom/viber/voip/stickers/bb;

    invoke-virtual {v3, v2}, Lcom/viber/voip/stickers/bb;->b(Lcom/viber/voip/stickers/f/a;)V

    .line 372
    iput-wide v4, v2, Lcom/viber/voip/stickers/f/a;->a:J

    .line 374
    :cond_3
    iget-object v2, p0, Lcom/viber/voip/stickers/b/e;->f:Lcom/viber/voip/stickers/bb;

    iget-object v0, v0, Lcom/viber/voip/stickers/c/a;->v:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/viber/voip/stickers/bb;->a(Ljava/lang/String;)Lcom/viber/voip/stickers/f/a;

    move-result-object v0

    .line 375
    if-eqz v0, :cond_2

    .line 376
    iget-object v2, p0, Lcom/viber/voip/stickers/b/e;->f:Lcom/viber/voip/stickers/bb;

    invoke-virtual {v2, v0}, Lcom/viber/voip/stickers/bb;->b(Lcom/viber/voip/stickers/f/a;)V

    .line 377
    iput-wide v4, v0, Lcom/viber/voip/stickers/f/a;->a:J

    goto :goto_0
.end method

.method private a(II)[I
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x5

    const/4 v6, 0x1

    const/4 v8, 0x2

    const/4 v1, 0x0

    .line 432
    move v5, v1

    :goto_0
    if-ge v5, v8, :cond_6

    move v3, v1

    .line 433
    :goto_1
    if-ge v3, v9, :cond_5

    .line 434
    iget-object v0, p0, Lcom/viber/voip/stickers/b/e;->p:[[Z

    aget-object v0, v0, v3

    aget-boolean v0, v0, v5

    if-nez v0, :cond_4

    add-int v0, v3, p1

    if-gt v0, v9, :cond_4

    add-int v0, p2, v5

    if-gt v0, v8, :cond_4

    move v4, v5

    move v0, v6

    .line 437
    :goto_2
    add-int v2, p2, v5

    if-ge v4, v2, :cond_1

    move v2, v3

    .line 438
    :goto_3
    add-int v7, v3, p1

    if-ge v2, v7, :cond_0

    .line 439
    iget-object v7, p0, Lcom/viber/voip/stickers/b/e;->p:[[Z

    aget-object v7, v7, v2

    aget-boolean v7, v7, v4

    if-eqz v7, :cond_2

    move v0, v1

    .line 444
    :cond_0
    if-nez v0, :cond_3

    .line 446
    :cond_1
    if-eqz v0, :cond_4

    new-array v0, v8, [I

    aput v3, v0, v1

    aput v5, v0, v6

    .line 451
    :goto_4
    return-object v0

    .line 438
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 437
    :cond_3
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2

    .line 433
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 432
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 450
    :cond_6
    invoke-direct {p0}, Lcom/viber/voip/stickers/b/e;->g()V

    .line 451
    new-array v0, v8, [I

    fill-array-data v0, :array_0

    goto :goto_4

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private b(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 455
    sget-object v0, Lcom/viber/voip/stickers/b/e;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 456
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 458
    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 460
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private b(Lcom/viber/voip/stickers/c/a;)V
    .locals 4
    .parameter

    .prologue
    .line 406
    iget v0, p1, Lcom/viber/voip/stickers/c/a;->j:I

    iget v1, p1, Lcom/viber/voip/stickers/c/a;->k:I

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/stickers/b/e;->a(II)[I

    move-result-object v0

    .line 407
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p1, Lcom/viber/voip/stickers/c/a;->d:I

    .line 408
    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p1, Lcom/viber/voip/stickers/c/a;->e:I

    .line 409
    iget v0, p1, Lcom/viber/voip/stickers/c/a;->d:I

    iget v1, p1, Lcom/viber/voip/stickers/c/a;->e:I

    iget v2, p1, Lcom/viber/voip/stickers/c/a;->j:I

    iget v3, p1, Lcom/viber/voip/stickers/c/a;->k:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/viber/voip/stickers/b/e;->a(IIII)V

    .line 411
    return-void
.end method

.method private c(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 465
    sget-object v0, Lcom/viber/voip/stickers/b/e;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 466
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 468
    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 470
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private c(Lcom/viber/voip/stickers/c/a;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 475
    iget-object v0, p0, Lcom/viber/voip/stickers/b/e;->d:Lcom/viber/voip/stickers/r;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/r;->d()Lcom/viber/voip/stickers/b;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/stickers/ba;->a:Lcom/viber/voip/stickers/ba;

    invoke-virtual {p1, v2, v2, v1}, Lcom/viber/voip/stickers/c/a;->a(ZZLcom/viber/voip/stickers/ba;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/stickers/b;->a(Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/viber/voip/stickers/b/e;->d:Lcom/viber/voip/stickers/r;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/r;->d()Lcom/viber/voip/stickers/b;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/stickers/ba;->a:Lcom/viber/voip/stickers/ba;

    invoke-virtual {p1, v2, v3, v1}, Lcom/viber/voip/stickers/c/a;->a(ZZLcom/viber/voip/stickers/ba;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/stickers/b;->a(Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/viber/voip/stickers/b/e;->d:Lcom/viber/voip/stickers/r;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/r;->d()Lcom/viber/voip/stickers/b;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/stickers/ba;->a:Lcom/viber/voip/stickers/ba;

    invoke-virtual {p1, v3, v2, v1}, Lcom/viber/voip/stickers/c/a;->a(ZZLcom/viber/voip/stickers/ba;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/stickers/b;->a(Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/viber/voip/stickers/b/e;->d:Lcom/viber/voip/stickers/r;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/r;->d()Lcom/viber/voip/stickers/b;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/stickers/ba;->a:Lcom/viber/voip/stickers/ba;

    invoke-virtual {p1, v3, v3, v1}, Lcom/viber/voip/stickers/c/a;->a(ZZLcom/viber/voip/stickers/ba;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/stickers/b;->a(Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/viber/voip/stickers/b/e;->d:Lcom/viber/voip/stickers/r;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/r;->d()Lcom/viber/voip/stickers/b;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/stickers/ba;->b:Lcom/viber/voip/stickers/ba;

    invoke-virtual {p1, v2, v2, v1}, Lcom/viber/voip/stickers/c/a;->a(ZZLcom/viber/voip/stickers/ba;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/stickers/b;->a(Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/viber/voip/stickers/b/e;->d:Lcom/viber/voip/stickers/r;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/r;->d()Lcom/viber/voip/stickers/b;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/stickers/ba;->b:Lcom/viber/voip/stickers/ba;

    invoke-virtual {p1, v3, v2, v1}, Lcom/viber/voip/stickers/c/a;->a(ZZLcom/viber/voip/stickers/ba;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/stickers/b;->a(Ljava/lang/String;)V

    .line 481
    return-void
.end method

.method private d(I)I
    .locals 2
    .parameter

    .prologue
    .line 260
    iget-object v0, p0, Lcom/viber/voip/stickers/b/e;->o:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 261
    add-int/lit8 v0, v0, 0x1

    .line 262
    iget-object v1, p0, Lcom/viber/voip/stickers/b/e;->o:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 263
    return v0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 484
    const-string/jumbo v0, ".svg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/viber/voip/w;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/viber/voip/util/gj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()Z
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/viber/voip/stickers/b/e;->g:Lcom/viber/voip/stickers/c/e;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/c/e;->e()I

    move-result v0

    const/16 v1, 0x190

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 235
    const-string/jumbo v0, "handleExceptionDuringUnpack()"

    invoke-static {v0}, Lcom/viber/voip/stickers/b/e;->a(Ljava/lang/String;)V

    .line 236
    const-string/jumbo v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Deleting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/stickers/b/e;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", success:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/viber/voip/stickers/b/e;->i:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/stickers/b/e;->a(Ljava/lang/String;)V

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Deleting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/stickers/b/e;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", success:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/viber/voip/stickers/b/e;->j:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/stickers/b/e;->a(Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getDownloadValve()Lcom/viber/voip/util/bb;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/stickers/b/e;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/bb;->a(Ljava/lang/String;)V

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    const-string/jumbo v0, "sdcard unmounted"

    invoke-static {v0}, Lcom/viber/voip/stickers/b/e;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private g()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 416
    move v2, v1

    :goto_0
    const/4 v0, 0x5

    if-ge v2, v0, :cond_1

    move v0, v1

    .line 417
    :goto_1
    const/4 v3, 0x2

    if-ge v0, v3, :cond_0

    .line 418
    iget-object v3, p0, Lcom/viber/voip/stickers/b/e;->p:[[Z

    aget-object v3, v3, v2

    aput-boolean v1, v3, v0

    .line 417
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 416
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 421
    :cond_1
    return-void
.end method


# virtual methods
.method public a()Lcom/viber/voip/stickers/c/d;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "start downloading package id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/stickers/b/e;->g:Lcom/viber/voip/stickers/c/e;

    invoke-virtual {v1}, Lcom/viber/voip/stickers/c/e;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/stickers/b/e;->a(Ljava/lang/String;)V

    .line 141
    invoke-static {v2}, Lcom/viber/voip/messages/extras/image/h;->a(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "error downloading package id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/stickers/b/e;->g:Lcom/viber/voip/stickers/c/e;

    invoke-virtual {v1}, Lcom/viber/voip/stickers/c/e;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/stickers/b/e;->a(Ljava/lang/String;)V

    .line 143
    new-instance v0, Lcom/viber/voip/util/upload/e;

    sget-object v1, Lcom/viber/voip/util/upload/f;->g:Lcom/viber/voip/util/upload/f;

    invoke-direct {v0, v1}, Lcom/viber/voip/util/upload/e;-><init>(Lcom/viber/voip/util/upload/f;)V

    throw v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/stickers/b/e;->a:Lcom/viber/voip/stickers/d/b;

    iget-object v1, p0, Lcom/viber/voip/stickers/b/e;->g:Lcom/viber/voip/stickers/c/e;

    invoke-interface {v0, v1}, Lcom/viber/voip/stickers/d/b;->b(Lcom/viber/voip/stickers/c/d;)V

    .line 147
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/viber/voip/w;->w:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 149
    new-instance v0, Lcom/viber/voip/stickers/c/a;

    iget-object v1, p0, Lcom/viber/voip/stickers/b/e;->g:Lcom/viber/voip/stickers/c/e;

    invoke-virtual {v1}, Lcom/viber/voip/stickers/c/e;->e()I

    move-result v1

    iget-object v2, p0, Lcom/viber/voip/stickers/b/e;->g:Lcom/viber/voip/stickers/c/e;

    invoke-virtual {v2}, Lcom/viber/voip/stickers/c/e;->e()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/stickers/c/a;-><init>(II)V

    invoke-virtual {v0}, Lcom/viber/voip/stickers/c/a;->f()V

    .line 151
    iget-object v0, p0, Lcom/viber/voip/stickers/b/e;->g:Lcom/viber/voip/stickers/c/e;

    .line 154
    :try_start_0
    invoke-direct {p0}, Lcom/viber/voip/stickers/b/e;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    new-instance v0, Lcom/viber/voip/stickers/b/g;

    iget-object v1, p0, Lcom/viber/voip/stickers/b/e;->g:Lcom/viber/voip/stickers/c/e;

    invoke-virtual {v1}, Lcom/viber/voip/stickers/c/e;->e()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/stickers/b/g;-><init>(IZ)V

    invoke-virtual {v0}, Lcom/viber/voip/stickers/b/g;->a()V

    .line 156
    new-instance v0, Lcom/viber/voip/stickers/b/g;

    iget-object v1, p0, Lcom/viber/voip/stickers/b/e;->g:Lcom/viber/voip/stickers/c/e;

    invoke-virtual {v1}, Lcom/viber/voip/stickers/c/e;->e()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/stickers/b/g;-><init>(IZ)V

    invoke-virtual {v0}, Lcom/viber/voip/stickers/b/g;->a()V

    .line 159
    :cond_1
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/viber/voip/util/upload/e; {:try_start_0 .. :try_end_0} :catch_3

    .line 160
    :try_start_1
    iget-object v0, p0, Lcom/viber/voip/stickers/b/e;->m:Lcom/viber/voip/util/upload/d;

    invoke-virtual {v0}, Lcom/viber/voip/util/upload/d;->l()Lcom/viber/voip/util/upload/i;

    move-result-object v0

    .line 161
    new-instance v1, Lcom/viber/voip/stickers/b/f;

    invoke-direct {v1, p0, v0}, Lcom/viber/voip/stickers/b/f;-><init>(Lcom/viber/voip/stickers/b/e;Ljava/io/InputStream;)V

    invoke-virtual {v1}, Lcom/viber/voip/stickers/b/f;->start()V

    .line 180
    const-string/jumbo v1, "deploying..."

    invoke-static {v1}, Lcom/viber/voip/stickers/b/e;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    :try_start_2
    invoke-direct {p0, v0}, Lcom/viber/voip/stickers/b/e;->a(Ljava/io/InputStream;)Lcom/viber/voip/stickers/c/d;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 185
    :try_start_3
    const-string/jumbo v1, "Waiting for download to finish..."

    invoke-static {v1}, Lcom/viber/voip/stickers/b/e;->a(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 187
    const-string/jumbo v1, "Wait done"

    invoke-static {v1}, Lcom/viber/voip/stickers/b/e;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 192
    :goto_0
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 198
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Deploying stickers finished, deleting package file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/stickers/b/e;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/stickers/b/e;->a(Ljava/lang/String;)V

    .line 199
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/viber/voip/stickers/b/e;->i:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/viber/voip/util/upload/e; {:try_start_5 .. :try_end_5} :catch_3

    .line 207
    return-object v0

    .line 188
    :catch_0
    move-exception v1

    .line 189
    :try_start_6
    const-string/jumbo v1, "wait interrupted"

    invoke-static {v1}, Lcom/viber/voip/stickers/b/e;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/viber/voip/util/upload/e; {:try_start_7 .. :try_end_7} :catch_3

    .line 200
    :catch_1
    move-exception v0

    .line 201
    invoke-direct {p0, v0}, Lcom/viber/voip/stickers/b/e;->a(Ljava/lang/Exception;)V

    .line 202
    new-instance v1, Lcom/viber/voip/util/upload/e;

    invoke-direct {v1, v0}, Lcom/viber/voip/util/upload/e;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 184
    :catchall_1
    move-exception v0

    .line 185
    :try_start_8
    const-string/jumbo v1, "Waiting for download to finish..."

    invoke-static {v1}, Lcom/viber/voip/stickers/b/e;->a(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 187
    const-string/jumbo v1, "Wait done"

    invoke-static {v1}, Lcom/viber/voip/stickers/b/e;->a(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_2

    .line 190
    :goto_1
    :try_start_9
    throw v0

    .line 188
    :catch_2
    move-exception v1

    .line 189
    const-string/jumbo v1, "wait interrupted"

    invoke-static {v1}, Lcom/viber/voip/stickers/b/e;->a(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 203
    :catch_3
    move-exception v0

    .line 204
    invoke-direct {p0, v0}, Lcom/viber/voip/stickers/b/e;->a(Ljava/lang/Exception;)V

    .line 205
    throw v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/viber/voip/stickers/b/e;->m:Lcom/viber/voip/util/upload/d;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/viber/voip/stickers/b/e;->m:Lcom/viber/voip/util/upload/d;

    invoke-virtual {v0}, Lcom/viber/voip/util/upload/d;->f()V

    .line 249
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 6
    .parameter

    .prologue
    .line 130
    iput p1, p0, Lcom/viber/voip/stickers/b/e;->l:I

    .line 131
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 132
    iget-wide v2, p0, Lcom/viber/voip/stickers/b/e;->n:J

    sub-long v2, v0, v2

    .line 133
    const/16 v4, 0x64

    if-eq p1, v4, :cond_0

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 134
    :cond_0
    iget-object v2, p0, Lcom/viber/voip/stickers/b/e;->a:Lcom/viber/voip/stickers/d/b;

    iget-object v3, p0, Lcom/viber/voip/stickers/b/e;->g:Lcom/viber/voip/stickers/c/e;

    invoke-interface {v2, v3, p1}, Lcom/viber/voip/stickers/d/b;->a(Lcom/viber/voip/stickers/c/d;I)V

    .line 135
    iput-wide v0, p0, Lcom/viber/voip/stickers/b/e;->n:J

    .line 137
    :cond_1
    return-void
.end method

.method public c()Lcom/viber/voip/stickers/c/d;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/viber/voip/stickers/b/e;->g:Lcom/viber/voip/stickers/c/e;

    return-object v0
.end method

.method public abstract c(I)V
.end method

.method public d()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/viber/voip/stickers/b/e;->l:I

    return v0
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/viber/voip/stickers/b/e;->g:Lcom/viber/voip/stickers/c/e;

    invoke-virtual {v1}, Lcom/viber/voip/stickers/c/e;->e()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/stickers/b/e;->c(I)V

    .line 91
    iget-object v1, p0, Lcom/viber/voip/stickers/b/e;->g:Lcom/viber/voip/stickers/c/e;

    invoke-virtual {v1}, Lcom/viber/voip/stickers/c/e;->e()I

    move-result v1

    const-string/jumbo v2, "SVG"

    invoke-static {v1, v2}, Lcom/viber/voip/stickers/b/h;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getDownloadValve()Lcom/viber/voip/util/bb;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/viber/voip/util/bb;->b(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/viber/voip/util/upload/e; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    :try_start_1
    invoke-static {v2}, Lcom/viber/voip/stickers/b/h;->b(Ljava/lang/String;)I

    move-result v1

    .line 96
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/ViberApplication;->getDownloadValve()Lcom/viber/voip/util/bb;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/viber/voip/util/bb;->a(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/viber/voip/util/upload/e; {:try_start_1 .. :try_end_1} :catch_0

    .line 97
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 103
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    :try_start_2
    const-string/jumbo v0, "SVG"

    :goto_1
    iput-object v0, p0, Lcom/viber/voip/stickers/b/e;->k:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/viber/voip/stickers/b/e;->g:Lcom/viber/voip/stickers/c/e;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/c/e;->e()I

    move-result v0

    iget-object v1, p0, Lcom/viber/voip/stickers/b/e;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/viber/voip/stickers/b/h;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/stickers/b/e;->h:Ljava/lang/String;

    .line 106
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getDownloadValve()Lcom/viber/voip/util/bb;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/stickers/b/e;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/bb;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 107
    new-instance v0, Lcom/viber/voip/util/upload/e;

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Download disallowed by DownloadValve: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/stickers/b/e;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/viber/voip/util/upload/e;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/viber/voip/util/upload/e; {:try_start_2 .. :try_end_2} :catch_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PackageDownloadTask: exception during download(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/viber/voip/util/upload/e;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/viber/voip/stickers/b/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 121
    iget-object v0, p0, Lcom/viber/voip/stickers/b/e;->m:Lcom/viber/voip/util/upload/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/stickers/b/e;->m:Lcom/viber/voip/util/upload/d;

    invoke-virtual {v0}, Lcom/viber/voip/util/upload/d;->h()I

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getDownloadValve()Lcom/viber/voip/util/bb;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/stickers/b/e;->m:Lcom/viber/voip/util/upload/d;

    invoke-virtual {v1}, Lcom/viber/voip/util/upload/d;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/stickers/b/e;->m:Lcom/viber/voip/util/upload/d;

    invoke-virtual {v2}, Lcom/viber/voip/util/upload/d;->h()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/util/bb;->a(Ljava/lang/String;I)V

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/stickers/b/e;->g:Lcom/viber/voip/stickers/c/e;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/c/e;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/stickers/b/e;->a(I)V

    .line 126
    :goto_2
    return-void

    .line 98
    :catch_1
    move-exception v1

    .line 99
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error checking svg url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/viber/voip/stickers/b/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/viber/voip/util/upload/e; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 121
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/viber/voip/stickers/b/e;->m:Lcom/viber/voip/util/upload/d;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/viber/voip/stickers/b/e;->m:Lcom/viber/voip/util/upload/d;

    invoke-virtual {v1}, Lcom/viber/voip/util/upload/d;->h()I

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getDownloadValve()Lcom/viber/voip/util/bb;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/stickers/b/e;->m:Lcom/viber/voip/util/upload/d;

    invoke-virtual {v2}, Lcom/viber/voip/util/upload/d;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/stickers/b/e;->m:Lcom/viber/voip/util/upload/d;

    invoke-virtual {v3}, Lcom/viber/voip/util/upload/d;->h()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/util/bb;->a(Ljava/lang/String;I)V

    .line 124
    :cond_2
    iget-object v1, p0, Lcom/viber/voip/stickers/b/e;->g:Lcom/viber/voip/stickers/c/e;

    invoke-virtual {v1}, Lcom/viber/voip/stickers/c/e;->e()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/stickers/b/e;->a(I)V

    throw v0

    .line 103
    :cond_3
    :try_start_5
    sget v0, Lcom/viber/voip/stickers/an;->j:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 110
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/stickers/b/e;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/viber/voip/stickers/b/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/stickers/b/e;->i:Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/viber/voip/stickers/b/e;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/stickers/b/e;->j:Ljava/lang/String;

    .line 113
    new-instance v0, Lcom/viber/voip/util/upload/d;

    iget-object v1, p0, Lcom/viber/voip/stickers/b/e;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/viber/voip/stickers/b/e;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/viber/voip/stickers/b/e;->j:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/viber/voip/util/upload/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/viber/voip/stickers/b/e;->m:Lcom/viber/voip/util/upload/d;

    .line 114
    iget-object v0, p0, Lcom/viber/voip/stickers/b/e;->m:Lcom/viber/voip/util/upload/d;

    invoke-virtual {v0, p0}, Lcom/viber/voip/util/upload/d;->a(Lcom/viber/voip/util/upload/m;)V

    .line 116
    invoke-virtual {p0}, Lcom/viber/voip/stickers/b/e;->a()Lcom/viber/voip/stickers/c/d;

    .line 117
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getDownloadValve()Lcom/viber/voip/util/bb;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/stickers/b/e;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/bb;->c(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/viber/voip/util/upload/e; {:try_start_5 .. :try_end_5} :catch_0

    .line 121
    iget-object v0, p0, Lcom/viber/voip/stickers/b/e;->m:Lcom/viber/voip/util/upload/d;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/viber/voip/stickers/b/e;->m:Lcom/viber/voip/util/upload/d;

    invoke-virtual {v0}, Lcom/viber/voip/util/upload/d;->h()I

    move-result v0

    if-eqz v0, :cond_5

    .line 122
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getDownloadValve()Lcom/viber/voip/util/bb;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/stickers/b/e;->m:Lcom/viber/voip/util/upload/d;

    invoke-virtual {v1}, Lcom/viber/voip/util/upload/d;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/stickers/b/e;->m:Lcom/viber/voip/util/upload/d;

    invoke-virtual {v2}, Lcom/viber/voip/util/upload/d;->h()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/util/bb;->a(Ljava/lang/String;I)V

    .line 124
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/stickers/b/e;->g:Lcom/viber/voip/stickers/c/e;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/c/e;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/stickers/b/e;->a(I)V

    goto/16 :goto_2
.end method
