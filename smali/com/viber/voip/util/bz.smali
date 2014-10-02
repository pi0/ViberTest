.class public Lcom/viber/voip/util/bz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/util/bw;

.field private b:Landroid/os/Handler;

.field private c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/viber/voip/util/bw;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/viber/voip/util/bz;->a:Lcom/viber/voip/util/bw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p2, p0, Lcom/viber/voip/util/bz;->b:Landroid/os/Handler;

    .line 105
    iput-object p3, p0, Lcom/viber/voip/util/bz;->c:Ljava/lang/Runnable;

    .line 106
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/util/bz;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/viber/voip/util/bz;->c:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic b(Lcom/viber/voip/util/bz;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/viber/voip/util/bz;->b:Landroid/os/Handler;

    return-object v0
.end method
