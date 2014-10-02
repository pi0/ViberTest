.class Lcom/viber/voip/util/fm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Landroid/os/Message;

.field final b:Lcom/viber/voip/util/fe;


# direct methods
.method public constructor <init>(Lcom/viber/voip/util/fe;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 784
    iput-object p1, p0, Lcom/viber/voip/util/fm;->b:Lcom/viber/voip/util/fe;

    .line 785
    invoke-static {p2}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/util/fm;->a:Landroid/os/Message;

    .line 786
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 790
    iget-object v0, p0, Lcom/viber/voip/util/fm;->b:Lcom/viber/voip/util/fe;

    iget-object v1, p0, Lcom/viber/voip/util/fm;->b:Lcom/viber/voip/util/fe;

    iget-object v2, p0, Lcom/viber/voip/util/fm;->a:Landroid/os/Message;

    invoke-static {v0, v1, v2}, Lcom/viber/voip/util/fe;->a(Lcom/viber/voip/util/fe;Lcom/viber/voip/util/fe;Landroid/os/Message;)V

    .line 791
    return-void
.end method
