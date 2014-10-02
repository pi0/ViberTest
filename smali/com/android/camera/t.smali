.class Lcom/android/camera/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/android/camera/y;

.field final synthetic b:Z

.field final synthetic c:Lcom/android/camera/s;


# direct methods
.method constructor <init>(Lcom/android/camera/s;Lcom/android/camera/y;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/camera/t;->c:Lcom/android/camera/s;

    iput-object p2, p0, Lcom/android/camera/t;->a:Lcom/android/camera/y;

    iput-boolean p3, p0, Lcom/android/camera/t;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/camera/t;->c:Lcom/android/camera/s;

    iget-object v1, p0, Lcom/android/camera/t;->a:Lcom/android/camera/y;

    iget-boolean v2, p0, Lcom/android/camera/t;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/s;->a(Lcom/android/camera/y;Z)V

    .line 161
    return-void
.end method
