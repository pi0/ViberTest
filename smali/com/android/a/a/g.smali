.class Lcom/android/a/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/android/a/a/a;

.field b:Lcom/android/a/a/g;

.field c:Z

.field final synthetic d:Lcom/android/a/a/d;


# direct methods
.method private constructor <init>(Lcom/android/a/a/d;)V
    .locals 0
    .parameter

    .prologue
    .line 486
    iput-object p1, p0, Lcom/android/a/a/g;->d:Lcom/android/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/a/a/d;Lcom/android/a/a/c;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 486
    invoke-direct {p0, p1}, Lcom/android/a/a/g;-><init>(Lcom/android/a/a/d;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/a/a/g;->a:Lcom/android/a/a/a;

    invoke-virtual {v1}, Lcom/android/a/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/a/a/g;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/a/a/g;->b:Lcom/android/a/a/g;

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/a/a/g;->b:Lcom/android/a/a/g;

    iget-object v0, v0, Lcom/android/a/a/g;->a:Lcom/android/a/a/a;

    invoke-virtual {v0}, Lcom/android/a/a/a;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
