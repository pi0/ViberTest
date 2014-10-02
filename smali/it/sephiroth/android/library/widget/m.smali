.class public Lit/sephiroth/android/library/widget/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lit/sephiroth/android/library/widget/AbsHListView;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private final g:I

.field private h:I


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .locals 1
    .parameter

    .prologue
    .line 3944
    iput-object p1, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3945
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/m;->g:I

    .line 3946
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 4190
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4191
    return-void
.end method

.method a(I)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0xc8

    const/4 v4, -0x1

    .line 3949
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->a()V

    .line 3951
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-boolean v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->aj:Z

    if-eqz v0, :cond_1

    .line 3953
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    new-instance v1, Lit/sephiroth/android/library/widget/n;

    invoke-direct {v1, p0, p1}, Lit/sephiroth/android/library/widget/n;-><init>(Lit/sephiroth/android/library/widget/m;I)V

    iput-object v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->P:Ljava/lang/Runnable;

    .line 3995
    :cond_0
    :goto_0
    return-void

    .line 3963
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v0

    .line 3964
    if-eqz v0, :cond_0

    .line 3969
    iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v1, v1, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    .line 3970
    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 3973
    const/4 v2, 0x0

    iget-object v3, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v3}, Lit/sephiroth/android/library/widget/AbsHListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3974
    if-ge v2, v1, :cond_2

    .line 3975
    sub-int v0, v1, v2

    add-int/lit8 v0, v0, 0x1

    .line 3976
    const/4 v1, 0x2

    iput v1, p0, Lit/sephiroth/android/library/widget/m;->b:I

    .line 3985
    :goto_1
    if-lez v0, :cond_4

    .line 3986
    div-int v0, v5, v0

    iput v0, p0, Lit/sephiroth/android/library/widget/m;->f:I

    .line 3990
    :goto_2
    iput v2, p0, Lit/sephiroth/android/library/widget/m;->c:I

    .line 3991
    iput v4, p0, Lit/sephiroth/android/library/widget/m;->d:I

    .line 3992
    iput v4, p0, Lit/sephiroth/android/library/widget/m;->e:I

    .line 3994
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->b:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3977
    :cond_2
    if-le v2, v0, :cond_3

    .line 3978
    sub-int v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    .line 3979
    const/4 v1, 0x1

    iput v1, p0, Lit/sephiroth/android/library/widget/m;->b:I

    goto :goto_1

    .line 3981
    :cond_3
    invoke-virtual {p0, v2, v4, v5}, Lit/sephiroth/android/library/widget/m;->a(III)V

    goto :goto_0

    .line 3988
    :cond_4
    iput v5, p0, Lit/sephiroth/android/library/widget/m;->f:I

    goto :goto_2
.end method

.method a(II)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, -0x1

    const/16 v5, 0xc8

    const/4 v4, 0x1

    .line 3998
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->a()V

    .line 4000
    if-ne p2, v6, :cond_1

    .line 4001
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/m;->a(I)V

    .line 4075
    :cond_0
    :goto_0
    return-void

    .line 4005
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-boolean v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->aj:Z

    if-eqz v0, :cond_2

    .line 4007
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    new-instance v1, Lit/sephiroth/android/library/widget/o;

    invoke-direct {v1, p0, p1, p2}, Lit/sephiroth/android/library/widget/o;-><init>(Lit/sephiroth/android/library/widget/m;II)V

    iput-object v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->P:Ljava/lang/Runnable;

    goto :goto_0

    .line 4017
    :cond_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v0

    .line 4018
    if-eqz v0, :cond_0

    .line 4023
    iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v1, v1, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    .line 4024
    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 4027
    const/4 v2, 0x0

    iget-object v3, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v3}, Lit/sephiroth/android/library/widget/AbsHListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 4028
    if-ge v2, v1, :cond_4

    .line 4029
    sub-int/2addr v0, p2

    .line 4030
    if-lt v0, v4, :cond_0

    .line 4035
    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 4036
    add-int/lit8 v0, v0, -0x1

    .line 4037
    if-ge v0, v1, :cond_3

    .line 4039
    const/4 v1, 0x4

    iput v1, p0, Lit/sephiroth/android/library/widget/m;->b:I

    .line 4065
    :goto_1
    if-lez v0, :cond_7

    .line 4066
    div-int v0, v5, v0

    iput v0, p0, Lit/sephiroth/android/library/widget/m;->f:I

    .line 4070
    :goto_2
    iput v2, p0, Lit/sephiroth/android/library/widget/m;->c:I

    .line 4071
    iput p2, p0, Lit/sephiroth/android/library/widget/m;->d:I

    .line 4072
    iput v6, p0, Lit/sephiroth/android/library/widget/m;->e:I

    .line 4074
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->b:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4042
    :cond_3
    const/4 v0, 0x2

    iput v0, p0, Lit/sephiroth/android/library/widget/m;->b:I

    :goto_3
    move v0, v1

    goto :goto_1

    .line 4044
    :cond_4
    if-le v2, v0, :cond_6

    .line 4045
    sub-int v3, p2, v1

    .line 4046
    if-lt v3, v4, :cond_0

    .line 4051
    sub-int v0, v2, v0

    add-int/lit8 v1, v0, 0x1

    .line 4052
    add-int/lit8 v0, v3, -0x1

    .line 4053
    if-ge v0, v1, :cond_5

    .line 4055
    const/4 v1, 0x3

    iput v1, p0, Lit/sephiroth/android/library/widget/m;->b:I

    goto :goto_1

    .line 4058
    :cond_5
    iput v4, p0, Lit/sephiroth/android/library/widget/m;->b:I

    goto :goto_3

    .line 4061
    :cond_6
    invoke-virtual {p0, v2, p2, v5}, Lit/sephiroth/android/library/widget/m;->a(III)V

    goto :goto_0

    .line 4068
    :cond_7
    iput v5, p0, Lit/sephiroth/android/library/widget/m;->f:I

    goto :goto_2
.end method

.method a(III)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 4140
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v2, v0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    .line 4141
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v0

    .line 4142
    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    .line 4143
    iget-object v3, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v3, v3, Lit/sephiroth/android/library/widget/AbsHListView;->v:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 4144
    iget-object v4, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v4}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v5, v5, Lit/sephiroth/android/library/widget/AbsHListView;->v:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    .line 4146
    if-lt p1, v2, :cond_0

    if-le p1, v0, :cond_1

    .line 4147
    :cond_0
    const-string/jumbo v5, "AbsListView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "scrollToVisible called with targetPos "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " not visible ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4150
    :cond_1
    if-lt p2, v2, :cond_2

    if-le p2, v0, :cond_3

    .line 4152
    :cond_2
    const/4 p2, -0x1

    .line 4155
    :cond_3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    sub-int v5, p1, v2

    invoke-virtual {v0, v5}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4156
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 4157
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 4160
    if-le v0, v4, :cond_8

    .line 4161
    sub-int/2addr v0, v4

    .line 4163
    :goto_0
    if-ge v5, v3, :cond_4

    .line 4164
    sub-int v0, v5, v3

    .line 4167
    :cond_4
    if-nez v0, :cond_5

    .line 4187
    :goto_1
    return-void

    .line 4171
    :cond_5
    if-ltz p2, :cond_6

    .line 4172
    iget-object v5, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    sub-int v2, p2, v2

    invoke-virtual {v5, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4173
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 4174
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    .line 4175
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 4177
    if-gez v0, :cond_7

    add-int v7, v2, v6

    if-le v7, v4, :cond_7

    .line 4179
    sub-int v0, v2, v4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4186
    :cond_6
    :goto_2
    iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v1, v0, p3}, Lit/sephiroth/android/library/widget/AbsHListView;->c(II)V

    goto :goto_1

    .line 4180
    :cond_7
    if-lez v0, :cond_6

    sub-int v2, v5, v6

    if-ge v2, v3, :cond_6

    .line 4182
    sub-int v0, v5, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    :cond_8
    move v0, v1

    goto :goto_0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 4195
    iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v1

    .line 4196
    iget-object v2, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v2, v2, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    .line 4198
    iget v3, p0, Lit/sephiroth/android/library/widget/m;->b:I

    packed-switch v3, :pswitch_data_0

    .line 4366
    :cond_0
    :goto_0
    return-void

    .line 4200
    :pswitch_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 4201
    add-int/2addr v2, v0

    .line 4203
    if-ltz v0, :cond_0

    .line 4207
    iget v3, p0, Lit/sephiroth/android/library/widget/m;->e:I

    if-ne v2, v3, :cond_1

    .line 4209
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->b:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4213
    :cond_1
    iget-object v3, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v3, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4214
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 4215
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 4216
    sub-int/2addr v1, v0

    .line 4217
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->v:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lit/sephiroth/android/library/widget/m;->g:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4219
    :goto_1
    sub-int v1, v3, v1

    add-int/2addr v0, v1

    .line 4220
    iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v3, p0, Lit/sephiroth/android/library/widget/m;->f:I

    invoke-virtual {v1, v0, v3, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IIZ)V

    .line 4222
    iput v2, p0, Lit/sephiroth/android/library/widget/m;->e:I

    .line 4223
    iget v0, p0, Lit/sephiroth/android/library/widget/m;->c:I

    if-ge v2, v0, :cond_0

    .line 4224
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->b:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4217
    :cond_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->v:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 4231
    :pswitch_1
    iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v1

    .line 4233
    iget v3, p0, Lit/sephiroth/android/library/widget/m;->d:I

    if-eq v2, v3, :cond_0

    if-le v1, v7, :cond_0

    add-int/2addr v1, v2

    iget-object v3, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v3, v3, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    if-ge v1, v3, :cond_0

    .line 4237
    add-int/lit8 v1, v2, 0x1

    .line 4239
    iget v2, p0, Lit/sephiroth/android/library/widget/m;->e:I

    if-ne v1, v2, :cond_3

    .line 4241
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->b:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4245
    :cond_3
    iget-object v2, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v2, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4246
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 4247
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 4248
    iget-object v4, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v4, v4, Lit/sephiroth/android/library/widget/AbsHListView;->v:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lit/sephiroth/android/library/widget/m;->g:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 4249
    iget v5, p0, Lit/sephiroth/android/library/widget/m;->d:I

    if-ge v1, v5, :cond_4

    .line 4250
    iget-object v5, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    add-int/2addr v2, v3

    sub-int/2addr v2, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lit/sephiroth/android/library/widget/m;->f:I

    invoke-virtual {v5, v0, v2, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IIZ)V

    .line 4252
    iput v1, p0, Lit/sephiroth/android/library/widget/m;->e:I

    .line 4254
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->b:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 4256
    :cond_4
    if-le v2, v4, :cond_0

    .line 4257
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    sub-int v1, v2, v4

    iget v2, p0, Lit/sephiroth/android/library/widget/m;->f:I

    invoke-virtual {v0, v1, v2, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IIZ)V

    goto/16 :goto_0

    .line 4264
    :pswitch_2
    iget v1, p0, Lit/sephiroth/android/library/widget/m;->e:I

    if-ne v2, v1, :cond_5

    .line 4266
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->b:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 4270
    :cond_5
    iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v1, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4271
    if-eqz v0, :cond_0

    .line 4274
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 4275
    if-lez v2, :cond_6

    iget v0, p0, Lit/sephiroth/android/library/widget/m;->g:I

    iget-object v3, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v3, v3, Lit/sephiroth/android/library/widget/AbsHListView;->v:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4277
    :goto_2
    iget-object v3, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    sub-int v0, v1, v0

    iget v1, p0, Lit/sephiroth/android/library/widget/m;->f:I

    invoke-virtual {v3, v0, v1, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IIZ)V

    .line 4279
    iput v2, p0, Lit/sephiroth/android/library/widget/m;->e:I

    .line 4281
    iget v0, p0, Lit/sephiroth/android/library/widget/m;->c:I

    if-le v2, v0, :cond_0

    .line 4282
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->b:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 4275
    :cond_6
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->v:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_2

    .line 4288
    :pswitch_3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .line 4289
    if-ltz v0, :cond_0

    .line 4292
    add-int/2addr v2, v0

    .line 4294
    iget v3, p0, Lit/sephiroth/android/library/widget/m;->e:I

    if-ne v2, v3, :cond_7

    .line 4296
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->b:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 4300
    :cond_7
    iget-object v3, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v3, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4301
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 4302
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 4303
    sub-int v4, v1, v0

    .line 4304
    iget-object v5, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v5, v5, Lit/sephiroth/android/library/widget/AbsHListView;->v:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lit/sephiroth/android/library/widget/m;->g:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 4305
    iput v2, p0, Lit/sephiroth/android/library/widget/m;->e:I

    .line 4306
    iget v6, p0, Lit/sephiroth/android/library/widget/m;->d:I

    if-le v2, v6, :cond_8

    .line 4307
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    sub-int v1, v4, v5

    neg-int v1, v1

    iget v2, p0, Lit/sephiroth/android/library/widget/m;->f:I

    invoke-virtual {v0, v1, v2, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IIZ)V

    .line 4308
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->b:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 4310
    :cond_8
    sub-int/2addr v1, v5

    .line 4311
    add-int/2addr v0, v3

    .line 4312
    if-le v1, v0, :cond_0

    .line 4313
    iget-object v2, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    sub-int v0, v1, v0

    neg-int v0, v0

    iget v1, p0, Lit/sephiroth/android/library/widget/m;->f:I

    invoke-virtual {v2, v0, v1, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IIZ)V

    goto/16 :goto_0

    .line 4320
    :pswitch_4
    iget v1, p0, Lit/sephiroth/android/library/widget/m;->e:I

    if-ne v1, v2, :cond_9

    .line 4322
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->b:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 4326
    :cond_9
    iput v2, p0, Lit/sephiroth/android/library/widget/m;->e:I

    .line 4328
    iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v1

    .line 4329
    iget v3, p0, Lit/sephiroth/android/library/widget/m;->c:I

    .line 4330
    add-int v4, v2, v1

    add-int/lit8 v4, v4, -0x1

    .line 4333
    if-ge v3, v2, :cond_b

    .line 4334
    sub-int v0, v2, v3

    add-int/lit8 v0, v0, 0x1

    .line 4340
    :cond_a
    :goto_3
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 4342
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 4343
    if-ge v3, v2, :cond_c

    .line 4344
    iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 4345
    iget v2, p0, Lit/sephiroth/android/library/widget/m;->f:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 4346
    iget-object v2, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v2, v1, v0, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IIZ)V

    .line 4347
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->b:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 4335
    :cond_b
    if-le v3, v4, :cond_a

    .line 4336
    sub-int v0, v3, v4

    goto :goto_3

    .line 4348
    :cond_c
    if-le v3, v4, :cond_d

    .line 4349
    iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 4350
    iget v2, p0, Lit/sephiroth/android/library/widget/m;->f:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 4351
    iget-object v2, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v2, v1, v0, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IIZ)V

    .line 4352
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->b:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 4355
    :cond_d
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    sub-int v1, v3, v2

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 4356
    iget v1, p0, Lit/sephiroth/android/library/widget/m;->h:I

    sub-int/2addr v0, v1

    .line 4357
    iget v1, p0, Lit/sephiroth/android/library/widget/m;->f:I

    int-to-float v1, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v3}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 4358
    iget-object v2, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v2, v0, v1, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IIZ)V

    goto/16 :goto_0

    .line 4198
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
