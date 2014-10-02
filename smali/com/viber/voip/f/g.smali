.class Lcom/viber/voip/f/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:I

.field final synthetic d:Lcom/viber/voip/f/f;


# direct methods
.method constructor <init>(Lcom/viber/voip/f/f;Landroid/widget/ImageView;Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/viber/voip/f/g;->d:Lcom/viber/voip/f/f;

    iput-object p2, p0, Lcom/viber/voip/f/g;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/viber/voip/f/g;->b:Landroid/view/View;

    iput p4, p0, Lcom/viber/voip/f/g;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 54
    iget-object v0, p0, Lcom/viber/voip/f/g;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 55
    iget-object v1, p0, Lcom/viber/voip/f/g;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 56
    iget v2, p0, Lcom/viber/voip/f/g;->c:I

    if-le v1, v2, :cond_0

    .line 57
    iget-object v2, p0, Lcom/viber/voip/f/g;->a:Landroid/widget/ImageView;

    const v3, 0x7f02028b

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    .line 61
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 62
    iget-object v0, p0, Lcom/viber/voip/f/g;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/viber/voip/f/f;->a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 67
    :cond_2
    :goto_0
    return-void

    .line 64
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/f/g;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
