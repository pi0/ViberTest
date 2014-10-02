.class Lcom/viber/voip/util/by;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/util/bz;

.field final synthetic b:Lcom/viber/voip/util/bw;


# direct methods
.method constructor <init>(Lcom/viber/voip/util/bw;Lcom/viber/voip/util/bz;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/viber/voip/util/by;->b:Lcom/viber/voip/util/bw;

    iput-object p2, p0, Lcom/viber/voip/util/by;->a:Lcom/viber/voip/util/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/viber/voip/util/by;->a:Lcom/viber/voip/util/bz;

    invoke-static {v0}, Lcom/viber/voip/util/bz;->b(Lcom/viber/voip/util/bz;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/util/by;->a:Lcom/viber/voip/util/bz;

    invoke-static {v1}, Lcom/viber/voip/util/bz;->a(Lcom/viber/voip/util/bz;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    iget-object v0, p0, Lcom/viber/voip/util/by;->b:Lcom/viber/voip/util/bw;

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lcom/viber/voip/util/bw;->a(Lcom/viber/voip/util/bw;J)V

    .line 90
    return-void
.end method
