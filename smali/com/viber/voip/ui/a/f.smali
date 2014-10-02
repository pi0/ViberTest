.class public Lcom/viber/voip/ui/a/f;
.super Lcom/viber/voip/ui/a/d;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/viber/voip/ui/a/d;-><init>()V

    return-void
.end method

.method public static a()Lcom/viber/voip/ui/a/f;
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/viber/voip/ui/a/f;

    invoke-direct {v0}, Lcom/viber/voip/ui/a/f;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/viber/voip/ui/a/d;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const/4 v0, 0x1

    const v1, 0x7f0d0149

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/ui/a/f;->setStyle(II)V

    .line 26
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    const v0, 0x7f030108

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
