.class public Lcom/viber/voip/widget/a/a;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field public static a:Lcom/viber/voip/widget/a/e;

.field public static b:Lcom/viber/voip/widget/a/e;


# instance fields
.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/os/Handler;

.field private f:Lcom/viber/voip/widget/a/d;

.field private g:Lcom/viber/voip/widget/a/e;

.field private h:Landroid/os/Parcelable;

.field private i:Ljava/lang/CharSequence;

.field private final j:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 20
    new-instance v0, Lcom/viber/voip/widget/a/e;

    const v1, 0x7f020332

    const v2, 0x7f0c0631

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/widget/a/e;-><init>(II)V

    sput-object v0, Lcom/viber/voip/widget/a/a;->a:Lcom/viber/voip/widget/a/e;

    .line 23
    new-instance v0, Lcom/viber/voip/widget/a/e;

    const-wide/16 v1, 0x1388

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/viber/voip/widget/a/e;-><init>(IIJ)V

    sput-object v0, Lcom/viber/voip/widget/a/a;->b:Lcom/viber/voip/widget/a/e;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/widget/a/a;->e:Landroid/os/Handler;

    .line 33
    sget-object v0, Lcom/viber/voip/widget/a/a;->a:Lcom/viber/voip/widget/a/e;

    iput-object v0, p0, Lcom/viber/voip/widget/a/a;->g:Lcom/viber/voip/widget/a/e;

    .line 39
    new-instance v0, Lcom/viber/voip/widget/a/b;

    invoke-direct {v0, p0}, Lcom/viber/voip/widget/a/b;-><init>(Lcom/viber/voip/widget/a/a;)V

    iput-object v0, p0, Lcom/viber/voip/widget/a/a;->j:Ljava/lang/Runnable;

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030131

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 49
    const v0, 0x7f0703ca

    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/widget/a/a;->c:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f0703cb

    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/widget/a/a;->d:Landroid/widget/TextView;

    .line 51
    iget-object v0, p0, Lcom/viber/voip/widget/a/a;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/viber/voip/widget/a/c;

    invoke-direct {v1, p0}, Lcom/viber/voip/widget/a/c;-><init>(Lcom/viber/voip/widget/a/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-direct {p0, v2}, Lcom/viber/voip/widget/a/a;->a(Z)V

    .line 63
    return-void
.end method

.method private static a(Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 3
    .parameter

    .prologue
    .line 98
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 99
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 100
    invoke-virtual {v0, p0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 101
    return-object v0
.end method

.method private static a(Landroid/view/View;)Lcom/viber/voip/widget/a/a;
    .locals 2
    .parameter

    .prologue
    .line 188
    const v0, 0x7f0703c9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 189
    const/4 v0, 0x0

    .line 190
    if-eqz v1, :cond_0

    .line 191
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/widget/a/a;

    .line 193
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/view/View;Ljava/lang/CharSequence;Lcom/viber/voip/widget/a/d;Landroid/os/Parcelable;ZLcom/viber/voip/widget/a/e;)Lcom/viber/voip/widget/a/a;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    invoke-static {p0}, Lcom/viber/voip/widget/a/a;->a(Landroid/view/View;)Lcom/viber/voip/widget/a/a;

    move-result-object v0

    .line 176
    if-nez v0, :cond_0

    .line 177
    new-instance v1, Lcom/viber/voip/widget/a/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/viber/voip/widget/a/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 178
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object v0, v1

    .line 181
    :cond_0
    iput-object p5, v0, Lcom/viber/voip/widget/a/a;->g:Lcom/viber/voip/widget/a/e;

    .line 182
    invoke-direct {v0, p2}, Lcom/viber/voip/widget/a/a;->setUndoListener(Lcom/viber/voip/widget/a/d;)V

    .line 183
    invoke-direct {v0, p4, p1, p3}, Lcom/viber/voip/widget/a/a;->a(ZLjava/lang/CharSequence;Landroid/os/Parcelable;)V

    .line 184
    return-object v0
.end method

.method public static a(Landroid/view/View;Ljava/lang/CharSequence;Lcom/viber/voip/widget/a/d;Lcom/viber/voip/widget/a/e;)Lcom/viber/voip/widget/a/a;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 213
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/widget/a/a;->a(Landroid/view/View;Ljava/lang/CharSequence;Lcom/viber/voip/widget/a/d;Landroid/os/Parcelable;ZLcom/viber/voip/widget/a/e;)Lcom/viber/voip/widget/a/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/widget/a/a;)Lcom/viber/voip/widget/a/d;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/viber/voip/widget/a/a;->f:Lcom/viber/voip/widget/a/d;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/widget/a/a;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/viber/voip/widget/a/a;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 75
    iget-object v0, p0, Lcom/viber/voip/widget/a/a;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/widget/a/a;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 76
    iput-object v3, p0, Lcom/viber/voip/widget/a/a;->h:Landroid/os/Parcelable;

    .line 77
    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p0, v2}, Lcom/viber/voip/widget/a/a;->setVisibility(I)V

    .line 84
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/widget/a/a;->clearAnimation()V

    .line 81
    invoke-static {v3}, Lcom/viber/voip/widget/a/a;->a(Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/a/a;->startAnimation(Landroid/view/animation/Animation;)V

    .line 82
    invoke-virtual {p0, v2}, Lcom/viber/voip/widget/a/a;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(ZLjava/lang/CharSequence;Landroid/os/Parcelable;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 129
    iput-object p3, p0, Lcom/viber/voip/widget/a/a;->h:Landroid/os/Parcelable;

    .line 130
    iput-object p2, p0, Lcom/viber/voip/widget/a/a;->i:Ljava/lang/CharSequence;

    .line 131
    iget-object v0, p0, Lcom/viber/voip/widget/a/a;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/viber/voip/widget/a/a;->i:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/viber/voip/widget/a/a;->g:Lcom/viber/voip/widget/a/e;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/viber/voip/widget/a/a;->g:Lcom/viber/voip/widget/a/e;

    iget v0, v0, Lcom/viber/voip/widget/a/e;->b:I

    if-lez v0, :cond_3

    .line 135
    iget-object v0, p0, Lcom/viber/voip/widget/a/a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/viber/voip/widget/a/a;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/viber/voip/widget/a/a;->g:Lcom/viber/voip/widget/a/e;

    iget v1, v1, Lcom/viber/voip/widget/a/e;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 142
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/widget/a/a;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/widget/a/a;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 143
    iget-object v0, p0, Lcom/viber/voip/widget/a/a;->g:Lcom/viber/voip/widget/a/e;

    iget-wide v0, v0, Lcom/viber/voip/widget/a/e;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/viber/voip/widget/a/a;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/widget/a/a;->j:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/viber/voip/widget/a/a;->g:Lcom/viber/voip/widget/a/e;

    iget-wide v2, v2, Lcom/viber/voip/widget/a/e;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 146
    :cond_1
    if-nez p1, :cond_2

    .line 147
    invoke-virtual {p0}, Lcom/viber/voip/widget/a/a;->clearAnimation()V

    .line 148
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/viber/voip/widget/a/a;->b(Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/a/a;->startAnimation(Landroid/view/animation/Animation;)V

    .line 150
    :cond_2
    invoke-virtual {p0, v4}, Lcom/viber/voip/widget/a/a;->setVisibility(I)V

    .line 151
    return-void

    .line 138
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/widget/a/a;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/viber/voip/widget/a/a;)Landroid/os/Parcelable;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/viber/voip/widget/a/a;->h:Landroid/os/Parcelable;

    return-object v0
.end method

.method private static b(Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 3
    .parameter

    .prologue
    .line 165
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 166
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 167
    invoke-virtual {v0, p0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 168
    return-object v0
.end method

.method private setUndoListener(Lcom/viber/voip/widget/a/d;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/viber/voip/widget/a/a;->f:Lcom/viber/voip/widget/a/d;

    .line 125
    return-void
.end method


# virtual methods
.method public getUndoListener()Lcom/viber/voip/widget/a/d;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/viber/voip/widget/a/a;->f:Lcom/viber/voip/widget/a/d;

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .parameter

    .prologue
    .line 114
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 115
    check-cast p1, Landroid/os/Bundle;

    .line 116
    const-string/jumbo v0, "undo_message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/widget/a/a;->i:Ljava/lang/CharSequence;

    .line 117
    const-string/jumbo v0, "undo_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/widget/a/a;->h:Landroid/os/Parcelable;

    .line 121
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 106
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 107
    const-string/jumbo v1, "undo_message"

    iget-object v2, p0, Lcom/viber/voip/widget/a/a;->i:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 108
    const-string/jumbo v1, "undo_token"

    iget-object v2, p0, Lcom/viber/voip/widget/a/a;->h:Landroid/os/Parcelable;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 109
    return-object v0
.end method
