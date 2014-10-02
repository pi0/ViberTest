.class public Lcom/android/a/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/a/a/i;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/a/a/h;->a:Ljava/util/Vector;

    .line 121
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/a/a/h;->b:I

    .line 122
    iput v1, p0, Lcom/android/a/a/h;->c:I

    .line 123
    iput v1, p0, Lcom/android/a/a/h;->d:I

    .line 129
    return-void
.end method


# virtual methods
.method a(Landroid/os/Message;Lcom/android/a/a/a;Lcom/android/a/a/a;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 186
    iget v0, p0, Lcom/android/a/a/h;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/a/a/h;->d:I

    .line 187
    iget-object v0, p0, Lcom/android/a/a/h;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget v1, p0, Lcom/android/a/a/h;->b:I

    if-ge v0, v1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/a/a/h;->a:Ljava/util/Vector;

    new-instance v1, Lcom/android/a/a/i;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/a/a/i;-><init>(Lcom/android/a/a/h;Landroid/os/Message;Lcom/android/a/a/a;Lcom/android/a/a/a;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 197
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/a/a/h;->a:Ljava/util/Vector;

    iget v1, p0, Lcom/android/a/a/h;->c:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/a/a/i;

    .line 191
    iget v1, p0, Lcom/android/a/a/h;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/a/a/h;->c:I

    .line 192
    iget v1, p0, Lcom/android/a/a/h;->c:I

    iget v2, p0, Lcom/android/a/a/h;->b:I

    if-lt v1, v2, :cond_1

    .line 193
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/a/a/h;->c:I

    .line 195
    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/a/a/i;->a(Landroid/os/Message;Lcom/android/a/a/a;Lcom/android/a/a/a;)V

    goto :goto_0
.end method
