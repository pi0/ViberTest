.class Lcom/android/a/a/e;
.super Lcom/android/a/a/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/android/a/a/d;


# direct methods
.method private constructor <init>(Lcom/android/a/a/d;)V
    .locals 0
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, Lcom/android/a/a/e;->a:Lcom/android/a/a/d;

    invoke-direct {p0}, Lcom/android/a/a/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/a/a/d;Lcom/android/a/a/c;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 523
    invoke-direct {p0, p1}, Lcom/android/a/a/e;-><init>(Lcom/android/a/a/d;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)Z
    .locals 1
    .parameter

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/a/a/e;->a:Lcom/android/a/a/d;

    invoke-static {v0}, Lcom/android/a/a/d;->a(Lcom/android/a/a/d;)Lcom/android/a/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/a/a/b;->b(Landroid/os/Message;)V

    .line 527
    const/4 v0, 0x1

    return v0
.end method
