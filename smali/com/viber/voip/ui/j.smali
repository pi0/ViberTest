.class Lcom/viber/voip/ui/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/ui/h;


# direct methods
.method private constructor <init>(Lcom/viber/voip/ui/h;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/viber/voip/ui/j;->a:Lcom/viber/voip/ui/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/ui/h;Lcom/viber/voip/ui/i;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/viber/voip/ui/j;-><init>(Lcom/viber/voip/ui/h;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/viber/voip/ui/j;->a:Lcom/viber/voip/ui/h;

    invoke-virtual {v0}, Lcom/viber/voip/ui/h;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/viber/voip/ui/j;->a:Lcom/viber/voip/ui/h;

    invoke-virtual {v0}, Lcom/viber/voip/ui/h;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0700d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 108
    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/ui/j;->a:Lcom/viber/voip/ui/h;

    invoke-virtual {v0}, Lcom/viber/voip/ui/h;->h()V

    .line 113
    :cond_1
    return-void
.end method
