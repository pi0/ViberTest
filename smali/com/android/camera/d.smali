.class Lcom/android/camera/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/android/camera/c;

.field public b:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lcom/android/camera/c;->b:Lcom/android/camera/c;

    iput-object v0, p0, Lcom/android/camera/d;->a:Lcom/android/camera/c;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/b;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/camera/d;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/d;->a:Lcom/android/camera/c;

    sget-object v1, Lcom/android/camera/c;->a:Lcom/android/camera/c;

    if-ne v0, v1, :cond_0

    .line 49
    const-string/jumbo v0, "Cancel"

    .line 55
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "thread state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", options = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/d;->b:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    return-object v0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/camera/d;->a:Lcom/android/camera/c;

    sget-object v1, Lcom/android/camera/c;->b:Lcom/android/camera/c;

    if-ne v0, v1, :cond_1

    .line 51
    const-string/jumbo v0, "Allow"

    goto :goto_0

    .line 53
    :cond_1
    const-string/jumbo v0, "?"

    goto :goto_0
.end method
