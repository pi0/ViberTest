.class public Lcom/viber/voip/messages/adapters/a/a/b;
.super Lcom/viber/voip/ui/b/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/viber/voip/messages/adapters/a/a;",
        ">",
        "Lcom/viber/voip/ui/b/b",
        "<TT;",
        "Lcom/viber/voip/messages/adapters/a/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private b:Lcom/viber/voip/messages/adapters/a/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/viber/voip/messages/adapters/a/a/f",
            "<TT;>;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Landroid/view/ViewGroup;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/viber/voip/messages/adapters/a/b/a;Lcom/viber/voip/messages/h;Lcom/viber/voip/messages/ui/bb;Lcom/viber/voip/util/b/w;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1}, Lcom/viber/voip/ui/b/b;-><init>(Landroid/view/View;)V

    .line 25
    iput-boolean v0, p0, Lcom/viber/voip/messages/adapters/a/a/b;->c:Z

    .line 33
    if-eqz p6, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lcom/viber/voip/messages/adapters/a/a/b;->a:I

    .line 35
    new-instance v0, Lcom/viber/voip/messages/adapters/a/a/f;

    invoke-direct {v0, p1, p2, p5}, Lcom/viber/voip/messages/adapters/a/a/f;-><init>(Landroid/view/View;Lcom/viber/voip/messages/adapters/a/b/a;Lcom/viber/voip/util/b/w;)V

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/b;->b:Lcom/viber/voip/messages/adapters/a/a/f;

    .line 36
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/b;->j:Ljava/util/List;

    invoke-virtual {p0, p1, p3, p4}, Lcom/viber/voip/messages/adapters/a/a/b;->a(Landroid/view/View;Lcom/viber/voip/messages/h;Lcom/viber/voip/messages/ui/bb;)Lcom/viber/voip/ui/b/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/b;->j:Ljava/util/List;

    invoke-virtual {p0, p1, p2, p5, p3}, Lcom/viber/voip/messages/adapters/a/a/b;->a(Landroid/view/View;Lcom/viber/voip/messages/adapters/a/b/a;Lcom/viber/voip/util/b/w;Lcom/viber/voip/messages/h;)Lcom/viber/voip/ui/b/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/b;->j:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/adapters/a/a/b;->a(Landroid/view/View;)Lcom/viber/voip/ui/b/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    const v0, 0x7f0700e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/b;->d:Landroid/view/ViewGroup;

    .line 41
    iput-object p1, p0, Lcom/viber/voip/messages/adapters/a/a/b;->e:Landroid/view/View;

    .line 42
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)Lcom/viber/voip/ui/b/a;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lcom/viber/voip/ui/b/a",
            "<TT;",
            "Lcom/viber/voip/messages/adapters/a/b/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lcom/viber/voip/messages/adapters/a/a/d;

    invoke-direct {v0, p1}, Lcom/viber/voip/messages/adapters/a/a/d;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method protected a(Landroid/view/View;Lcom/viber/voip/messages/adapters/a/b/a;Lcom/viber/voip/util/b/w;Lcom/viber/voip/messages/h;)Lcom/viber/voip/ui/b/a;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/viber/voip/messages/adapters/a/b/a;",
            "Lcom/viber/voip/util/b/w;",
            "Lcom/viber/voip/messages/h;",
            ")",
            "Lcom/viber/voip/ui/b/a",
            "<TT;",
            "Lcom/viber/voip/messages/adapters/a/b/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lcom/viber/voip/messages/adapters/a/a/f;

    invoke-direct {v0, p1, p2, p3}, Lcom/viber/voip/messages/adapters/a/a/f;-><init>(Landroid/view/View;Lcom/viber/voip/messages/adapters/a/b/a;Lcom/viber/voip/util/b/w;)V

    return-object v0
.end method

.method protected a(Landroid/view/View;Lcom/viber/voip/messages/h;Lcom/viber/voip/messages/ui/bb;)Lcom/viber/voip/ui/b/a;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/viber/voip/messages/h;",
            "Lcom/viber/voip/messages/ui/bb;",
            ")",
            "Lcom/viber/voip/ui/b/a",
            "<TT;",
            "Lcom/viber/voip/messages/adapters/a/b/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lcom/viber/voip/messages/adapters/a/a/c;

    invoke-direct {v0, p1, p2, p3}, Lcom/viber/voip/messages/adapters/a/a/c;-><init>(Landroid/view/View;Lcom/viber/voip/messages/h;Lcom/viber/voip/messages/ui/bb;)V

    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/b;->e:Landroid/view/View;

    const v1, 0x7f0700b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/voip/messages/adapters/a/a;Lcom/viber/voip/messages/adapters/a/b/a;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/viber/voip/messages/adapters/a/b/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-super {p0, p1, p2}, Lcom/viber/voip/ui/b/b;->a(Lcom/viber/voip/ui/b/f;Lcom/viber/voip/ui/b/a/a;)V

    .line 61
    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/a/a;->z()Z

    move-result v2

    .line 62
    invoke-virtual {p2}, Lcom/viber/voip/messages/adapters/a/b/a;->h()Z

    move-result v3

    .line 63
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getPhoneApp()Lcom/viber/voip/phone/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/v;->a()Lcom/viber/voip/e/u;

    move-result-object v0

    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/a/a;->a()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/viber/voip/e/u;->f(J)Z

    move-result v0

    .line 64
    if-nez v2, :cond_0

    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/a/a;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 65
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/b;->k:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Checkable;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/b;->k:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 71
    :goto_1
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/b;->k:Landroid/view/View;

    invoke-virtual {p2, v1, v3}, Lcom/viber/voip/messages/adapters/a/b/a;->a(ZZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 72
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/b;->k:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/viber/voip/util/gl;->a(Landroid/view/View;Z)Z

    goto :goto_1
.end method

.method public bridge synthetic a(Lcom/viber/voip/ui/b/f;Lcom/viber/voip/ui/b/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    check-cast p1, Lcom/viber/voip/messages/adapters/a/a;

    check-cast p2, Lcom/viber/voip/messages/adapters/a/b/a;

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/messages/adapters/a/a/b;->a(Lcom/viber/voip/messages/adapters/a/a;Lcom/viber/voip/messages/adapters/a/b/a;)V

    return-void
.end method

.method public a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 80
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/b;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/b;->b:Lcom/viber/voip/messages/adapters/a/a/f;

    invoke-virtual {v0}, Lcom/viber/voip/messages/adapters/a/a/f;->a()Landroid/widget/ImageView;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 83
    const/high16 v2, 0x4180

    invoke-static {v2}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 84
    const/high16 v2, 0x4120

    invoke-static {v2}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 86
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/b;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 87
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 89
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/adapters/a/a/b;->c:Z

    .line 92
    :cond_0
    return-void
.end method
