.class Lcom/viber/voip/ui/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/ui/ac;


# direct methods
.method constructor <init>(Lcom/viber/voip/ui/ac;)V
    .locals 0
    .parameter

    .prologue
    .line 686
    iput-object p1, p0, Lcom/viber/voip/ui/af;->a:Lcom/viber/voip/ui/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 690
    iget-object v1, p0, Lcom/viber/voip/ui/af;->a:Lcom/viber/voip/ui/ac;

    iget-object v1, v1, Lcom/viber/voip/ui/ac;->v:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-nez v1, :cond_0

    .line 700
    :goto_0
    return v0

    .line 694
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/ui/af;->a:Lcom/viber/voip/ui/ac;

    invoke-virtual {v1}, Lcom/viber/voip/ui/ac;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 695
    iget-object v0, p0, Lcom/viber/voip/ui/af;->a:Lcom/viber/voip/ui/ac;

    iget-object v0, v0, Lcom/viber/voip/ui/ac;->v:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0

    .line 699
    :cond_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method
