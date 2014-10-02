.class Lcom/viber/voip/messages/conversation/a/a/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:I

.field final synthetic c:Lcom/viber/voip/messages/conversation/a/a/a/b;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/a/a/a/b;Landroid/widget/TextView;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/a/a/a/e;->c:Lcom/viber/voip/messages/conversation/a/a/a/b;

    iput-object p2, p0, Lcom/viber/voip/messages/conversation/a/a/a/e;->a:Landroid/widget/TextView;

    iput p3, p0, Lcom/viber/voip/messages/conversation/a/a/a/e;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 344
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/e;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    .line 346
    iget v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/e;->b:I

    if-le v0, v1, :cond_1

    .line 347
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/e;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/e;->b:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/a/a/a/e;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-lt v0, v4, :cond_0

    add-int/lit8 v0, v0, -0x3

    :cond_0
    invoke-interface {v2, v3, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/e;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    :cond_1
    return-void
.end method
