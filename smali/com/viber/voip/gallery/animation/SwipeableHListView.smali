.class public Lcom/viber/voip/gallery/animation/SwipeableHListView;
.super Lit/sephiroth/android/library/widget/HListView;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/gallery/animation/y;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private aA:Lcom/viber/voip/gallery/animation/b;

.field private aB:Landroid/view/View$OnClickListener;

.field private az:Lcom/viber/voip/gallery/animation/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/viber/voip/gallery/animation/SwipeableHListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/gallery/animation/SwipeableHListView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/HListView;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-direct {p0}, Lcom/viber/voip/gallery/animation/SwipeableHListView;->z()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lit/sephiroth/android/library/widget/HListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0}, Lcom/viber/voip/gallery/animation/SwipeableHListView;->z()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/HListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 156
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/gallery/animation/SwipeableHListView;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method private z()V
    .locals 4

    .prologue
    .line 47
    new-instance v0, Lcom/viber/voip/gallery/animation/s;

    invoke-virtual {p0}, Lcom/viber/voip/gallery/animation/SwipeableHListView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/gallery/animation/w;->a:Lcom/viber/voip/gallery/animation/w;

    const/16 v3, 0x32

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/viber/voip/gallery/animation/s;-><init>(Landroid/content/Context;Lcom/viber/voip/gallery/animation/y;Lcom/viber/voip/gallery/animation/w;I)V

    iput-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHListView;->az:Lcom/viber/voip/gallery/animation/s;

    .line 48
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHListView;->az:Lcom/viber/voip/gallery/animation/s;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/gallery/animation/s;->a(Z)V

    .line 49
    return-void
.end method


# virtual methods
.method protected a(I[Z)Landroid/view/View;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const v2, 0x7f070073

    .line 63
    invoke-super {p0, p1, p2}, Lit/sephiroth/android/library/widget/HListView;->a(I[Z)Landroid/view/View;

    move-result-object v1

    .line 64
    if-eqz v1, :cond_2

    .line 65
    invoke-static {}, Lcom/viber/voip/util/gl;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x2

    invoke-virtual {v1, v0, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 68
    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHListView;->az:Lcom/viber/voip/gallery/animation/s;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 77
    :cond_2
    :goto_0
    return-object v1

    .line 71
    :cond_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 72
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHListView;->aB:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHListView;->aB:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    return-void
.end method

.method public a(Landroid/view/View;ZLcom/viber/voip/gallery/animation/x;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSwipeEnded remove="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/gallery/animation/SwipeableHListView;->a(Ljava/lang/String;)V

    .line 112
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 114
    if-nez v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 144
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v1, p0, Lcom/viber/voip/gallery/animation/SwipeableHListView;->aA:Lcom/viber/voip/gallery/animation/b;

    if-eqz v1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/viber/voip/gallery/animation/SwipeableHListView;->aA:Lcom/viber/voip/gallery/animation/b;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, p1, v2, v0}, Lcom/viber/voip/gallery/animation/b;->a(Landroid/view/View;Ljava/lang/Object;I)V

    .line 148
    :cond_1
    invoke-interface {p3}, Lcom/viber/voip/gallery/animation/x;->a()V

    goto :goto_0

    .line 151
    :cond_2
    invoke-interface {p3}, Lcom/viber/voip/gallery/animation/x;->a()V

    goto :goto_0
.end method

.method public b(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 103
    const-string/jumbo v0, "onViewClicked"

    invoke-direct {p0, v0}, Lcom/viber/voip/gallery/animation/SwipeableHListView;->a(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHListView;->aB:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHListView;->aB:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 107
    :cond_0
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lit/sephiroth/android/library/widget/HListView;->onFinishInflate()V

    .line 54
    invoke-virtual {p0}, Lcom/viber/voip/gallery/animation/SwipeableHListView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-static {}, Lcom/viber/voip/util/gl;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/animation/SwipeableHListView;->setClipToPadding(Z)V

    .line 59
    :cond_0
    return-void
.end method

.method public setViewClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/viber/voip/gallery/animation/SwipeableHListView;->aB:Landroid/view/View$OnClickListener;

    .line 87
    return-void
.end method

.method public setViewRemoveListener(Lcom/viber/voip/gallery/animation/b;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    const-string/jumbo v0, "setViewRemoveListener"

    invoke-direct {p0, v0}, Lcom/viber/voip/gallery/animation/SwipeableHListView;->a(Ljava/lang/String;)V

    .line 82
    iput-object p1, p0, Lcom/viber/voip/gallery/animation/SwipeableHListView;->aA:Lcom/viber/voip/gallery/animation/b;

    .line 83
    return-void
.end method
