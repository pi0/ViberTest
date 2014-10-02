.class public Lcom/android/a/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/android/a/a/h;

.field private b:I

.field private c:Lcom/android/a/a/a;

.field private d:Lcom/android/a/a/a;


# direct methods
.method constructor <init>(Lcom/android/a/a/h;Landroid/os/Message;Lcom/android/a/a/a;Lcom/android/a/a/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/a/a/i;->a:Lcom/android/a/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/a/a/i;->a(Landroid/os/Message;Lcom/android/a/a/a;Lcom/android/a/a/a;)V

    .line 57
    return-void
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 111
    const-string/jumbo v0, "null"

    .line 115
    :goto_0
    return-object v0

    .line 113
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 114
    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 115
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/os/Message;Lcom/android/a/a/a;Lcom/android/a/a/a;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, p0, Lcom/android/a/a/i;->b:I

    .line 67
    iput-object p2, p0, Lcom/android/a/a/i;->c:Lcom/android/a/a/a;

    .line 68
    iput-object p3, p0, Lcom/android/a/a/i;->d:Lcom/android/a/a/a;

    .line 69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    const-string/jumbo v1, "what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget v1, p0, Lcom/android/a/a/i;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    const-string/jumbo v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-object v1, p0, Lcom/android/a/a/i;->c:Lcom/android/a/a/a;

    invoke-direct {p0, v1}, Lcom/android/a/a/i;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string/jumbo v1, " orgState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-object v1, p0, Lcom/android/a/a/i;->d:Lcom/android/a/a/a;

    invoke-direct {p0, v1}, Lcom/android/a/a/i;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
