.class public Lcom/viber/voip/messages/ui/ei;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 193
    const/4 v0, 0x0

    const v1, 0x7f01014b

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 194
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 195
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/ei;)I
    .locals 1
    .parameter

    .prologue
    .line 181
    iget v0, p0, Lcom/viber/voip/messages/ui/ei;->a:I

    return v0
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/ei;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 181
    iput p1, p0, Lcom/viber/voip/messages/ui/ei;->a:I

    return p1
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/ei;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 181
    iput p1, p0, Lcom/viber/voip/messages/ui/ei;->b:I

    return p1
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/ei;)Z
    .locals 1
    .parameter

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/ei;->d:Z

    return v0
.end method

.method static synthetic c(Lcom/viber/voip/messages/ui/ei;)I
    .locals 1
    .parameter

    .prologue
    .line 181
    iget v0, p0, Lcom/viber/voip/messages/ui/ei;->c:I

    return v0
.end method

.method static synthetic d(Lcom/viber/voip/messages/ui/ei;)Z
    .locals 1
    .parameter

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/ei;->e:Z

    return v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/ei;->f:Z

    return v0
.end method

.method public getPackageId()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/viber/voip/messages/ui/ei;->c:I

    return v0
.end method

.method public onMeasure(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 228
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 231
    iget v0, p0, Lcom/viber/voip/messages/ui/ei;->b:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ei;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/viber/voip/messages/ui/ei;->b:I

    if-le v0, v1, :cond_0

    .line 232
    iget v0, p0, Lcom/viber/voip/messages/ui/ei;->b:I

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 234
    :cond_0
    return-void
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 198
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/ei;->f:Z

    .line 199
    const v0, 0x7f0700d6

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/ei;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/viber/voip/util/gl;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 200
    return-void

    .line 198
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIgnorePress(Z)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-boolean p1, p0, Lcom/viber/voip/messages/ui/ei;->d:Z

    .line 212
    return-void
.end method

.method public setPackageId(I)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput p1, p0, Lcom/viber/voip/messages/ui/ei;->c:I

    .line 208
    return-void
.end method

.method public setPromotion(Z)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/viber/voip/messages/ui/ei;->e:Z

    .line 216
    return-void
.end method

.method public setShowNewPackageStatus(Z)V
    .locals 2
    .parameter

    .prologue
    .line 219
    const v0, 0x7f0703ba

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/ei;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 220
    return-void

    .line 219
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
