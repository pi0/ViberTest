.class public abstract Lcom/viber/voip/backgrounds/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/upload/m;
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final i:Ljava/lang/String;


# instance fields
.field protected b:Lcom/viber/voip/backgrounds/m;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Lcom/viber/voip/util/upload/d;

.field private h:Lcom/viber/voip/backgrounds/o;

.field private j:Landroid/os/Handler;

.field private k:Lcom/viber/voip/backgrounds/m;

.field private l:Lcom/viber/voip/backgrounds/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-string/jumbo v0, "([0-9a-f]{8})\\.jpg$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/backgrounds/b/g;->a:Ljava/util/regex/Pattern;

    .line 46
    const-class v0, Lcom/viber/voip/backgrounds/b/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/backgrounds/b/g;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/backgrounds/o;Lcom/viber/voip/backgrounds/a;Lcom/viber/voip/backgrounds/m;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/backgrounds/b/g;->j:Landroid/os/Handler;

    .line 56
    new-instance v0, Lcom/viber/voip/backgrounds/b/h;

    invoke-direct {v0, p0}, Lcom/viber/voip/backgrounds/b/h;-><init>(Lcom/viber/voip/backgrounds/b/g;)V

    iput-object v0, p0, Lcom/viber/voip/backgrounds/b/g;->b:Lcom/viber/voip/backgrounds/m;

    .line 117
    iput-object p3, p0, Lcom/viber/voip/backgrounds/b/g;->k:Lcom/viber/voip/backgrounds/m;

    .line 118
    sget v0, Lcom/viber/voip/backgrounds/n;->b:I

    iput v0, p0, Lcom/viber/voip/backgrounds/b/g;->f:I

    .line 119
    iput-object p2, p0, Lcom/viber/voip/backgrounds/b/g;->l:Lcom/viber/voip/backgrounds/a;

    .line 121
    iput-object p1, p0, Lcom/viber/voip/backgrounds/b/g;->h:Lcom/viber/voip/backgrounds/o;

    .line 122
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/g;->h:Lcom/viber/voip/backgrounds/o;

    iget v0, v0, Lcom/viber/voip/backgrounds/o;->a:I

    iget v1, p0, Lcom/viber/voip/backgrounds/b/g;->f:I

    invoke-static {v0, v1}, Lcom/viber/voip/backgrounds/b/a;->b(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/backgrounds/b/g;->e:Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/g;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/viber/voip/backgrounds/b/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/backgrounds/b/g;->c:Ljava/lang/String;

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/viber/voip/backgrounds/b/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/backgrounds/b/g;->d:Ljava/lang/String;

    .line 125
    new-instance v0, Lcom/viber/voip/util/upload/d;

    iget-object v1, p0, Lcom/viber/voip/backgrounds/b/g;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/viber/voip/backgrounds/b/g;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/viber/voip/backgrounds/b/g;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/viber/voip/util/upload/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/viber/voip/backgrounds/b/g;->g:Lcom/viber/voip/util/upload/d;

    .line 126
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/g;->g:Lcom/viber/voip/util/upload/d;

    invoke-virtual {v0, p0}, Lcom/viber/voip/util/upload/d;->a(Lcom/viber/voip/util/upload/m;)V

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "download package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/backgrounds/b/g;->h:Lcom/viber/voip/backgrounds/o;

    iget v1, v1, Lcom/viber/voip/backgrounds/o;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/backgrounds/b/g;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/backgrounds/b/g;->a(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/backgrounds/b/g;)Lcom/viber/voip/backgrounds/m;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/g;->k:Lcom/viber/voip/backgrounds/m;

    return-object v0
.end method

.method private a(Ljava/io/InputStream;)Lcom/viber/voip/backgrounds/o;
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 242
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 243
    new-instance v5, Ljava/util/zip/ZipInputStream;

    invoke-direct {v5, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 247
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    move-object v3, v0

    move v2, v1

    :goto_0
    if-eqz v3, :cond_1

    .line 248
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 249
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    :goto_1
    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 251
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_3

    .line 252
    invoke-direct {p0, v6}, Lcom/viber/voip/backgrounds/b/g;->b(Ljava/lang/String;)I

    move-result v3

    .line 254
    if-ltz v3, :cond_3

    invoke-direct {p0, v4, v3}, Lcom/viber/voip/backgrounds/b/g;->a(Ljava/util/ArrayList;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 256
    add-int/lit8 v0, v2, 0x1

    .line 257
    new-instance v2, Lcom/viber/voip/backgrounds/q;

    iget-object v7, p0, Lcom/viber/voip/backgrounds/b/g;->h:Lcom/viber/voip/backgrounds/o;

    iget v7, v7, Lcom/viber/voip/backgrounds/o;->a:I

    const-string/jumbo v8, "t"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    invoke-direct {v2, v3, v7, v6}, Lcom/viber/voip/backgrounds/q;-><init>(IIZ)V

    .line 259
    :try_start_0
    iget-object v3, v2, Lcom/viber/voip/backgrounds/q;->g:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/viber/voip/backgrounds/b/a;->a(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 260
    iget-object v3, p0, Lcom/viber/voip/backgrounds/b/g;->l:Lcom/viber/voip/backgrounds/a;

    invoke-virtual {v3, v2}, Lcom/viber/voip/backgrounds/a;->b(Lcom/viber/voip/backgrounds/q;)V
    :try_end_0
    .catch Lcom/viber/voip/backgrounds/k; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    iget-object v3, p0, Lcom/viber/voip/backgrounds/b/g;->b:Lcom/viber/voip/backgrounds/m;

    iget-object v6, p0, Lcom/viber/voip/backgrounds/b/g;->h:Lcom/viber/voip/backgrounds/o;

    invoke-interface {v3, v6, v2}, Lcom/viber/voip/backgrounds/m;->a(Lcom/viber/voip/backgrounds/o;Lcom/viber/voip/backgrounds/q;)V

    .line 269
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    :goto_2
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 247
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    move-object v3, v2

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 249
    goto :goto_1

    .line 261
    :catch_0
    move-exception v0

    .line 262
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Low storage during deployment! Aborting"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_1
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V

    .line 277
    if-nez v2, :cond_2

    .line 278
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Unzip, no backgrounds unzipped, generating an exception"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/g;->h:Lcom/viber/voip/backgrounds/o;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/backgrounds/o;->b(Z)V

    .line 282
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/g;->h:Lcom/viber/voip/backgrounds/o;

    invoke-virtual {v0, v4}, Lcom/viber/voip/backgrounds/o;->a(Ljava/util/ArrayList;)V

    .line 284
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/g;->b:Lcom/viber/voip/backgrounds/m;

    iget-object v1, p0, Lcom/viber/voip/backgrounds/b/g;->h:Lcom/viber/voip/backgrounds/o;

    invoke-interface {v0, v1}, Lcom/viber/voip/backgrounds/m;->a(Lcom/viber/voip/backgrounds/o;)V

    .line 286
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V

    .line 287
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 290
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/g;->h:Lcom/viber/voip/backgrounds/o;

    return-object v0

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method static synthetic a(Lcom/viber/voip/backgrounds/b/g;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/viber/voip/backgrounds/b/g;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    return-void
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 2
    .parameter

    .prologue
    .line 215
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 216
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/g;->b:Lcom/viber/voip/backgrounds/m;

    iget-object v1, p0, Lcom/viber/voip/backgrounds/b/g;->h:Lcom/viber/voip/backgrounds/o;

    invoke-interface {v0, v1}, Lcom/viber/voip/backgrounds/m;->b(Lcom/viber/voip/backgrounds/o;)V

    .line 218
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/g;->g:Lcom/viber/voip/util/upload/d;

    invoke-virtual {v0}, Lcom/viber/voip/util/upload/d;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/viber/voip/backgrounds/b/g;->c()V

    .line 223
    :goto_0
    return-void

    .line 221
    :cond_0
    const-string/jumbo v0, "Download has not finished successfully, not blaming unpack"

    invoke-static {v0}, Lcom/viber/voip/backgrounds/b/g;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/util/ArrayList;I)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/voip/backgrounds/q;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 294
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/backgrounds/q;

    .line 295
    iget v0, v0, Lcom/viber/voip/backgrounds/q;->a:I

    if-ne v0, p2, :cond_0

    .line 296
    const/4 v0, 0x1

    .line 299
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 303
    sget-object v0, Lcom/viber/voip/backgrounds/b/g;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 306
    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 308
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/viber/voip/backgrounds/b/g;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/g;->j:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/viber/voip/backgrounds/b/g;)Lcom/viber/voip/util/upload/d;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/g;->g:Lcom/viber/voip/util/upload/d;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/viber/voip/w;->B:Ljava/lang/String;

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

.method private c()V
    .locals 3

    .prologue
    .line 227
    const-string/jumbo v0, "handleExceptionDuringUnpack()"

    invoke-static {v0}, Lcom/viber/voip/backgrounds/b/g;->a(Ljava/lang/String;)V

    .line 228
    const-string/jumbo v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Deleting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/backgrounds/b/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", success:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/viber/voip/backgrounds/b/g;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/backgrounds/b/g;->a(Ljava/lang/String;)V

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Deleting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/backgrounds/b/g;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", success:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/viber/voip/backgrounds/b/g;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/backgrounds/b/g;->a(Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getDownloadValve()Lcom/viber/voip/util/bb;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/backgrounds/b/g;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/bb;->a(Ljava/lang/String;)V

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_0
    const-string/jumbo v0, "sdcard unmounted"

    invoke-static {v0}, Lcom/viber/voip/backgrounds/b/g;->a(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/viber/voip/backgrounds/o;
    .locals 3

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "start downloading package id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/backgrounds/b/g;->h:Lcom/viber/voip/backgrounds/o;

    iget v1, v1, Lcom/viber/voip/backgrounds/o;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/backgrounds/b/g;->a(Ljava/lang/String;)V

    .line 151
    new-instance v0, Lcom/viber/voip/backgrounds/q;

    iget-object v1, p0, Lcom/viber/voip/backgrounds/b/g;->h:Lcom/viber/voip/backgrounds/o;

    iget v1, v1, Lcom/viber/voip/backgrounds/o;->a:I

    iget-object v2, p0, Lcom/viber/voip/backgrounds/b/g;->h:Lcom/viber/voip/backgrounds/o;

    iget v2, v2, Lcom/viber/voip/backgrounds/o;->a:I

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/backgrounds/q;-><init>(II)V

    invoke-virtual {v0}, Lcom/viber/voip/backgrounds/q;->d()V

    .line 153
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/g;->h:Lcom/viber/voip/backgrounds/o;

    .line 156
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Lcom/viber/voip/util/upload/e; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 157
    :try_start_1
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/g;->g:Lcom/viber/voip/util/upload/d;

    invoke-virtual {v0}, Lcom/viber/voip/util/upload/d;->l()Lcom/viber/voip/util/upload/i;

    move-result-object v0

    .line 158
    new-instance v1, Lcom/viber/voip/backgrounds/b/n;

    invoke-direct {v1, p0, v0}, Lcom/viber/voip/backgrounds/b/n;-><init>(Lcom/viber/voip/backgrounds/b/g;Ljava/io/InputStream;)V

    invoke-virtual {v1}, Lcom/viber/voip/backgrounds/b/n;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 179
    :try_start_2
    invoke-direct {p0, v0}, Lcom/viber/voip/backgrounds/b/g;->a(Ljava/io/InputStream;)Lcom/viber/voip/backgrounds/o;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 182
    :try_start_3
    const-string/jumbo v1, "Waiting for download to finish..."

    invoke-static {v1}, Lcom/viber/voip/backgrounds/b/g;->a(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 184
    const-string/jumbo v1, "Wait done"

    invoke-static {v1}, Lcom/viber/voip/backgrounds/b/g;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 189
    :goto_0
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 196
    :try_start_5
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/viber/voip/backgrounds/b/g;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Lcom/viber/voip/util/upload/e; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 204
    iget-object v1, p0, Lcom/viber/voip/backgrounds/b/g;->g:Lcom/viber/voip/util/upload/d;

    invoke-virtual {v1}, Lcom/viber/voip/util/upload/d;->f()V

    .line 206
    return-object v0

    .line 181
    :catchall_0
    move-exception v0

    .line 182
    :try_start_6
    const-string/jumbo v1, "Waiting for download to finish..."

    invoke-static {v1}, Lcom/viber/voip/backgrounds/b/g;->a(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 184
    const-string/jumbo v1, "Wait done"

    invoke-static {v1}, Lcom/viber/voip/backgrounds/b/g;->a(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2

    .line 187
    :goto_1
    :try_start_7
    throw v0

    .line 189
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Lcom/viber/voip/util/upload/e; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 197
    :catch_0
    move-exception v0

    .line 198
    :try_start_9
    invoke-direct {p0, v0}, Lcom/viber/voip/backgrounds/b/g;->a(Ljava/lang/Throwable;)V

    .line 199
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 204
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/viber/voip/backgrounds/b/g;->g:Lcom/viber/voip/util/upload/d;

    invoke-virtual {v1}, Lcom/viber/voip/util/upload/d;->f()V

    throw v0

    .line 200
    :catch_1
    move-exception v0

    .line 201
    :try_start_a
    invoke-direct {p0, v0}, Lcom/viber/voip/backgrounds/b/g;->a(Ljava/lang/Throwable;)V

    .line 202
    new-instance v1, Lcom/viber/voip/util/upload/e;

    invoke-direct {v1, v0}, Lcom/viber/voip/util/upload/e;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 185
    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public abstract a(I)V
.end method

.method public b()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/g;->g:Lcom/viber/voip/util/upload/d;

    invoke-virtual {v0}, Lcom/viber/voip/util/upload/d;->f()V

    .line 239
    return-void
.end method

.method public b(I)V
    .locals 2
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/g;->b:Lcom/viber/voip/backgrounds/m;

    iget-object v1, p0, Lcom/viber/voip/backgrounds/b/g;->h:Lcom/viber/voip/backgrounds/o;

    invoke-interface {v0, v1, p1}, Lcom/viber/voip/backgrounds/m;->a(Lcom/viber/voip/backgrounds/o;I)V

    .line 146
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 134
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/backgrounds/b/g;->a()Lcom/viber/voip/backgrounds/o;

    .line 135
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getDownloadValve()Lcom/viber/voip/util/bb;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/backgrounds/b/g;->g:Lcom/viber/voip/util/upload/d;

    invoke-virtual {v1}, Lcom/viber/voip/util/upload/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/bb;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/viber/voip/util/upload/e; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/g;->h:Lcom/viber/voip/backgrounds/o;

    iget v0, v0, Lcom/viber/voip/backgrounds/o;->a:I

    invoke-virtual {p0, v0}, Lcom/viber/voip/backgrounds/b/g;->a(I)V

    .line 141
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PackageDownloadTask: exception during download() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/viber/voip/util/upload/e;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/viber/voip/backgrounds/b/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/g;->h:Lcom/viber/voip/backgrounds/o;

    iget v0, v0, Lcom/viber/voip/backgrounds/o;->a:I

    invoke-virtual {p0, v0}, Lcom/viber/voip/backgrounds/b/g;->a(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/viber/voip/backgrounds/b/g;->h:Lcom/viber/voip/backgrounds/o;

    iget v1, v1, Lcom/viber/voip/backgrounds/o;->a:I

    invoke-virtual {p0, v1}, Lcom/viber/voip/backgrounds/b/g;->a(I)V

    throw v0
.end method
