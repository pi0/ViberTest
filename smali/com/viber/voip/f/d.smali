.class Lcom/viber/voip/f/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/f/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/f/a;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/viber/voip/f/d;->a:Lcom/viber/voip/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/viber/voip/f/d;->a:Lcom/viber/voip/f/a;

    invoke-static {v0}, Lcom/viber/voip/f/a;->d(Lcom/viber/voip/f/a;)Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f070456

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_0

    .line 111
    iget-object v1, p0, Lcom/viber/voip/f/d;->a:Lcom/viber/voip/f/a;

    invoke-static {v1, v0}, Lcom/viber/voip/f/a;->a(Lcom/viber/voip/f/a;Landroid/view/View;)Landroid/view/View;

    .line 112
    iget-object v0, p0, Lcom/viber/voip/f/d;->a:Lcom/viber/voip/f/a;

    invoke-static {v0}, Lcom/viber/voip/f/a;->e(Lcom/viber/voip/f/a;)V

    .line 114
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 115
    iget-object v0, p0, Lcom/viber/voip/f/d;->a:Lcom/viber/voip/f/a;

    invoke-static {v0}, Lcom/viber/voip/f/a;->d(Lcom/viber/voip/f/a;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/viber/voip/f/a;->a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/f/d;->a:Lcom/viber/voip/f/a;

    invoke-static {v0}, Lcom/viber/voip/f/a;->d(Lcom/viber/voip/f/a;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
