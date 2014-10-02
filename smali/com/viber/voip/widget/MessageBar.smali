.class public Lcom/viber/voip/widget/MessageBar;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ProgressBar;

.field private g:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/viber/voip/widget/MessageBar$Message;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/viber/voip/widget/MessageBar$Message;

.field private i:Z

.field private j:Lcom/viber/voip/widget/k;

.field private k:Landroid/os/Handler;

.field private l:Landroid/view/animation/AlphaAnimation;

.field private m:Landroid/view/animation/AlphaAnimation;

.field private final n:Landroid/view/View$OnClickListener;

.field private final o:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/widget/MessageBar;->g:Ljava/util/LinkedList;

    .line 182
    new-instance v0, Lcom/viber/voip/widget/h;

    invoke-direct {v0, p0}, Lcom/viber/voip/widget/h;-><init>(Lcom/viber/voip/widget/MessageBar;)V

    iput-object v0, p0, Lcom/viber/voip/widget/MessageBar;->n:Landroid/view/View$OnClickListener;

    .line 212
    new-instance v0, Lcom/viber/voip/widget/i;

    invoke-direct {v0, p0}, Lcom/viber/voip/widget/i;-><init>(Lcom/viber/voip/widget/MessageBar;)V

    iput-object v0, p0, Lcom/viber/voip/widget/MessageBar;->o:Ljava/lang/Runnable;

    .line 55
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 56
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300cd

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 57
    invoke-direct {p0, v0}, Lcom/viber/voip/widget/MessageBar;->a(Landroid/view/View;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/widget/MessageBar;->g:Ljava/util/LinkedList;

    .line 182
    new-instance v0, Lcom/viber/voip/widget/h;

    invoke-direct {v0, p0}, Lcom/viber/voip/widget/h;-><init>(Lcom/viber/voip/widget/MessageBar;)V

    iput-object v0, p0, Lcom/viber/voip/widget/MessageBar;->n:Landroid/view/View$OnClickListener;

    .line 212
    new-instance v0, Lcom/viber/voip/widget/i;

    invoke-direct {v0, p0}, Lcom/viber/voip/widget/i;-><init>(Lcom/viber/voip/widget/MessageBar;)V

    iput-object v0, p0, Lcom/viber/voip/widget/MessageBar;->o:Ljava/lang/Runnable;

    .line 61
    const v0, 0x7f0300cd

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 62
    invoke-direct {p0, v0}, Lcom/viber/voip/widget/MessageBar;->a(Landroid/view/View;)V

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/widget/MessageBar;)Ljava/util/LinkedList;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/viber/voip/widget/MessageBar;->g:Ljava/util/LinkedList;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 66
    const v0, 0x7f070062

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/widget/MessageBar;->a:Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcom/viber/voip/widget/MessageBar;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    const v0, 0x7f070063

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/widget/MessageBar;->b:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f070064

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/widget/MessageBar;->c:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f070066

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/widget/MessageBar;->e:Landroid/widget/ImageView;

    .line 71
    const v0, 0x7f070065

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/widget/MessageBar;->d:Landroid/widget/ImageView;

    .line 72
    const v0, 0x7f070067

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/viber/voip/widget/MessageBar;->f:Landroid/widget/ProgressBar;

    .line 73
    iget-object v0, p0, Lcom/viber/voip/widget/MessageBar;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/viber/voip/widget/MessageBar;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/viber/voip/widget/MessageBar;->l:Landroid/view/animation/AlphaAnimation;

    .line 76
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/viber/voip/widget/MessageBar;->m:Landroid/view/animation/AlphaAnimation;

    .line 77
    iget-object v0, p0, Lcom/viber/voip/widget/MessageBar;->m:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 78
    iget-object v0, p0, Lcom/viber/voip/widget/MessageBar;->m:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/viber/voip/widget/g;

    invoke-direct {v1, p0}, Lcom/viber/voip/widget/g;-><init>(Lcom/viber/voip/widget/MessageBar;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/widget/MessageBar;->k:Landroid/os/Handler;

    .line 102
    return-void
.end method

.method private a(Lcom/viber/voip/widget/MessageBar$Message;)V
    .locals 1
    .parameter

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/widget/MessageBar;->a(Lcom/viber/voip/widget/MessageBar$Message;Z)V

    .line 139
    return-void
.end method

.method private a(Lcom/viber/voip/widget/MessageBar$Message;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/widget/MessageBar;->i:Z

    .line 143
    iget-object v0, p0, Lcom/viber/voip/widget/MessageBar;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iput-object p1, p0, Lcom/viber/voip/widget/MessageBar;->h:Lcom/viber/voip/widget/MessageBar$Message;

    .line 145
    iget-object v0, p0, Lcom/viber/voip/widget/MessageBar;->b:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/viber/voip/widget/MessageBar$Message;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p1, Lcom/viber/voip/widget/MessageBar$Message;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/viber/voip/widget/MessageBar;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/viber/voip/widget/MessageBar;->c:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/viber/voip/widget/MessageBar$Message;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :goto_0
    iget v0, p1, Lcom/viber/voip/widget/MessageBar$Message;->c:I

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/viber/voip/widget/MessageBar;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/viber/voip/widget/MessageBar;->e:Landroid/widget/ImageView;

    iget v1, p1, Lcom/viber/voip/widget/MessageBar$Message;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 160
    :goto_1
    iget v0, p1, Lcom/viber/voip/widget/MessageBar$Message;->d:I

    if-eqz v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/viber/voip/widget/MessageBar;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/viber/voip/widget/MessageBar;->d:Landroid/widget/ImageView;

    iget v1, p1, Lcom/viber/voip/widget/MessageBar$Message;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    :goto_2
    iget-boolean v0, p1, Lcom/viber/voip/widget/MessageBar$Message;->e:Z

    if-eqz v0, :cond_3

    .line 168
    iget-object v0, p0, Lcom/viber/voip/widget/MessageBar;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 173
    :goto_3
    if-eqz p2, :cond_4

    .line 174
    iget-object v0, p0, Lcom/viber/voip/widget/MessageBar;->l:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 178
    :goto_4
    iget-object v0, p0, Lcom/viber/voip/widget/MessageBar;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/viber/voip/widget/MessageBar;->l:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 179
    iget-object v2, p0, Lcom/viber/voip/widget/MessageBar;->k:Landroid/os/Handler;

    iget-object v3, p0, Lcom/viber/voip/widget/MessageBar;->o:Ljava/lang/Runnable;

    iget-boolean v0, p1, Lcom/viber/voip/widget/MessageBar$Message;->f:Z

    if-eqz v0, :cond_5

    const-wide/32 v0, 0xea60

    :goto_5
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 180
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/widget/MessageBar;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/widget/MessageBar;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/widget/MessageBar;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 170
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/widget/MessageBar;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_3

    .line 176
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/widget/MessageBar;->l:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    goto :goto_4

    .line 179
    :cond_5
    const-wide/16 v0, 0x1388

    goto :goto_5
.end method

.method static synthetic a(Lcom/viber/voip/widget/MessageBar;Lcom/viber/voip/widget/MessageBar$Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/viber/voip/widget/MessageBar;->a(Lcom/viber/voip/widget/MessageBar$Message;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/widget/MessageBar;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/viber/voip/widget/MessageBar;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/viber/voip/widget/MessageBar;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/viber/voip/widget/MessageBar;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/viber/voip/widget/MessageBar;Lcom/viber/voip/widget/MessageBar$Message;)Lcom/viber/voip/widget/MessageBar$Message;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/viber/voip/widget/MessageBar;->h:Lcom/viber/voip/widget/MessageBar$Message;

    return-object p1
.end method

.method static synthetic c(Lcom/viber/voip/widget/MessageBar;)Lcom/viber/voip/widget/k;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/viber/voip/widget/MessageBar;->j:Lcom/viber/voip/widget/k;

    return-object v0
.end method

.method static synthetic d(Lcom/viber/voip/widget/MessageBar;)Lcom/viber/voip/widget/MessageBar$Message;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/viber/voip/widget/MessageBar;->h:Lcom/viber/voip/widget/MessageBar$Message;

    return-object v0
.end method

.method static synthetic e(Lcom/viber/voip/widget/MessageBar;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/viber/voip/widget/MessageBar;->o:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic f(Lcom/viber/voip/widget/MessageBar;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/viber/voip/widget/MessageBar;->k:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lcom/viber/voip/widget/MessageBar;)Landroid/view/animation/AlphaAnimation;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/viber/voip/widget/MessageBar;->m:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/viber/voip/widget/MessageBar;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 200
    iget-object v0, p0, Lcom/viber/voip/widget/MessageBar;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/widget/MessageBar;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 201
    iget-boolean v0, p0, Lcom/viber/voip/widget/MessageBar;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/widget/MessageBar;->o:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 202
    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    .line 220
    const-string/jumbo v0, "com.viber.voip.widget.MessageBar.currentMessage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/widget/MessageBar$Message;

    .line 221
    if-eqz v0, :cond_0

    .line 222
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/widget/MessageBar;->a(Lcom/viber/voip/widget/MessageBar$Message;Z)V

    .line 223
    const-string/jumbo v0, "com.viber.voip.widget.MessageBar.messages"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 224
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 225
    iget-object v4, p0, Lcom/viber/voip/widget/MessageBar;->g:Ljava/util/LinkedList;

    check-cast v0, Lcom/viber/voip/widget/MessageBar$Message;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 224
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 228
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/voip/widget/k;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/viber/voip/widget/MessageBar;->j:Lcom/viber/voip/widget/k;

    .line 196
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Parcelable;ZZZ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    new-instance v0, Lcom/viber/voip/widget/MessageBar$Message;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/widget/MessageBar$Message;-><init>(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Parcelable;ZZ)V

    .line 130
    iget-boolean v1, p0, Lcom/viber/voip/widget/MessageBar;->i:Z

    if-eqz v1, :cond_0

    if-nez p6, :cond_0

    .line 131
    iget-object v1, p0, Lcom/viber/voip/widget/MessageBar;->g:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-direct {p0, v0}, Lcom/viber/voip/widget/MessageBar;->a(Lcom/viber/voip/widget/MessageBar$Message;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IIZZ)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/viber/voip/widget/MessageBar;->a(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Parcelable;ZZZ)V

    .line 122
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IIZZZ)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/viber/voip/widget/MessageBar;->a(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Parcelable;ZZZ)V

    .line 126
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/viber/voip/widget/MessageBar;->a(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Parcelable;ZZZ)V

    .line 118
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/viber/voip/widget/MessageBar;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 206
    iget-object v0, p0, Lcom/viber/voip/widget/MessageBar;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/widget/MessageBar;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/widget/MessageBar;->h:Lcom/viber/voip/widget/MessageBar$Message;

    .line 208
    iget-object v0, p0, Lcom/viber/voip/widget/MessageBar;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/widget/MessageBar;->i:Z

    .line 210
    return-void
.end method

.method public c()Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 231
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 233
    const-string/jumbo v0, "com.viber.voip.widget.MessageBar.currentMessage"

    iget-object v1, p0, Lcom/viber/voip/widget/MessageBar;->h:Lcom/viber/voip/widget/MessageBar$Message;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 235
    iget-object v0, p0, Lcom/viber/voip/widget/MessageBar;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 236
    new-array v4, v0, [Lcom/viber/voip/widget/MessageBar$Message;

    .line 237
    const/4 v0, 0x0

    .line 238
    iget-object v1, p0, Lcom/viber/voip/widget/MessageBar;->g:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/widget/MessageBar$Message;

    .line 239
    add-int/lit8 v2, v1, 0x1

    aput-object v0, v4, v1

    move v1, v2

    goto :goto_0

    .line 242
    :cond_0
    const-string/jumbo v0, "com.viber.voip.widget.MessageBar.messages"

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 244
    return-object v3
.end method
