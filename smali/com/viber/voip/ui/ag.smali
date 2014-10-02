.class Lcom/viber/voip/ui/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/ui/ac;


# direct methods
.method constructor <init>(Lcom/viber/voip/ui/ac;)V
    .locals 0
    .parameter

    .prologue
    .line 705
    iput-object p1, p0, Lcom/viber/voip/ui/ag;->a:Lcom/viber/voip/ui/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 709
    iget-object v0, p0, Lcom/viber/voip/ui/ag;->a:Lcom/viber/voip/ui/ac;

    iget-object v0, v0, Lcom/viber/voip/ui/ac;->w:Landroid/view/View$OnCreateContextMenuListener;

    if-nez v0, :cond_0

    .line 720
    :goto_0
    return-void

    :cond_0
    move-object v0, p3

    .line 712
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 714
    iget-object v1, p0, Lcom/viber/voip/ui/ag;->a:Lcom/viber/voip/ui/ac;

    invoke-virtual {v1}, Lcom/viber/voip/ui/ac;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 715
    iget-object v0, p0, Lcom/viber/voip/ui/ag;->a:Lcom/viber/voip/ui/ac;

    iget-object v0, v0, Lcom/viber/voip/ui/ac;->w:Landroid/view/View$OnCreateContextMenuListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/View$OnCreateContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    goto :goto_0

    .line 718
    :cond_1
    iget-object v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method
