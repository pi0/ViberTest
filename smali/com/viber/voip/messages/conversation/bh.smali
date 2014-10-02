.class Lcom/viber/voip/messages/conversation/bh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/viber/voip/messages/conversation/ax;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ax;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/bh;->b:Lcom/viber/voip/messages/conversation/ax;

    iput p2, p0, Lcom/viber/voip/messages/conversation/bh;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 359
    iget v0, p0, Lcom/viber/voip/messages/conversation/bh;->a:I

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/bh;->b:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ax;->a(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/widget/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/widget/aa;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 360
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/bh;->b:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ax;->a(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/widget/aa;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/bh;->a:I

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/aa;->setSelection(I)V

    .line 362
    :cond_0
    return-void
.end method
