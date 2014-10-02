.class public Lcom/viber/voip/util/upload/l;
.super Lcom/viber/voip/util/upload/d;
.source "SourceFile"


# static fields
.field private static final i:Ljava/lang/String;


# instance fields
.field private j:Z

.field private k:Z

.field private l:I

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/viber/voip/util/upload/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/util/upload/l;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/util/upload/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iput-boolean p4, p0, Lcom/viber/voip/util/upload/l;->j:Z

    .line 31
    iput-boolean p5, p0, Lcom/viber/voip/util/upload/l;->k:Z

    .line 32
    iput p6, p0, Lcom/viber/voip/util/upload/l;->l:I

    .line 33
    iput p7, p0, Lcom/viber/voip/util/upload/l;->m:I

    .line 34
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    if-eqz p1, :cond_0

    .line 95
    invoke-static {p1}, Lcom/viber/voip/messages/extras/image/h;->b(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 96
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p3, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 97
    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    .line 98
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V

    .line 100
    :cond_0
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 101
    return-void
.end method

.method private a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 58
    const-string/jumbo v0, "saveLocationStream"

    invoke-direct {p0, v0}, Lcom/viber/voip/util/upload/l;->a(Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Lcom/viber/voip/util/upload/l;->m()V

    .line 61
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/map/d;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 63
    iget-boolean v0, p0, Lcom/viber/voip/util/upload/l;->j:Z

    if-eqz v0, :cond_1

    .line 64
    const/4 v0, 0x0

    .line 65
    if-eqz v1, :cond_0

    .line 66
    new-instance v0, Lcom/viber/voip/messages/extras/image/k;

    const v2, 0x7f0200d7

    iget v3, p0, Lcom/viber/voip/util/upload/l;->l:I

    iget v4, p0, Lcom/viber/voip/util/upload/l;->m:I

    invoke-direct {v0, v2, v3, v4}, Lcom/viber/voip/messages/extras/image/k;-><init>(III)V

    .line 67
    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/extras/image/k;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 69
    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lcom/viber/voip/util/upload/l;->a(Landroid/graphics/Bitmap;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_1
    invoke-direct {p0, v1, p1, p2}, Lcom/viber/voip/util/upload/l;->a(Landroid/graphics/Bitmap;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 110
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/util/upload/l;->i:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/viber/voip/util/upload/l;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method private b(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 76
    const-string/jumbo v0, "saveLocationStream"

    invoke-direct {p0, v0}, Lcom/viber/voip/util/upload/l;->a(Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lcom/viber/voip/util/upload/l;->m()V

    .line 79
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 80
    iget-boolean v0, p0, Lcom/viber/voip/util/upload/l;->j:Z

    if-eqz v0, :cond_1

    .line 81
    const/4 v0, 0x0

    .line 82
    if-eqz v1, :cond_0

    .line 83
    new-instance v0, Lcom/viber/voip/messages/extras/image/k;

    const v2, 0x7f0200d7

    iget v3, p0, Lcom/viber/voip/util/upload/l;->l:I

    iget v4, p0, Lcom/viber/voip/util/upload/l;->m:I

    invoke-direct {v0, v2, v3, v4}, Lcom/viber/voip/messages/extras/image/k;-><init>(III)V

    .line 84
    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/extras/image/k;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 86
    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lcom/viber/voip/util/upload/l;->a(Landroid/graphics/Bitmap;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_1
    invoke-direct {p0, v1, p1, p2}, Lcom/viber/voip/util/upload/l;->a(Landroid/graphics/Bitmap;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_0
.end method

.method private m()V
    .locals 2

    .prologue
    .line 104
    const-string/jumbo v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "sdcard unmounted"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    return-void
.end method


# virtual methods
.method protected b(Ljava/net/URL;)V
    .locals 2
    .parameter

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/viber/voip/util/upload/l;->a(Ljava/net/URL;)V

    .line 39
    iget-object v0, p0, Lcom/viber/voip/util/upload/l;->f:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/util/upload/l;->f:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/util/upload/l;->a(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    .line 42
    iget-boolean v1, p0, Lcom/viber/voip/util/upload/l;->k:Z

    if-eqz v1, :cond_1

    .line 43
    iget-object v1, p0, Lcom/viber/voip/util/upload/l;->d:Ljava/io/InputStream;

    invoke-direct {p0, v1, v0}, Lcom/viber/voip/util/upload/l;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 47
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/util/upload/l;->d:Ljava/io/InputStream;

    .line 48
    iget-object v0, p0, Lcom/viber/voip/util/upload/l;->f:Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/viber/voip/util/upload/l;->b(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    sget-boolean v0, Lcom/viber/voip/util/upload/l;->a:Z

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/viber/voip/util/upload/l;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 55
    :cond_0
    return-void

    .line 45
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/viber/voip/util/upload/l;->d:Ljava/io/InputStream;

    invoke-direct {p0, v1, v0}, Lcom/viber/voip/util/upload/l;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/viber/voip/util/upload/l;->a:Z

    if-nez v1, :cond_2

    .line 51
    iget-object v1, p0, Lcom/viber/voip/util/upload/l;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2
    throw v0
.end method
