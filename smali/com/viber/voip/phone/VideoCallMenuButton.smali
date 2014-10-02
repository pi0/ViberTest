.class public Lcom/viber/voip/phone/VideoCallMenuButton;
.super Landroid/widget/ImageButton;
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
    .line 14
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/viber/voip/phone/VideoCallMenuButton;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/phone/VideoCallMenuButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    sget-object v0, Lcom/viber/voip/bb;->VideoCall:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 26
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/VideoCallMenuButton;->setRotation(I)V

    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0}, Landroid/widget/ImageButton;->drawableStateChanged()V

    .line 66
    invoke-virtual {p0}, Lcom/viber/voip/phone/VideoCallMenuButton;->invalidate()V

    .line 67
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/viber/voip/phone/VideoCallMenuButton;->b:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 2
    .parameter

    .prologue
    .line 56
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/ImageButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 57
    iget-boolean v1, p0, Lcom/viber/voip/phone/VideoCallMenuButton;->b:Z

    if-eqz v1, :cond_0

    .line 58
    sget-object v1, Lcom/viber/voip/phone/VideoCallMenuButton;->a:[I

    invoke-static {v0, v1}, Lcom/viber/voip/phone/VideoCallMenuButton;->mergeDrawableStates([I[I)[I

    .line 60
    :cond_0
    return-object v0
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/viber/voip/phone/VideoCallMenuButton;->b:Z

    if-eq v0, p1, :cond_0

    .line 39
    iput-boolean p1, p0, Lcom/viber/voip/phone/VideoCallMenuButton;->b:Z

    .line 40
    invoke-virtual {p0}, Lcom/viber/voip/phone/VideoCallMenuButton;->refreshDrawableState()V

    .line 42
    :cond_0
    return-void
.end method

.method public setRotation(I)V
    .locals 1
    .parameter

    .prologue
    .line 33
    int-to-float v0, p1

    invoke-static {p0, v0}, Lcom/nineoldandroids/view/ViewHelper;->setRotation(Landroid/view/View;F)V

    .line 34
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/viber/voip/phone/VideoCallMenuButton;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/VideoCallMenuButton;->setChecked(Z)V

    .line 52
    return-void

    .line 51
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
