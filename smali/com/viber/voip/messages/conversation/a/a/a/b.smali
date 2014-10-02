.class Lcom/viber/voip/messages/conversation/a/a/a/b;
.super Lcom/viber/voip/ui/b/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/viber/voip/ui/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/voip/ui/b/a",
        "<",
        "Lcom/viber/voip/messages/conversation/a/a/a;",
        "Lcom/viber/voip/messages/conversation/a/a/b/a/b;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnTouchListener;",
        "Lcom/viber/voip/ui/b/c;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:J

.field private c:Lcom/viber/voip/messages/ui/bb;

.field private d:Lcom/viber/voip/messages/extras/map/BalloonLayout;

.field private e:Landroid/view/ViewStub;

.field private f:Landroid/view/ViewStub;

.field private g:Landroid/view/ViewStub;

.field private h:Lcom/viber/voip/messages/adapters/MediaLayout;

.field private i:Lcom/viber/voip/widget/PttLayout;

.field private j:Lcom/viber/voip/widget/FollowPublicGroupLayout;

.field private l:Lcom/viber/voip/messages/adapters/c;

.field private m:Landroid/widget/TextView;

.field private n:Lcom/viber/voip/messages/extras/map/BalloonLayout;

.field private o:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/widget/TextView;

.field private final r:Lcom/viber/voip/messages/conversation/a/s;

.field private final s:Lcom/viber/voip/messages/conversation/a/s;

.field private final t:Lcom/viber/voip/messages/conversation/a/b/b;

.field private u:Lcom/viber/voip/messages/conversation/a/b/d;

.field private v:Lcom/viber/voip/messages/conversation/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/viber/voip/messages/conversation/a/a/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/conversation/a/a/a/b;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/support/v4/app/Fragment;Lcom/viber/voip/messages/conversation/a/a/a/k;Lcom/viber/voip/messages/ui/bb;Lcom/viber/voip/messages/conversation/a/s;Lcom/viber/voip/messages/conversation/a/s;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-direct {p0, p1}, Lcom/viber/voip/ui/b/a;-><init>(Landroid/view/View;)V

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->a:J

    move-object v0, p2

    .line 82
    check-cast v0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->o:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    .line 83
    const v0, 0x7f0702fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/extras/map/BalloonLayout;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->d:Lcom/viber/voip/messages/extras/map/BalloonLayout;

    .line 84
    const v0, 0x7f0702ff

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->e:Landroid/view/ViewStub;

    .line 85
    const v0, 0x7f0702fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->f:Landroid/view/ViewStub;

    .line 86
    const v0, 0x7f070301

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->g:Landroid/view/ViewStub;

    .line 87
    const v0, 0x7f070122

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->m:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f070302

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->p:Landroid/widget/LinearLayout;

    .line 90
    const v0, 0x7f070304

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/extras/map/BalloonLayout;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->n:Lcom/viber/voip/messages/extras/map/BalloonLayout;

    .line 91
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->n:Lcom/viber/voip/messages/extras/map/BalloonLayout;

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/extras/map/BalloonLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iput-object p5, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->r:Lcom/viber/voip/messages/conversation/a/s;

    .line 93
    iput-object p6, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->s:Lcom/viber/voip/messages/conversation/a/s;

    move-object v0, p2

    .line 94
    check-cast v0, Lcom/viber/voip/messages/conversation/a/b/b;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->t:Lcom/viber/voip/messages/conversation/a/b/b;

    .line 95
    instance-of v0, p2, Lcom/viber/voip/messages/conversation/a/b/d;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 96
    check-cast v0, Lcom/viber/voip/messages/conversation/a/b/d;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->u:Lcom/viber/voip/messages/conversation/a/b/d;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->d:Lcom/viber/voip/messages/extras/map/BalloonLayout;

    invoke-virtual {v0, p3}, Lcom/viber/voip/messages/extras/map/BalloonLayout;->setTag(Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->d:Lcom/viber/voip/messages/extras/map/BalloonLayout;

    invoke-virtual {p2, v0}, Landroid/support/v4/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    .line 101
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->d:Lcom/viber/voip/messages/extras/map/BalloonLayout;

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/extras/map/BalloonLayout;->setFocusable(Z)V

    .line 102
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->d:Lcom/viber/voip/messages/extras/map/BalloonLayout;

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/extras/map/BalloonLayout;->setFocusableInTouchMode(Z)V

    .line 103
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->d:Lcom/viber/voip/messages/extras/map/BalloonLayout;

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/extras/map/BalloonLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 104
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->d:Lcom/viber/voip/messages/extras/map/BalloonLayout;

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/extras/map/BalloonLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iput-object p4, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->c:Lcom/viber/voip/messages/ui/bb;

    .line 107
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/a/a/a/b;)Lcom/viber/voip/messages/conversation/ui/ConversationFragment;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->o:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    return-object v0
.end method

.method private a(Landroid/widget/TextView;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 340
    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    .line 341
    new-instance v0, Lcom/viber/voip/messages/conversation/a/a/a/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/voip/messages/conversation/a/a/a/e;-><init>(Lcom/viber/voip/messages/conversation/a/a/a/b;Landroid/widget/TextView;I)V

    invoke-static {p1, v0}, Lcom/viber/voip/util/gl;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 355
    :cond_0
    return-void
.end method

.method private a(Lcom/viber/voip/messages/conversation/a/a/a;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 132
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->a()J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-nez v0, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_3

    .line 133
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0201df

    .line 148
    :goto_0
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->d:Lcom/viber/voip/messages/extras/map/BalloonLayout;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/extras/map/BalloonLayout;->setBackgroundResource(I)V

    .line 149
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->d:Lcom/viber/voip/messages/extras/map/BalloonLayout;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/map/BalloonLayout;->invalidate()V

    .line 150
    return-void

    .line 134
    :cond_0
    const v0, 0x7f0201e8

    goto :goto_0

    .line 136
    :cond_1
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0201db

    goto :goto_0

    :cond_2
    const v0, 0x7f0201e2

    goto :goto_0

    .line 138
    :cond_3
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->q()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->r()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->s()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 139
    :cond_4
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->F()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 140
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f0201ca

    goto :goto_0

    :cond_5
    const v0, 0x7f0201cd

    goto :goto_0

    .line 142
    :cond_6
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->k()Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f0201cb

    goto :goto_0

    :cond_7
    const v0, 0x7f0201ce

    goto :goto_0

    .line 145
    :cond_8
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->k()Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x7f0201c9

    goto :goto_0

    :cond_9
    const v0, 0x7f0201cc

    goto :goto_0
.end method

.method private a(Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V
    .locals 3
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->d:Lcom/viber/voip/messages/extras/map/BalloonLayout;

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->k()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/extras/map/BalloonLayout;->setMaxWidth(F)V

    .line 127
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->v:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->h()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/viber/voip/messages/conversation/a/a/a/b;->a(Lcom/viber/voip/messages/conversation/a/a/a;J)V

    .line 128
    return-void
.end method

.method private a(Lcom/viber/voip/messages/conversation/a/a/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 358
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->r()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->q:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->v:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->k:Landroid/view/View;

    const v1, 0x7f070303

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 172
    :goto_0
    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->k:Landroid/view/View;

    const v1, 0x7f070327

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->q:Landroid/widget/TextView;

    .line 178
    :cond_1
    return-void

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->k:Landroid/view/View;

    const v1, 0x7f070330

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    goto :goto_0
.end method

.method private b(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 208
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/viber/voip/k/a;->b:Z

    if-eqz v0, :cond_0

    .line 209
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->d()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->a(I)I

    move-result v0

    .line 210
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->n:Lcom/viber/voip/messages/extras/map/BalloonLayout;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/extras/map/BalloonLayout;->setMinimumWidth(I)V

    .line 211
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->n:Lcom/viber/voip/messages/extras/map/BalloonLayout;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/extras/map/BalloonLayout;->setMaxWidth(F)V

    .line 212
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->n:Lcom/viber/voip/messages/extras/map/BalloonLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/extras/map/BalloonLayout;->setVisibility(I)V

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->n:Lcom/viber/voip/messages/extras/map/BalloonLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/extras/map/BalloonLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private b(Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V
    .locals 2
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->v:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->x()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->v:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->v:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->E()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->m:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->v:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-direct {p0, v0, p1}, Lcom/viber/voip/messages/conversation/a/a/a/b;->b(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V

    .line 189
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->v:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/a/a/a/b;->a(Lcom/viber/voip/messages/conversation/a/a/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/a/a/a/b;->c()V

    .line 195
    :goto_1
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->m:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 192
    :cond_2
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->v:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->E()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/ca;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    :goto_2
    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 193
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->v:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-direct {p0, v0, p1}, Lcom/viber/voip/messages/conversation/a/a/a/b;->c(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V

    goto :goto_1

    .line 192
    :cond_3
    const/4 v0, 0x3

    goto :goto_2
.end method

.method private c()V
    .locals 4

    .prologue
    const v2, 0x7fffffff

    .line 198
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->v:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v1}, Lcom/viber/voip/messages/conversation/a/a/a;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 200
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 201
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->v:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/ca;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 203
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->m:Landroid/widget/TextView;

    const/16 v1, 0x1f

    invoke-static {v0, v1}, Lcom/viber/voip/util/hm;->a(Landroid/widget/TextView;I)Z

    .line 204
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->c:Lcom/viber/voip/messages/ui/bb;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->m:Landroid/widget/TextView;

    sget v2, Lcom/viber/voip/messages/ui/bd;->c:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/messages/ui/bb;->a(Landroid/widget/TextView;IZ)V

    .line 205
    return-void

    .line 201
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private c(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 219
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 220
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->d:Lcom/viber/voip/messages/extras/map/BalloonLayout;

    invoke-virtual {v1}, Lcom/viber/voip/messages/extras/map/BalloonLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a024d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 221
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->l:Lcom/viber/voip/messages/adapters/c;

    invoke-interface {v0, p1}, Lcom/viber/voip/messages/adapters/c;->a(Lcom/viber/voip/messages/conversation/a/a/a;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->w()Z

    move-result v0

    if-nez v0, :cond_5

    .line 235
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->v:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->B()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->v:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->D()Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->m()Ljava/lang/String;

    move-result-object v0

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 240
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->m:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 263
    :cond_1
    :goto_1
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 226
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 227
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/a/a/a/b;->e()Lcom/viber/voip/messages/adapters/c;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->l:Lcom/viber/voip/messages/adapters/c;

    .line 228
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->l:Lcom/viber/voip/messages/adapters/c;

    invoke-interface {v0, p1}, Lcom/viber/voip/messages/adapters/c;->a(Lcom/viber/voip/messages/conversation/a/a/a;)V

    goto :goto_0

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->v:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->E()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 242
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->v:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v1}, Lcom/viber/voip/messages/conversation/a/a/a;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->c:Lcom/viber/voip/messages/ui/bb;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->m:Landroid/widget/TextView;

    sget v2, Lcom/viber/voip/messages/ui/bd;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/messages/ui/bb;->a(Landroid/widget/TextView;IZ)V

    .line 244
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 245
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 247
    invoke-static {}, Lcom/viber/voip/util/gl;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 248
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->m:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_1

    .line 250
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->m:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 251
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->m:Landroid/widget/TextView;

    invoke-direct {p0, v0, v4}, Lcom/viber/voip/messages/conversation/a/a/a/b;->a(Landroid/widget/TextView;I)V

    goto :goto_1

    .line 254
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->m:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 258
    :cond_5
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->a()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->i()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 259
    const-wide/16 v0, -0x1

    invoke-virtual {p2, v0, v1}, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->b(J)V

    .line 260
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->l:Lcom/viber/voip/messages/adapters/c;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->d:Lcom/viber/voip/messages/extras/map/BalloonLayout;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/adapters/c;->a(Landroid/view/View;)V

    goto :goto_1
.end method

.method private d()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->v:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->F()I

    move-result v0

    .line 267
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->d:Lcom/viber/voip/messages/extras/map/BalloonLayout;

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 272
    :goto_0
    return-void

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->d:Lcom/viber/voip/messages/extras/map/BalloonLayout;

    const v1, 0x3ecccccd

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    goto :goto_0
.end method

.method private e()Lcom/viber/voip/messages/adapters/c;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->v:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/a/a/a/b;->f()Lcom/viber/voip/messages/adapters/c;

    move-result-object v0

    .line 280
    :goto_0
    return-object v0

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->v:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/a/a/a/b;->g()Lcom/viber/voip/messages/adapters/c;

    move-result-object v0

    goto :goto_0

    .line 280
    :cond_1
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/a/a/a/b;->h()Lcom/viber/voip/messages/adapters/c;

    move-result-object v0

    goto :goto_0
.end method

.method private f()Lcom/viber/voip/messages/adapters/c;
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->h:Lcom/viber/voip/messages/adapters/MediaLayout;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->h:Lcom/viber/voip/messages/adapters/MediaLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/adapters/MediaLayout;->setVisibility(I)V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->i:Lcom/viber/voip/widget/PttLayout;

    if-nez v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->f:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/widget/PttLayout;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->i:Lcom/viber/voip/widget/PttLayout;

    .line 290
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->i:Lcom/viber/voip/widget/PttLayout;

    new-instance v1, Lcom/viber/voip/messages/conversation/a/a/a/c;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/a/a/a/c;-><init>(Lcom/viber/voip/messages/conversation/a/a/a/b;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/PttLayout;->setErrorPlaybackListener(Lcom/viber/voip/widget/z;)V

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->i:Lcom/viber/voip/widget/PttLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/PttLayout;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->i:Lcom/viber/voip/widget/PttLayout;

    return-object v0
.end method

.method private g()Lcom/viber/voip/messages/adapters/c;
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->h:Lcom/viber/voip/messages/adapters/MediaLayout;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->h:Lcom/viber/voip/messages/adapters/MediaLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/adapters/MediaLayout;->setVisibility(I)V

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->j:Lcom/viber/voip/widget/FollowPublicGroupLayout;

    if-nez v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->g:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/widget/FollowPublicGroupLayout;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->j:Lcom/viber/voip/widget/FollowPublicGroupLayout;

    .line 308
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->j:Lcom/viber/voip/widget/FollowPublicGroupLayout;

    new-instance v1, Lcom/viber/voip/messages/conversation/a/a/a/d;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/a/a/a/d;-><init>(Lcom/viber/voip/messages/conversation/a/a/a/b;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/FollowPublicGroupLayout;->setJoinPGListener(Lcom/viber/voip/widget/d;)V

    .line 319
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->j:Lcom/viber/voip/widget/FollowPublicGroupLayout;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->t:Lcom/viber/voip/messages/conversation/a/b/b;

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/FollowPublicGroupLayout;->setMessageBallonClickListener(Lcom/viber/voip/messages/conversation/a/b/b;)V

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->j:Lcom/viber/voip/widget/FollowPublicGroupLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/FollowPublicGroupLayout;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->j:Lcom/viber/voip/widget/FollowPublicGroupLayout;

    return-object v0
.end method

.method private h()Lcom/viber/voip/messages/adapters/c;
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->i:Lcom/viber/voip/widget/PttLayout;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->i:Lcom/viber/voip/widget/PttLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/PttLayout;->setVisibility(I)V

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->h:Lcom/viber/voip/messages/adapters/MediaLayout;

    if-nez v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->e:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/adapters/MediaLayout;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->h:Lcom/viber/voip/messages/adapters/MediaLayout;

    .line 332
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->h:Lcom/viber/voip/messages/adapters/MediaLayout;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->t:Lcom/viber/voip/messages/conversation/a/b/b;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/adapters/MediaLayout;->setBallonClickListener(Lcom/viber/voip/messages/conversation/a/b/b;)V

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->h:Lcom/viber/voip/messages/adapters/MediaLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/adapters/MediaLayout;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->h:Lcom/viber/voip/messages/adapters/MediaLayout;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->i:Lcom/viber/voip/widget/PttLayout;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->i:Lcom/viber/voip/widget/PttLayout;

    invoke-virtual {v0}, Lcom/viber/voip/widget/PttLayout;->a()V

    .line 400
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->v:Lcom/viber/voip/messages/conversation/a/a/a;

    .line 113
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->v:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/a/a/a/b;->e()Lcom/viber/voip/messages/adapters/c;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->l:Lcom/viber/voip/messages/adapters/c;

    .line 117
    :cond_0
    invoke-direct {p0, p2}, Lcom/viber/voip/messages/conversation/a/a/a/b;->a(Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V

    .line 118
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/a/a/a/b;->b()V

    .line 119
    invoke-direct {p0, p2}, Lcom/viber/voip/messages/conversation/a/a/a/b;->b(Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V

    .line 120
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/a/a/a/b;->d()V

    .line 121
    return-void
.end method

.method public bridge synthetic a(Lcom/viber/voip/ui/b/f;Lcom/viber/voip/ui/b/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    check-cast p1, Lcom/viber/voip/messages/conversation/a/a/a;

    check-cast p2, Lcom/viber/voip/messages/conversation/a/a/b/a/b;

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/messages/conversation/a/a/a/b;->a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 364
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->n:Lcom/viber/voip/messages/extras/map/BalloonLayout;

    if-ne p1, v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->t:Lcom/viber/voip/messages/conversation/a/b/b;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->v:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/conversation/a/b/b;->d(Lcom/viber/voip/messages/conversation/a/a/a;)V

    .line 379
    :goto_0
    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->v:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->n()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->l:Lcom/viber/voip/messages/adapters/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->l:Lcom/viber/voip/messages/adapters/c;

    invoke-interface {v0}, Lcom/viber/voip/messages/adapters/c;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->l:Lcom/viber/voip/messages/adapters/c;

    invoke-interface {v0, p1}, Lcom/viber/voip/messages/adapters/c;->a(Landroid/view/View;)V

    .line 372
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 373
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->u:Lcom/viber/voip/messages/conversation/a/b/d;

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->a:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->v:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v2}, Lcom/viber/voip/messages/conversation/a/a/a;->p()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 375
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->u:Lcom/viber/voip/messages/conversation/a/b/d;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->v:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v2, v3}, Lcom/viber/voip/messages/conversation/a/b/d;->a(Lcom/viber/voip/messages/conversation/a/a/a;)V

    .line 377
    :cond_2
    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->a:J

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 384
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->r:Lcom/viber/voip/messages/conversation/a/s;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/b;->r:Lcom/viber/voip/messages/conversation/a/s;

    invoke-interface {v0, p2}, Lcom/viber/voip/messages/conversation/a/s;->a(Landroid/view/MotionEvent;)V

    .line 388
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
