.class public Lcom/viber/voip/user/UserDetailPhotoSetter;
.super Lcom/viber/voip/user/ImageViewDrawableSetter;
.source "SourceFile"


# static fields
.field private static final EVENT_COUNT:I = 0x3

.field private static contactInfoAction:Lcom/viber/voip/a/k;


# instance fields
.field private lastYs:[F

.field private mDisableTouch:Z

.field private mParentTarget:Landroid/view/View;

.field private photoViewHeight:I

.field private startY:F

.field touchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/viber/voip/a/k;

    invoke-direct {v0}, Lcom/viber/voip/a/k;-><init>()V

    sput-object v0, Lcom/viber/voip/user/UserDetailPhotoSetter;->contactInfoAction:Lcom/viber/voip/a/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/viber/voip/user/ImageViewDrawableSetter;-><init>()V

    .line 30
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/viber/voip/user/UserDetailPhotoSetter;->startY:F

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/user/UserDetailPhotoSetter;->photoViewHeight:I

    .line 117
    new-instance v0, Lcom/viber/voip/user/UserDetailPhotoSetter$1;

    invoke-direct {v0, p0}, Lcom/viber/voip/user/UserDetailPhotoSetter$1;-><init>(Lcom/viber/voip/user/UserDetailPhotoSetter;)V

    iput-object v0, p0, Lcom/viber/voip/user/UserDetailPhotoSetter;->touchListener:Landroid/view/View$OnTouchListener;

    .line 162
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/viber/voip/user/UserDetailPhotoSetter;->lastYs:[F

    return-void
.end method

.method static synthetic access$000()Lcom/viber/voip/a/k;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/viber/voip/user/UserDetailPhotoSetter;->contactInfoAction:Lcom/viber/voip/a/k;

    return-object v0
.end method

.method static synthetic access$100(Lcom/viber/voip/user/UserDetailPhotoSetter;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/viber/voip/user/UserDetailPhotoSetter;->updateEventStates(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/viber/voip/user/UserDetailPhotoSetter;Landroid/widget/ListView;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/viber/voip/user/UserDetailPhotoSetter;->isFirstVisible(Landroid/widget/ListView;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/viber/voip/user/UserDetailPhotoSetter;)F
    .locals 1
    .parameter

    .prologue
    .line 26
    iget v0, p0, Lcom/viber/voip/user/UserDetailPhotoSetter;->startY:F

    return v0
.end method

.method static synthetic access$302(Lcom/viber/voip/user/UserDetailPhotoSetter;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput p1, p0, Lcom/viber/voip/user/UserDetailPhotoSetter;->startY:F

    return p1
.end method

.method static synthetic access$400(Lcom/viber/voip/user/UserDetailPhotoSetter;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/viber/voip/user/UserDetailPhotoSetter;->mParentTarget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/viber/voip/user/UserDetailPhotoSetter;)I
    .locals 1
    .parameter

    .prologue
    .line 26
    iget v0, p0, Lcom/viber/voip/user/UserDetailPhotoSetter;->photoViewHeight:I

    return v0
.end method

.method static synthetic access$502(Lcom/viber/voip/user/UserDetailPhotoSetter;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput p1, p0, Lcom/viber/voip/user/UserDetailPhotoSetter;->photoViewHeight:I

    return p1
.end method

.method static synthetic access$600(Lcom/viber/voip/user/UserDetailPhotoSetter;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/viber/voip/user/UserDetailPhotoSetter;->pullDown(F)V

    return-void
.end method

.method static synthetic access$700(Lcom/viber/voip/user/UserDetailPhotoSetter;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/viber/voip/user/UserDetailPhotoSetter;->initializeYsHistory()V

    return-void
.end method

.method static synthetic access$800(Lcom/viber/voip/user/UserDetailPhotoSetter;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/viber/voip/user/UserDetailPhotoSetter;->ensureHeaderPosition()V

    return-void
.end method

.method private average([F)F
    .locals 3
    .parameter

    .prologue
    .line 210
    const/4 v1, 0x0

    .line 211
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    .line 212
    aget v2, p1, v0

    add-float/2addr v1, v2

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    :cond_0
    const/high16 v0, 0x4040

    div-float v0, v1, v0

    return v0
.end method

.method public static collapse(ILandroid/view/View;Landroid/view/View;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 218
    new-instance v0, Lcom/viber/voip/user/UserDetailPhotoSetter$2;

    invoke-direct {v0, p1, p0, p2}, Lcom/viber/voip/user/UserDetailPhotoSetter$2;-><init>(Landroid/view/View;ILandroid/view/View;)V

    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 240
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 241
    return-void
.end method

.method private ensureHeaderPosition()V
    .locals 3

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/viber/voip/user/UserDetailPhotoSetter;->getTarget()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/user/UserDetailPhotoSetter;->mParentTarget:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 181
    iget v0, p0, Lcom/viber/voip/user/UserDetailPhotoSetter;->photoViewHeight:I

    iget-object v1, p0, Lcom/viber/voip/user/UserDetailPhotoSetter;->mParentTarget:Landroid/view/View;

    invoke-virtual {p0}, Lcom/viber/voip/user/UserDetailPhotoSetter;->getTarget()Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/user/UserDetailPhotoSetter;->collapse(ILandroid/view/View;Landroid/view/View;)V

    .line 183
    :cond_0
    return-void
.end method

.method private initializeYsHistory()V
    .locals 3

    .prologue
    .line 174
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/viber/voip/user/UserDetailPhotoSetter;->lastYs:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_0
    return-void
.end method

.method private isFirstVisible(Landroid/widget/ListView;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 152
    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v0

    .line 154
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    if-nez v2, :cond_3

    .line 155
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-gez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 157
    goto :goto_0
.end method

.method private pullDown(F)V
    .locals 3
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lcom/viber/voip/user/UserDetailPhotoSetter;->mParentTarget:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/viber/voip/user/UserDetailPhotoSetter;->lastYs:[F

    invoke-direct {p0, v0}, Lcom/viber/voip/user/UserDetailPhotoSetter;->average([F)F

    move-result v0

    .line 197
    sub-float/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    .line 199
    iget v1, p0, Lcom/viber/voip/user/UserDetailPhotoSetter;->photoViewHeight:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 200
    iget-object v0, p0, Lcom/viber/voip/user/UserDetailPhotoSetter;->mParentTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 201
    iget-object v0, p0, Lcom/viber/voip/user/UserDetailPhotoSetter;->mParentTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/ao;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/viber/voip/user/UserDetailPhotoSetter;->mDisableTouch:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 203
    :goto_0
    if-eqz v0, :cond_0

    if-le v1, v2, :cond_1

    :cond_0
    if-nez v0, :cond_2

    const/16 v0, 0x2d0

    if-ge v1, v0, :cond_2

    .line 204
    :cond_1
    invoke-direct {p0, v1}, Lcom/viber/voip/user/UserDetailPhotoSetter;->setPhotoScroll(I)V

    .line 207
    :cond_2
    return-void

    .line 201
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPhotoScroll(I)V
    .locals 1
    .parameter

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/viber/voip/user/UserDetailPhotoSetter;->getTarget()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 187
    invoke-virtual {p0}, Lcom/viber/voip/user/UserDetailPhotoSetter;->getTarget()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 190
    iget-object v0, p0, Lcom/viber/voip/user/UserDetailPhotoSetter;->mParentTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 191
    iget-object v0, p0, Lcom/viber/voip/user/UserDetailPhotoSetter;->mParentTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 192
    return-void
.end method

.method private setupClickListener(Landroid/content/Context;Landroid/net/Uri;ZZ)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/viber/voip/user/UserDetailPhotoSetter;->getTarget()Landroid/widget/ImageView;

    move-result-object v0

    .line 108
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 110
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/viber/voip/user/UserDetailPhotoSetter$PhotoClickListener;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/viber/voip/user/UserDetailPhotoSetter$PhotoClickListener;-><init>(Landroid/content/Context;Landroid/net/Uri;ZZ)V

    goto :goto_0
.end method

.method private updateEventStates(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x2

    .line 165
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    .line 166
    iget-object v1, p0, Lcom/viber/voip/user/UserDetailPhotoSetter;->lastYs:[F

    iget-object v2, p0, Lcom/viber/voip/user/UserDetailPhotoSetter;->lastYs:[F

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    aput v2, v1, v0

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 170
    iget-object v1, p0, Lcom/viber/voip/user/UserDetailPhotoSetter;->lastYs:[F

    aput v0, v1, v4

    .line 171
    return-void
.end method


# virtual methods
.method public getTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/viber/voip/user/UserDetailPhotoSetter;->touchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public setupContactDetailsPhotoForClick(Landroid/content/Context;Landroid/widget/ImageView;ZLandroid/view/View;Landroid/net/Uri;Z)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p2}, Lcom/viber/voip/user/UserDetailPhotoSetter;->setTarget(Landroid/widget/ImageView;)V

    .line 51
    iput-object p4, p0, Lcom/viber/voip/user/UserDetailPhotoSetter;->mParentTarget:Landroid/view/View;

    .line 52
    iput-boolean p3, p0, Lcom/viber/voip/user/UserDetailPhotoSetter;->mDisableTouch:Z

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p5, p6, v0}, Lcom/viber/voip/user/UserDetailPhotoSetter;->setupClickListener(Landroid/content/Context;Landroid/net/Uri;ZZ)Landroid/view/View$OnClickListener;

    move-result-object v0

    return-object v0
.end method

.method public setupContactPhotoForClick(Landroid/content/Context;Landroid/graphics/Bitmap;ZLandroid/widget/ImageView;Landroid/view/View;Landroid/net/Uri;Z)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-virtual {p0, p4}, Lcom/viber/voip/user/UserDetailPhotoSetter;->setTarget(Landroid/widget/ImageView;)V

    .line 40
    iput-object p5, p0, Lcom/viber/voip/user/UserDetailPhotoSetter;->mParentTarget:Landroid/view/View;

    .line 41
    iput-boolean p3, p0, Lcom/viber/voip/user/UserDetailPhotoSetter;->mDisableTouch:Z

    .line 43
    const/4 v0, 0x1

    invoke-direct {p0, p1, p6, p7, v0}, Lcom/viber/voip/user/UserDetailPhotoSetter;->setupClickListener(Landroid/content/Context;Landroid/net/Uri;ZZ)Landroid/view/View$OnClickListener;

    move-result-object v0

    return-object v0
.end method
