.class Lcom/viber/voip/messages/ui/chathead/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/messages/ui/chathead/d;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/chathead/d;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 726
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/ap;->b:Lcom/viber/voip/messages/ui/chathead/d;

    iput-object p2, p0, Lcom/viber/voip/messages/ui/chathead/ap;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 729
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/ap;->b:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->g(Lcom/viber/voip/messages/ui/chathead/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/ap;->b:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->n(Lcom/viber/voip/messages/ui/chathead/d;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 742
    :cond_0
    :goto_0
    return-void

    .line 731
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/ap;->b:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->u(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/ap;->b:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->f(Lcom/viber/voip/messages/ui/chathead/d;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_2

    .line 732
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/ap;->b:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->p(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f020265

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 733
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/ap;->b:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->v(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/ap;->b:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->i(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v1

    const/16 v2, 0x35

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/ap;->b:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v3}, Lcom/viber/voip/messages/ui/chathead/d;->c(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/c;

    move-result-object v3

    iget v3, v3, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    iget-object v4, p0, Lcom/viber/voip/messages/ui/chathead/ap;->b:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v4}, Lcom/viber/voip/messages/ui/chathead/d;->c(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/c;

    move-result-object v4

    iget v4, v4, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    iget-object v5, p0, Lcom/viber/voip/messages/ui/chathead/ap;->b:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v5}, Lcom/viber/voip/messages/ui/chathead/d;->c(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/c;

    move-result-object v5

    iget v5, v5, Lcom/viber/voip/messages/ui/chathead/c;->n:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 740
    :goto_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/ap;->b:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->p(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/ap;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 741
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/ap;->b:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->w(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/bb;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/ap;->b:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->p(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/widget/TextView;

    move-result-object v1

    sget v2, Lcom/viber/voip/messages/ui/bd;->c:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/messages/ui/bb;->a(Landroid/widget/TextView;IZ)V

    goto :goto_0

    .line 736
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/ap;->b:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->p(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f020264

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 737
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/ap;->b:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->v(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/ap;->b:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->i(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v1

    const/16 v2, 0x33

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/ap;->b:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v3}, Lcom/viber/voip/messages/ui/chathead/d;->c(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/c;

    move-result-object v3

    iget v3, v3, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    iget-object v4, p0, Lcom/viber/voip/messages/ui/chathead/ap;->b:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v4}, Lcom/viber/voip/messages/ui/chathead/d;->c(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/c;

    move-result-object v4

    iget v4, v4, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    iget-object v5, p0, Lcom/viber/voip/messages/ui/chathead/ap;->b:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v5}, Lcom/viber/voip/messages/ui/chathead/d;->c(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/c;

    move-result-object v5

    iget v5, v5, Lcom/viber/voip/messages/ui/chathead/c;->n:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1
.end method
