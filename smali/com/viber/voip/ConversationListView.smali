.class public Lcom/viber/voip/ConversationListView;
.super Lcom/viber/voip/ui/t;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static final z:I


# instance fields
.field private A:I

.field private B:Z

.field private C:Z

.field private D:I

.field private E:Z

.field private F:Z

.field private G:I

.field private H:Landroid/widget/TextView;

.field private I:I

.field private J:Ljava/lang/Runnable;

.field private K:Landroid/widget/TextView;

.field private L:Lcom/viber/voip/messages/conversation/a/g;

.field public final b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/viber/voip/ConversationListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/ConversationListView;->a:Ljava/lang/String;

    .line 50
    const/high16 v0, 0x4120

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v0

    sput v0, Lcom/viber/voip/ConversationListView;->z:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 84
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f0d0164

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Lcom/viber/voip/ui/t;-><init>(Landroid/content/Context;)V

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/viber/voip/ConversationListView;->A:I

    .line 56
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/ConversationListView;->b:Landroid/os/Handler;

    .line 74
    new-instance v0, Lcom/viber/voip/x;

    invoke-direct {v0, p0}, Lcom/viber/voip/x;-><init>(Lcom/viber/voip/ConversationListView;)V

    iput-object v0, p0, Lcom/viber/voip/ConversationListView;->J:Ljava/lang/Runnable;

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/ui/t;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    iput v1, p0, Lcom/viber/voip/ConversationListView;->A:I

    .line 56
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/ConversationListView;->b:Landroid/os/Handler;

    .line 74
    new-instance v0, Lcom/viber/voip/x;

    invoke-direct {v0, p0}, Lcom/viber/voip/x;-><init>(Lcom/viber/voip/ConversationListView;)V

    iput-object v0, p0, Lcom/viber/voip/ConversationListView;->J:Ljava/lang/Runnable;

    .line 95
    invoke-static {}, Lcom/viber/voip/util/gl;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0, v2}, Lcom/viber/voip/ConversationListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 97
    invoke-virtual {p0, v2}, Lcom/viber/voip/ConversationListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 100
    :cond_0
    iput-boolean v1, p0, Lcom/viber/voip/ConversationListView;->C:Z

    .line 102
    new-instance v0, Lcom/viber/voip/y;

    invoke-direct {v0, p0}, Lcom/viber/voip/y;-><init>(Lcom/viber/voip/ConversationListView;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/ConversationListView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f0d0164

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0, p2, p3}, Lcom/viber/voip/ui/t;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/viber/voip/ConversationListView;->A:I

    .line 56
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/ConversationListView;->b:Landroid/os/Handler;

    .line 74
    new-instance v0, Lcom/viber/voip/x;

    invoke-direct {v0, p0}, Lcom/viber/voip/x;-><init>(Lcom/viber/voip/ConversationListView;)V

    iput-object v0, p0, Lcom/viber/voip/ConversationListView;->J:Ljava/lang/Runnable;

    .line 90
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/ConversationListView;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput p1, p0, Lcom/viber/voip/ConversationListView;->D:I

    return p1
.end method

.method static synthetic a(Lcom/viber/voip/ConversationListView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/viber/voip/ConversationListView;->F:Z

    return p1
.end method

.method private b(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/viber/voip/ConversationListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/ConversationListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/ConversationListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 327
    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v1, p2, v1

    .line 332
    invoke-virtual {p0, v0}, Lcom/viber/voip/ConversationListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 334
    if-lez v0, :cond_0

    .line 335
    sub-int v1, p1, v1

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/ConversationListView;->setSelectionFromTop(II)V

    goto :goto_0
.end method

.method private w()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 258
    invoke-virtual {p0}, Lcom/viber/voip/ConversationListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/ConversationListView;->H:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/ConversationListView;->H:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 264
    iget-object v0, p0, Lcom/viber/voip/ConversationListView;->H:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    :cond_2
    iget v0, p0, Lcom/viber/voip/ConversationListView;->q:I

    invoke-virtual {p0, v0}, Lcom/viber/voip/ConversationListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 267
    const v1, 0x7f0700e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/ConversationListView;->H:Landroid/widget/TextView;

    .line 268
    iget-object v0, p0, Lcom/viber/voip/ConversationListView;->H:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/ConversationListView;->H:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/viber/voip/ConversationListView;->H:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected a(IF)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/viber/voip/ConversationListView;->B:Z

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/viber/voip/ConversationListView;->L:Lcom/viber/voip/messages/conversation/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/ConversationListView;->L:Lcom/viber/voip/messages/conversation/a/g;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/g;->i()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/viber/voip/ConversationListView;->L:Lcom/viber/voip/messages/conversation/a/g;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/g;->i()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    .line 189
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/viber/voip/ui/t;->a(IF)F

    move-result v0

    return v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/viber/voip/ConversationListView;->J:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/viber/voip/ConversationListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/ConversationListView;->E:Z

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/ConversationListView;->F:Z

    .line 140
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/ConversationListView;->D:I

    .line 142
    invoke-virtual {p0}, Lcom/viber/voip/ConversationListView;->requestLayout()V

    .line 143
    return-void
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 146
    iget-object v0, p0, Lcom/viber/voip/ConversationListView;->J:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/viber/voip/ConversationListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 148
    iput-boolean v1, p0, Lcom/viber/voip/ConversationListView;->E:Z

    .line 149
    iput-boolean v1, p0, Lcom/viber/voip/ConversationListView;->F:Z

    .line 150
    iput p1, p0, Lcom/viber/voip/ConversationListView;->D:I

    .line 152
    invoke-virtual {p0}, Lcom/viber/voip/ConversationListView;->requestLayout()V

    .line 153
    return-void
.end method

.method protected a(ILandroid/view/View;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 306
    if-eqz p2, :cond_0

    .line 307
    const v0, 0x7f0700e3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 308
    if-eqz v0, :cond_0

    .line 309
    iget-object v1, p0, Lcom/viber/voip/ConversationListView;->o:Lcom/viber/voip/ui/ai;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v2, p0, Lcom/viber/voip/ConversationListView;->o:Lcom/viber/voip/ui/ai;

    iget-object v2, v2, Lcom/viber/voip/ui/ai;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v1, Lcom/viber/voip/ui/ai;->d:I

    .line 311
    const v0, 0x7f070308

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 313
    if-eqz v0, :cond_0

    .line 314
    iget-object v1, p0, Lcom/viber/voip/ConversationListView;->o:Lcom/viber/voip/ui/ai;

    iget v2, v1, Lcom/viber/voip/ui/ai;->d:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, v1, Lcom/viber/voip/ui/ai;->d:I

    .line 318
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/viber/voip/ui/t;->a(ILandroid/view/View;)V

    .line 319
    return-void
.end method

.method public a(Lcom/viber/voip/ui/ak;)V
    .locals 2
    .parameter

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/viber/voip/ConversationListView;->l:Z

    if-nez v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/ConversationListView;->L:Lcom/viber/voip/messages/conversation/a/g;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/g;->a()Lcom/viber/voip/messages/conversation/a/o;

    move-result-object v0

    .line 247
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 248
    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/o;->a()Lcom/viber/voip/messages/conversation/a/a/b/a/b;

    move-result-object v0

    .line 249
    if-eqz v0, :cond_1

    .line 250
    iget-object v1, p0, Lcom/viber/voip/ConversationListView;->K:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->b()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 251
    iget-object v0, p0, Lcom/viber/voip/ConversationListView;->K:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/viber/voip/ui/ak;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    :cond_1
    invoke-direct {p0}, Lcom/viber/voip/ConversationListView;->w()V

    goto :goto_0
.end method

.method public a(Z)Z
    .locals 2
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 345
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/ConversationListView;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/viber/voip/ConversationListView;->A:I

    if-eq v1, v0, :cond_2

    .line 347
    :cond_1
    const/4 v0, 0x0

    .line 350
    :goto_0
    return v0

    .line 349
    :cond_2
    invoke-virtual {p0}, Lcom/viber/voip/ConversationListView;->a()V

    goto :goto_0
.end method

.method protected b(I)V
    .locals 1
    .parameter

    .prologue
    .line 206
    const v0, 0x10101

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/ConversationListView;->L:Lcom/viber/voip/messages/conversation/a/g;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/viber/voip/ConversationListView;->L:Lcom/viber/voip/messages/conversation/a/g;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/g;->c()V

    .line 208
    :cond_0
    invoke-super {p0, p1}, Lcom/viber/voip/ui/t;->b(I)V

    .line 209
    return-void
.end method

.method public b()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 166
    invoke-virtual {p0}, Lcom/viber/voip/ConversationListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/ConversationListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v1}, Lcom/viber/voip/ConversationListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/viber/voip/ConversationListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/ConversationListView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/viber/voip/ConversationListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/ConversationListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v1}, Lcom/viber/voip/ConversationListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/viber/voip/ConversationListView;->getHeight()I

    move-result v2

    sget v3, Lcom/viber/voip/ConversationListView;->z:I

    add-int/2addr v2, v3

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 174
    :cond_0
    return v0
.end method

.method protected c()Lcom/viber/voip/ui/ai;
    .locals 5

    .prologue
    const/high16 v4, 0x3f80

    .line 219
    new-instance v1, Lcom/viber/voip/ui/ai;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/viber/voip/ui/ai;-><init>(Z)V

    .line 220
    invoke-virtual {p0}, Lcom/viber/voip/ConversationListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a01a0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Lcom/viber/voip/ui/ai;->j:I

    .line 221
    invoke-virtual {p0}, Lcom/viber/voip/ConversationListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f030084

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/viber/voip/ConversationListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/viber/voip/ui/ai;->e:Landroid/view/View;

    .line 222
    iget-object v0, v1, Lcom/viber/voip/ui/ai;->e:Landroid/view/View;

    const v2, 0x7f07020e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/viber/voip/ui/ai;->f:Landroid/view/View;

    .line 223
    iget-object v0, v1, Lcom/viber/voip/ui/ai;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 225
    iget-object v0, v1, Lcom/viber/voip/ui/ai;->e:Landroid/view/View;

    const v2, 0x7f07020f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/ConversationListView;->K:Landroid/widget/TextView;

    .line 227
    invoke-virtual {p0}, Lcom/viber/voip/ConversationListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0900ae

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/ConversationListView;->I:I

    .line 228
    iget-object v0, p0, Lcom/viber/voip/ConversationListView;->K:Landroid/widget/TextView;

    const/4 v2, 0x0

    iget v3, p0, Lcom/viber/voip/ConversationListView;->I:I

    invoke-virtual {v0, v4, v2, v4, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 230
    return-object v1
.end method

.method protected c(I)V
    .locals 0
    .parameter

    .prologue
    .line 425
    invoke-super {p0, p1}, Lcom/viber/voip/ui/t;->c(I)V

    .line 426
    return-void
.end method

.method public d()Z
    .locals 9

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 275
    invoke-virtual {p0}, Lcom/viber/voip/ConversationListView;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/ConversationListView;->L:Lcom/viber/voip/messages/conversation/a/g;

    if-nez v0, :cond_1

    .line 301
    :cond_0
    :goto_0
    return v1

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/ConversationListView;->L:Lcom/viber/voip/messages/conversation/a/g;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/g;->a()Lcom/viber/voip/messages/conversation/a/o;

    move-result-object v3

    .line 279
    invoke-virtual {p0}, Lcom/viber/voip/ConversationListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/ConversationListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 280
    if-eqz v4, :cond_0

    .line 283
    const v0, 0x7f070052

    invoke-virtual {v4, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 284
    if-eqz v0, :cond_0

    instance-of v5, v0, Ljava/lang/Long;

    if-eqz v5, :cond_0

    .line 286
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 288
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    move v0, v1

    .line 291
    :goto_1
    invoke-virtual {v3}, Lcom/viber/voip/messages/conversation/a/o;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 292
    invoke-virtual {v3, v0}, Lcom/viber/voip/messages/conversation/a/o;->getItemId(I)J

    move-result-wide v7

    cmp-long v1, v7, v5

    if-nez v1, :cond_3

    .line 298
    :goto_2
    if-eq v0, v2, :cond_2

    .line 299
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v4}, Lcom/viber/voip/ConversationListView;->setSelectionFromTop(II)V

    .line 301
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 291
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method protected d(I)Z
    .locals 1
    .parameter

    .prologue
    .line 435
    iget-object v0, p0, Lcom/viber/voip/ConversationListView;->L:Lcom/viber/voip/messages/conversation/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/ConversationListView;->L:Lcom/viber/voip/messages/conversation/a/g;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/g;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-ne p1, v0, :cond_0

    .line 436
    const/4 v0, 0x1

    .line 438
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/ConversationListView;->a(Z)Z

    .line 341
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 404
    invoke-super {p0}, Lcom/viber/voip/ui/t;->f()V

    .line 405
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/viber/voip/ConversationListView;->L:Lcom/viber/voip/messages/conversation/a/g;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/viber/voip/ConversationListView;->L:Lcom/viber/voip/messages/conversation/a/g;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/g;->notifyDataSetChanged()V

    .line 431
    :cond_0
    return-void
.end method

.method protected getHeaderTag()I
    .locals 1

    .prologue
    .line 235
    const/4 v0, -0x1

    return v0
.end method

.method protected layoutChildren()V
    .locals 3

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/viber/voip/ConversationListView;->E:Z

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/ConversationListView;->E:Z

    .line 123
    iget-object v0, p0, Lcom/viber/voip/ConversationListView;->J:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/ConversationListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 126
    :cond_0
    iget-boolean v0, p0, Lcom/viber/voip/ConversationListView;->F:Z

    if-eqz v0, :cond_2

    .line 127
    invoke-virtual {p0}, Lcom/viber/voip/ConversationListView;->getCount()I

    move-result v0

    const/16 v1, -0x8000

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/ConversationListView;->setSelectionFromTop(II)V

    .line 132
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/viber/voip/ui/t;->layoutChildren()V

    .line 133
    return-void

    .line 128
    :cond_2
    iget v0, p0, Lcom/viber/voip/ConversationListView;->D:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 129
    iget v0, p0, Lcom/viber/voip/ConversationListView;->D:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/ConversationListView;->setSelectionFromTop(II)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .parameter

    .prologue
    .line 200
    invoke-super {p0, p1}, Lcom/viber/voip/ui/t;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 201
    invoke-virtual {p0}, Lcom/viber/voip/ConversationListView;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/ConversationListView;->setSelection(I)V

    .line 202
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    invoke-super {p0, p1, p2, p3, p4}, Lcom/viber/voip/ui/t;->onSizeChanged(IIII)V

    .line 195
    invoke-direct {p0, p2, p4}, Lcom/viber/voip/ConversationListView;->b(II)V

    .line 196
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/viber/voip/ConversationListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter

    .prologue
    .line 411
    instance-of v0, p1, Lcom/viber/voip/messages/conversation/a/g;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 412
    check-cast v0, Lcom/viber/voip/messages/conversation/a/g;

    iput-object v0, p0, Lcom/viber/voip/ConversationListView;->L:Lcom/viber/voip/messages/conversation/a/g;

    .line 413
    iget-object v0, p0, Lcom/viber/voip/ConversationListView;->L:Lcom/viber/voip/messages/conversation/a/g;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/g;->a()Lcom/viber/voip/messages/conversation/a/o;

    move-result-object v0

    .line 414
    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/o;->a()Lcom/viber/voip/messages/conversation/a/a/b/a/b;

    move-result-object v0

    .line 415
    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->a()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/ConversationListView;->G:I

    .line 416
    iget-object v0, p0, Lcom/viber/voip/ConversationListView;->o:Lcom/viber/voip/ui/ai;

    iget v1, p0, Lcom/viber/voip/ConversationListView;->G:I

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/ai;->c(I)V

    .line 419
    :cond_0
    invoke-super {p0, p1}, Lcom/viber/voip/ui/t;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 420
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/viber/voip/ConversationListView;->setPullState(I)V

    .line 421
    return-void
.end method

.method public setHasNew(Z)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/viber/voip/ConversationListView;->B:Z

    .line 179
    return-void
.end method
