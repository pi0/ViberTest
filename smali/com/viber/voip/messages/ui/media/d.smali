.class Lcom/viber/voip/messages/ui/media/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/media/DoodleActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/media/DoodleActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 600
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/d;->a:Lcom/viber/voip/messages/ui/media/DoodleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/d;->a:Lcom/viber/voip/messages/ui/media/DoodleActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->c(Lcom/viber/voip/messages/ui/media/DoodleActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 604
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/d;->a:Lcom/viber/voip/messages/ui/media/DoodleActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->d(Lcom/viber/voip/messages/ui/media/DoodleActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/d;->a:Lcom/viber/voip/messages/ui/media/DoodleActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->c(Lcom/viber/voip/messages/ui/media/DoodleActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 605
    const/4 v0, 0x1

    return v0
.end method
