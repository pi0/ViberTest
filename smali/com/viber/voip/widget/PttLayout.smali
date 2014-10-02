.class public Lcom/viber/voip/widget/PttLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/viber/voip/messages/adapters/c;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/viber/voip/messages/conversation/a/a/a;

.field private d:Landroid/view/ViewGroup;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ProgressBar;

.field private g:Landroid/widget/TextView;

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private l:[I

.field private m:Lcom/viber/voip/h/a;

.field private n:Lcom/viber/jni/ptt/PttPlayerListener;

.field private o:Z

.field private p:Lcom/viber/voip/widget/z;

.field private q:Ljava/lang/Runnable;

.field private r:Lcom/viber/jni/ptt/PttControllerDelegate$Player;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/viber/voip/widget/PttLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/widget/PttLayout;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    iput v1, p0, Lcom/viber/voip/widget/PttLayout;->h:I

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/viber/voip/widget/PttLayout;->i:I

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lcom/viber/voip/widget/PttLayout;->j:I

    .line 51
    const/4 v0, 0x3

    iput v0, p0, Lcom/viber/voip/widget/PttLayout;->k:I

    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/viber/voip/widget/PttLayout;->l:[I

    .line 59
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getPttPlaylist()Lcom/viber/voip/h/a;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/widget/PttLayout;->m:Lcom/viber/voip/h/a;

    .line 60
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDelegatesManager()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getPttPlayerListener()Lcom/viber/jni/ptt/PttPlayerListener;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/widget/PttLayout;->n:Lcom/viber/jni/ptt/PttPlayerListener;

    .line 110
    new-instance v0, Lcom/viber/voip/widget/w;

    invoke-direct {v0, p0}, Lcom/viber/voip/widget/w;-><init>(Lcom/viber/voip/widget/PttLayout;)V

    iput-object v0, p0, Lcom/viber/voip/widget/PttLayout;->q:Ljava/lang/Runnable;

    .line 231
    new-instance v0, Lcom/viber/voip/widget/y;

    invoke-direct {v0, p0}, Lcom/viber/voip/widget/y;-><init>(Lcom/viber/voip/widget/PttLayout;)V

    iput-object v0, p0, Lcom/viber/voip/widget/PttLayout;->r:Lcom/viber/jni/ptt/PttControllerDelegate$Player;

    .line 79
    iput-object p1, p0, Lcom/viber/voip/widget/PttLayout;->b:Landroid/content/Context;

    .line 80
    invoke-direct {p0}, Lcom/viber/voip/widget/PttLayout;->b()V

    .line 81
    return-void

    .line 53
    nop

    :array_0
    .array-data 0x4
        0x45t 0x4t 0x2t 0x7ft
        0x48t 0x4t 0x2t 0x7ft
        0x47t 0x4t 0x2t 0x7ft
        0x46t 0x4t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic a(Lcom/viber/voip/widget/PttLayout;)Lcom/viber/voip/messages/conversation/a/a/a;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/viber/voip/widget/PttLayout;->c:Lcom/viber/voip/messages/conversation/a/a/a;

    return-object v0
.end method

.method private a(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 175
    packed-switch p1, :pswitch_data_0

    .line 205
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/widget/PttLayout;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/viber/voip/widget/PttLayout;->l:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 206
    const/4 v0, 0x3

    if-ne v0, p1, :cond_2

    .line 207
    iget-object v0, p0, Lcom/viber/voip/widget/PttLayout;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/viber/voip/widget/PttLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 211
    :goto_1
    return-void

    .line 178
    :pswitch_0
    iget-object v1, p0, Lcom/viber/voip/widget/PttLayout;->c:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v1}, Lcom/viber/voip/messages/conversation/a/a/a;->h()J

    move-result-wide v1

    iget-object v3, p0, Lcom/viber/voip/widget/PttLayout;->c:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v3}, Lcom/viber/voip/messages/conversation/a/a/a;->p()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/viber/voip/widget/PttLayout;->c:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v3}, Lcom/viber/voip/messages/conversation/a/a/a;->R()I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/viber/voip/widget/PttLayout;->c:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v3}, Lcom/viber/voip/messages/conversation/a/a/a;->R()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    invoke-direct {p0, v1, v2, v0}, Lcom/viber/voip/widget/PttLayout;->a(JZ)V

    goto :goto_0

    .line 182
    :pswitch_1
    iget-object v1, p0, Lcom/viber/voip/widget/PttLayout;->m:Lcom/viber/voip/h/a;

    invoke-virtual {v1}, Lcom/viber/voip/h/a;->b()J

    move-result-wide v1

    invoke-direct {p0, v1, v2, v0}, Lcom/viber/voip/widget/PttLayout;->a(JZ)V

    .line 184
    :pswitch_2
    new-instance v0, Lcom/viber/voip/widget/x;

    invoke-direct {v0, p0}, Lcom/viber/voip/widget/x;-><init>(Lcom/viber/voip/widget/PttLayout;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/PttLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/widget/PttLayout;->g:Landroid/widget/TextView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private a(JZ)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x4

    const/4 v5, 0x0

    .line 149
    if-eqz p3, :cond_0

    .line 150
    iget-object v0, p0, Lcom/viber/voip/widget/PttLayout;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/viber/voip/widget/PttLayout;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/widget/PttLayout;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/viber/voip/widget/PttLayout;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/viber/voip/widget/PttLayout;->g:Landroid/widget/TextView;

    const-string/jumbo v1, "0:%02d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    long-to-float v3, p1

    const/high16 v4, 0x447a

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/widget/PttLayout;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/viber/voip/widget/PttLayout;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/widget/PttLayout;JZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/widget/PttLayout;->a(JZ)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-static {p0}, Lcom/viber/voip/widget/PttLayout;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/viber/voip/widget/PttLayout;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300eb

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/viber/voip/widget/PttLayout;->d:Landroid/view/ViewGroup;

    .line 85
    iget-object v0, p0, Lcom/viber/voip/widget/PttLayout;->d:Landroid/view/ViewGroup;

    const v1, 0x7f07032a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/widget/PttLayout;->e:Landroid/widget/ImageView;

    .line 86
    iget-object v0, p0, Lcom/viber/voip/widget/PttLayout;->d:Landroid/view/ViewGroup;

    const v1, 0x7f07032b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/widget/PttLayout;->g:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lcom/viber/voip/widget/PttLayout;->d:Landroid/view/ViewGroup;

    const v1, 0x7f07032c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/viber/voip/widget/PttLayout;->f:Landroid/widget/ProgressBar;

    .line 88
    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 301
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/widget/PttLayout;->a:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/widget/PttLayout;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/viber/voip/widget/PttLayout;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/viber/voip/widget/PttLayout;)Lcom/viber/voip/h/a;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/viber/voip/widget/PttLayout;->m:Lcom/viber/voip/h/a;

    return-object v0
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/viber/voip/widget/PttLayout;->m:Lcom/viber/voip/h/a;

    invoke-virtual {v0}, Lcom/viber/voip/h/a;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/widget/PttLayout;->m:Lcom/viber/voip/h/a;

    invoke-virtual {v0}, Lcom/viber/voip/h/a;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/widget/PttLayout;->c:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v1}, Lcom/viber/voip/messages/conversation/a/a/a;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/viber/voip/widget/PttLayout;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/viber/voip/widget/PttLayout;->o:Z

    return v0
.end method

.method static synthetic e(Lcom/viber/voip/widget/PttLayout;)Lcom/viber/voip/widget/z;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/viber/voip/widget/PttLayout;->p:Lcom/viber/voip/widget/z;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/viber/voip/widget/PttLayout;->o:Z

    if-nez v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/widget/PttLayout;->o:Z

    .line 163
    iget-object v0, p0, Lcom/viber/voip/widget/PttLayout;->n:Lcom/viber/jni/ptt/PttPlayerListener;

    iget-object v1, p0, Lcom/viber/voip/widget/PttLayout;->r:Lcom/viber/jni/ptt/PttControllerDelegate$Player;

    invoke-virtual {v0, v1}, Lcom/viber/jni/ptt/PttPlayerListener;->removeDelegate(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 227
    iget-object v0, p0, Lcom/viber/voip/widget/PttLayout;->q:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/PttLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 228
    iget-object v0, p0, Lcom/viber/voip/widget/PttLayout;->q:Ljava/lang/Runnable;

    const-wide/16 v1, 0x96

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/widget/PttLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 229
    return-void
.end method

.method public a(Lcom/viber/voip/messages/conversation/a/a/a;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 93
    iput-object p1, p0, Lcom/viber/voip/widget/PttLayout;->c:Lcom/viber/voip/messages/conversation/a/a/a;

    .line 95
    iput-boolean v3, p0, Lcom/viber/voip/widget/PttLayout;->o:Z

    .line 96
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/viber/voip/widget/PttLayout;->n:Lcom/viber/jni/ptt/PttPlayerListener;

    iget-object v2, p0, Lcom/viber/voip/widget/PttLayout;->r:Lcom/viber/jni/ptt/PttControllerDelegate$Player;

    invoke-virtual {v1, v2, v0}, Lcom/viber/jni/ptt/PttPlayerListener;->registerDelegate(Ljava/lang/Object;Landroid/os/Handler;)Lcom/viber/jni/controller/ControllerListener;

    .line 98
    invoke-virtual {p0}, Lcom/viber/voip/widget/PttLayout;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0, p0}, Lcom/viber/voip/widget/PttLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    :cond_0
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/viber/voip/widget/PttLayout;->a(I)V

    .line 108
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-direct {p0}, Lcom/viber/voip/widget/PttLayout;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    invoke-direct {p0, v3}, Lcom/viber/voip/widget/PttLayout;->a(I)V

    goto :goto_0

    .line 106
    :cond_2
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->K()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v0}, Lcom/viber/voip/widget/PttLayout;->a(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/viber/voip/widget/PttLayout;->a(Landroid/view/View;)V

    .line 142
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 215
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 216
    invoke-virtual {p0}, Lcom/viber/voip/widget/PttLayout;->a()V

    .line 217
    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 0

    .prologue
    .line 221
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onStartTemporaryDetach()V

    .line 222
    invoke-virtual {p0}, Lcom/viber/voip/widget/PttLayout;->a()V

    .line 223
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 169
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/viber/voip/widget/PttLayout;->a()V

    .line 172
    :cond_0
    return-void
.end method

.method public setErrorPlaybackListener(Lcom/viber/voip/widget/z;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/viber/voip/widget/PttLayout;->p:Lcom/viber/voip/widget/z;

    .line 71
    return-void
.end method
