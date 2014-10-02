.class public Lcom/android/camera/a/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/camera/a/d;


# instance fields
.field private a:Lcom/android/camera/a/c;

.field private b:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/android/camera/a/o;->b:Landroid/net/Uri;

    .line 38
    new-instance v0, Lcom/android/camera/a/p;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/a/p;-><init>(Lcom/android/camera/a/d;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/camera/a/o;->a:Lcom/android/camera/a/c;

    .line 39
    return-void
.end method


# virtual methods
.method public a(I)Lcom/android/camera/a/c;
    .locals 1
    .parameter

    .prologue
    .line 58
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/a/o;->a:Lcom/android/camera/a/c;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/net/Uri;)Lcom/android/camera/a/c;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/a/o;->b:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/a/o;->a:Lcom/android/camera/a/c;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/android/camera/a/o;->a:Lcom/android/camera/a/c;

    .line 75
    iput-object v0, p0, Lcom/android/camera/a/o;->b:Landroid/net/Uri;

    .line 76
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method
