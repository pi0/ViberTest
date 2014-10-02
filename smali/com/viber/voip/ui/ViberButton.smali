.class public Lcom/viber/voip/ui/ViberButton;
.super Landroid/widget/Button;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/viber/voip/util/gj;->a(Landroid/widget/TextView;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-static {p0, p2}, Lcom/viber/voip/util/gj;->a(Landroid/widget/TextView;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-static {p0, p2}, Lcom/viber/voip/util/gj;->a(Landroid/widget/TextView;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method
