.class public Lcom/viber/voip/widget/CheckedRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final a:[I


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/viber/voip/widget/CheckedRelativeLayout;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/widget/CheckedRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/viber/voip/widget/CheckedRelativeLayout;->b:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .parameter

    .prologue
    .line 52
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 53
    invoke-virtual {p0}, Lcom/viber/voip/widget/CheckedRelativeLayout;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    sget-object v1, Lcom/viber/voip/widget/CheckedRelativeLayout;->a:[I

    invoke-static {v0, v1}, Lcom/viber/voip/widget/CheckedRelativeLayout;->mergeDrawableStates([I[I)[I

    .line 56
    :cond_0
    return-object v0
.end method

.method public setChecked(Z)V
    .locals 4
    .parameter

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/viber/voip/widget/CheckedRelativeLayout;->b:Z

    .line 29
    invoke-virtual {p0}, Lcom/viber/voip/widget/CheckedRelativeLayout;->refreshDrawableState()V

    .line 31
    invoke-virtual {p0}, Lcom/viber/voip/widget/CheckedRelativeLayout;->getChildCount()I

    move-result v2

    .line 32
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 33
    invoke-virtual {p0, v1}, Lcom/viber/voip/widget/CheckedRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 34
    instance-of v3, v0, Landroid/widget/Checkable;

    if-eqz v3, :cond_0

    .line 35
    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 32
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 38
    :cond_1
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/viber/voip/widget/CheckedRelativeLayout;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/viber/voip/widget/CheckedRelativeLayout;->b:Z

    .line 48
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
