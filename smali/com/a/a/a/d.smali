.class Lcom/a/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/widget/ListAdapter;

.field b:Z


# direct methods
.method constructor <init>(Landroid/widget/ListAdapter;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/a/d;->b:Z

    .line 400
    iput-object p1, p0, Lcom/a/a/a/d;->a:Landroid/widget/ListAdapter;

    .line 401
    iput-boolean p2, p0, Lcom/a/a/a/d;->b:Z

    .line 402
    return-void
.end method
