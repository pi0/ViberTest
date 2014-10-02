.class public Lcom/viber/voip/calls/ui/CallRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 14
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/calls/ui/CallRelativeLayout;->a:Ljava/util/Set;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/calls/ui/CallRelativeLayout;->a:Ljava/util/Set;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/calls/ui/CallRelativeLayout;->a:Ljava/util/Set;

    .line 26
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter

    .prologue
    .line 43
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/CallRelativeLayout;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 45
    const/4 v0, 0x1

    .line 47
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 3

    .prologue
    .line 30
    invoke-super {p0}, Landroid/widget/RelativeLayout;->drawableStateChanged()V

    .line 32
    const/4 v0, 0x0

    .line 33
    iget-object v1, p0, Lcom/viber/voip/calls/ui/CallRelativeLayout;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 34
    invoke-direct {p0, v0}, Lcom/viber/voip/calls/ui/CallRelativeLayout;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    goto :goto_0

    .line 37
    :cond_0
    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/CallRelativeLayout;->invalidate()V

    .line 40
    :cond_1
    return-void
.end method
