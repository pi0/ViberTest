.class Lcom/viber/voip/messages/ui/chathead/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/chathead/a/a;

.field final synthetic b:Lcom/viber/voip/messages/ui/chathead/d;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 851
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/h;->b:Lcom/viber/voip/messages/ui/chathead/d;

    iput-object p2, p0, Lcom/viber/voip/messages/ui/chathead/h;->a:Lcom/viber/voip/messages/ui/chathead/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 853
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 854
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/h;->a:Lcom/viber/voip/messages/ui/chathead/a/a;

    .line 855
    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/ui/chathead/a/a;->getHitRect(Landroid/graphics/Rect;)V

    .line 856
    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, -0xa

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 857
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0xa

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 858
    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, -0xa

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 859
    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, 0xa

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 860
    new-instance v2, Landroid/view/TouchDelegate;

    invoke-direct {v2, v0, v1}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 862
    const-class v0, Landroid/view/View;

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/chathead/a/a;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/chathead/a/a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 866
    :cond_0
    return-void
.end method
