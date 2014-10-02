.class public Lcom/viber/voip/market/b/a/k;
.super Lcom/viber/voip/market/b/a/j;
.source "SourceFile"


# direct methods
.method protected constructor <init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 178
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/market/b/a/j;-><init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/viber/voip/market/b/a/k;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 183
    return-void
.end method
