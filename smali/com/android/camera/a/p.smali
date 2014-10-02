.class Lcom/android/camera/a/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/camera/a/c;


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Lcom/android/camera/a/d;

.field private final c:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/camera/a/d;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/camera/a/p;->b:Lcom/android/camera/a/d;

    .line 41
    iput-object p2, p0, Lcom/android/camera/a/p;->c:Landroid/content/ContentResolver;

    .line 42
    iput-object p3, p0, Lcom/android/camera/a/p;->a:Landroid/net/Uri;

    .line 43
    return-void
.end method

.method private c()Landroid/os/ParcelFileDescriptor;
    .locals 3

    .prologue
    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/a/p;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/camera/a/p;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 69
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x1000

    invoke-static {v1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/camera/a/p;->c:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/a/p;->a:Landroid/net/Uri;

    const-string/jumbo v2, "r"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(II)Landroid/graphics/Bitmap;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 80
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/camera/a/p;->a(IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(IIZ)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/camera/a/p;->a(IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(IIZZ)Landroid/graphics/Bitmap;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/a/p;->c()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 94
    invoke-static {p1, p2, v0, p4}, Lcom/android/camera/z;->a(IILandroid/os/ParcelFileDescriptor;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 99
    :goto_0
    return-object v0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    const-string/jumbo v1, "UriImage"

    const-string/jumbo v2, "got exception decoding bitmap "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Z)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    .line 124
    const/16 v0, 0x140

    const/high16 v1, 0x3

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/camera/a/p;->a(IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/a/p;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 168
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/a/p;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
