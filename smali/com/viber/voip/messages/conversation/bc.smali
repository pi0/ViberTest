.class Lcom/viber/voip/messages/conversation/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/viber/voip/messages/conversation/bb;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/bb;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/bc;->b:Lcom/viber/voip/messages/conversation/bb;

    iput p2, p0, Lcom/viber/voip/messages/conversation/bc;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 217
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/bc;->b:Lcom/viber/voip/messages/conversation/bb;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/bb;->b:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ax;->a(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/widget/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/widget/aa;->getText()Landroid/text/Editable;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/bc;->a:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/viber/voip/messages/conversation/bc;->a:I

    const-string/jumbo v3, ""

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 218
    return-void
.end method
