.class public Lcom/android/camera/a/e;
.super Lcom/android/camera/a/a;
.source "SourceFile"

# interfaces
.implements Lcom/android/camera/a/c;


# static fields
.field private static final j:[Ljava/lang/String;


# instance fields
.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 147
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/a/e;->j:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/a/b;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
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
    .line 48
    invoke-direct/range {p0 .. p14}, Lcom/android/camera/a/a;-><init>(Lcom/android/camera/a/b;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 50
    iput p15, p0, Lcom/android/camera/a/e;->i:I

    .line 51
    return-void
.end method


# virtual methods
.method public a(Z)Landroid/graphics/Bitmap;
    .locals 5
    .parameter

    .prologue
    .line 152
    .line 153
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 154
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 155
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 156
    iget-object v1, p0, Lcom/android/camera/a/e;->a:Landroid/content/ContentResolver;

    iget-wide v2, p0, Lcom/android/camera/a/e;->c:J

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4, v0}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/android/camera/a/e;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/z;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 163
    :cond_0
    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/android/camera/a/e;->i:I

    return v0
.end method
