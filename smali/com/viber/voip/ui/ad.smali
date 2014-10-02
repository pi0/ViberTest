.class Lcom/viber/voip/ui/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/ui/ac;


# direct methods
.method constructor <init>(Lcom/viber/voip/ui/ac;)V
    .locals 0
    .parameter

    .prologue
    .line 490
    iput-object p1, p0, Lcom/viber/voip/ui/ad;->a:Lcom/viber/voip/ui/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 493
    invoke-static {p1}, Lcom/nineoldandroids/view/ViewHelper;->getY(Landroid/view/View;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 494
    invoke-static {p1, v1}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    .line 496
    :cond_0
    return-void
.end method
