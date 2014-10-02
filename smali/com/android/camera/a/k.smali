.class Lcom/android/camera/a/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:J

.field c:Lcom/android/camera/a/c;

.field private d:I

.field private final e:Lcom/android/camera/a/d;


# direct methods
.method public constructor <init>(Lcom/android/camera/a/d;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/a/k;->d:I

    .line 278
    iput-object p1, p0, Lcom/android/camera/a/k;->e:Lcom/android/camera/a/d;

    .line 279
    iput p2, p0, Lcom/android/camera/a/k;->a:I

    .line 280
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    .line 283
    iget v0, p0, Lcom/android/camera/a/k;->d:I

    iget-object v1, p0, Lcom/android/camera/a/k;->e:Lcom/android/camera/a/d;

    invoke-interface {v1}, Lcom/android/camera/a/d;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 286
    :goto_0
    return v0

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/android/camera/a/k;->e:Lcom/android/camera/a/d;

    iget v1, p0, Lcom/android/camera/a/k;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/camera/a/k;->d:I

    invoke-interface {v0, v1}, Lcom/android/camera/a/d;->a(I)Lcom/android/camera/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/a/k;->c:Lcom/android/camera/a/c;

    .line 285
    iget-object v0, p0, Lcom/android/camera/a/k;->c:Lcom/android/camera/a/c;

    invoke-interface {v0}, Lcom/android/camera/a/c;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/a/k;->b:J

    .line 286
    const/4 v0, 0x1

    goto :goto_0
.end method
