.class Lcom/viber/voip/ui/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/ui/ac;


# direct methods
.method constructor <init>(Lcom/viber/voip/ui/ac;)V
    .locals 0
    .parameter

    .prologue
    .line 723
    iput-object p1, p0, Lcom/viber/voip/ui/ah;->a:Lcom/viber/voip/ui/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 728
    iget-object v0, p0, Lcom/viber/voip/ui/ah;->a:Lcom/viber/voip/ui/ac;

    iget-object v0, v0, Lcom/viber/voip/ui/ac;->x:Landroid/widget/AdapterView$OnItemClickListener;

    if-nez v0, :cond_0

    .line 738
    :goto_0
    return-void

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/ui/ah;->a:Lcom/viber/voip/ui/ac;

    invoke-virtual {v0}, Lcom/viber/voip/ui/ac;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 733
    iget-object v0, p0, Lcom/viber/voip/ui/ah;->a:Lcom/viber/voip/ui/ac;

    iget-object v0, v0, Lcom/viber/voip/ui/ac;->x:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 736
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method
