.class Lcom/viber/voip/messages/ui/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/w;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/w;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/viber/voip/messages/ui/x;->a:Lcom/viber/voip/messages/ui/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/viber/voip/messages/ui/x;->a:Lcom/viber/voip/messages/ui/w;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/w;->a(Lcom/viber/voip/messages/ui/w;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 129
    iget-object v0, p0, Lcom/viber/voip/messages/ui/x;->a:Lcom/viber/voip/messages/ui/w;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/w;->b(Lcom/viber/voip/messages/ui/w;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/ui/y;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/y;-><init>(Lcom/viber/voip/messages/ui/x;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/viber/voip/messages/ui/x;->a:Lcom/viber/voip/messages/ui/w;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/w;->d(Lcom/viber/voip/messages/ui/w;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/ui/z;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/z;-><init>(Lcom/viber/voip/messages/ui/x;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 178
    const/4 v0, 0x0

    return v0
.end method
