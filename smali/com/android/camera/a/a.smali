.class public abstract Lcom/android/camera/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/camera/a/c;


# instance fields
.field protected a:Landroid/content/ContentResolver;

.field protected b:Landroid/net/Uri;

.field protected c:J

.field protected d:Ljava/lang/String;

.field protected e:J

.field protected final f:I

.field protected g:Ljava/lang/String;

.field protected h:Lcom/android/camera/a/b;

.field private final i:J

.field private j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private l:I

.field private m:I


# direct methods
.method protected constructor <init>(Lcom/android/camera/a/b;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
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
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput v0, p0, Lcom/android/camera/a/a;->l:I

    .line 58
    iput v0, p0, Lcom/android/camera/a/a;->m:I

    .line 63
    iput-object p1, p0, Lcom/android/camera/a/a;->h:Lcom/android/camera/a/b;

    .line 64
    iput-object p2, p0, Lcom/android/camera/a/a;->a:Landroid/content/ContentResolver;

    .line 65
    iput-wide p3, p0, Lcom/android/camera/a/a;->c:J

    .line 66
    iput p5, p0, Lcom/android/camera/a/a;->f:I

    .line 67
    iput-object p6, p0, Lcom/android/camera/a/a;->b:Landroid/net/Uri;

    .line 68
    iput-object p7, p0, Lcom/android/camera/a/a;->d:Ljava/lang/String;

    .line 69
    iput-wide p8, p0, Lcom/android/camera/a/a;->e:J

    .line 70
    iput-object p10, p0, Lcom/android/camera/a/a;->g:Ljava/lang/String;

    .line 71
    iput-wide p11, p0, Lcom/android/camera/a/a;->i:J

    .line 72
    iput-object p13, p0, Lcom/android/camera/a/a;->j:Ljava/lang/String;

    .line 73
    iput-object p14, p0, Lcom/android/camera/a/a;->k:Ljava/lang/String;

    .line 74
    return-void
.end method


# virtual methods
.method public a(II)Landroid/graphics/Bitmap;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 92
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/camera/a/a;->a(IIZZ)Landroid/graphics/Bitmap;

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
    .line 98
    iget-object v0, p0, Lcom/android/camera/a/a;->h:Lcom/android/camera/a/b;

    iget-wide v1, p0, Lcom/android/camera/a/a;->c:J

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/a/b;->a(J)Landroid/net/Uri;

    move-result-object v0

    .line 99
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 108
    :cond_0
    :goto_0
    return-object v0

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/android/camera/a/a;->a:Landroid/content/ContentResolver;

    invoke-static {p1, p2, v0, v1, p4}, Lcom/android/camera/z;->a(IILandroid/net/Uri;Landroid/content/ContentResolver;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/android/camera/a/a;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/z;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/camera/a/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/android/camera/a/a;->i:J

    return-wide v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/camera/a/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 82
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/camera/a/e;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 83
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/a/a;->b:Landroid/net/Uri;

    check-cast p1, Lcom/android/camera/a/e;

    iget-object v1, p1, Lcom/android/camera/a/e;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/a/a;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/camera/a/a;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
