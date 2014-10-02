.class public Lcom/viber/voip/widget/FollowPublicGroupLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/viber/voip/messages/adapters/c;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/viber/voip/messages/conversation/a/a/a;

.field private i:Lcom/viber/voip/util/b/w;

.field private j:Lcom/viber/voip/util/b/x;

.field private k:Lcom/viber/voip/widget/d;

.field private l:Lcom/viber/voip/messages/conversation/a/b/b;

.field private m:I

.field private n:Lcom/viber/voip/messages/controller/di;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/viber/voip/widget/FollowPublicGroupLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 113
    new-instance v0, Lcom/viber/voip/widget/c;

    invoke-direct {v0, p0}, Lcom/viber/voip/widget/c;-><init>(Lcom/viber/voip/widget/FollowPublicGroupLayout;)V

    iput-object v0, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->n:Lcom/viber/voip/messages/controller/di;

    .line 74
    invoke-direct {p0, p1}, Lcom/viber/voip/widget/FollowPublicGroupLayout;->a(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    new-instance v0, Lcom/viber/voip/widget/c;

    invoke-direct {v0, p0}, Lcom/viber/voip/widget/c;-><init>(Lcom/viber/voip/widget/FollowPublicGroupLayout;)V

    iput-object v0, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->n:Lcom/viber/voip/messages/controller/di;

    .line 69
    invoke-direct {p0, p1}, Lcom/viber/voip/widget/FollowPublicGroupLayout;->a(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    new-instance v0, Lcom/viber/voip/widget/c;

    invoke-direct {v0, p0}, Lcom/viber/voip/widget/c;-><init>(Lcom/viber/voip/widget/FollowPublicGroupLayout;)V

    iput-object v0, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->n:Lcom/viber/voip/messages/controller/di;

    .line 64
    invoke-direct {p0, p1}, Lcom/viber/voip/widget/FollowPublicGroupLayout;->a(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/widget/FollowPublicGroupLayout;)I
    .locals 1
    .parameter

    .prologue
    .line 37
    iget v0, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->m:I

    return v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f02034a

    .line 96
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300dc

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->b:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->b:Landroid/view/View;

    const v1, 0x7f07030d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->c:Landroid/widget/TextView;

    .line 98
    iget-object v0, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->b:Landroid/view/View;

    const v1, 0x7f07030f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->e:Landroid/widget/ImageView;

    .line 99
    iget-object v0, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->b:Landroid/view/View;

    const v1, 0x7f07030e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->d:Landroid/widget/TextView;

    .line 100
    iget-object v0, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->b:Landroid/view/View;

    const v1, 0x7f070310

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->f:Landroid/widget/Button;

    .line 101
    iget-object v0, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->b:Landroid/view/View;

    const v1, 0x7f070311

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->g:Landroid/widget/TextView;

    .line 104
    invoke-static {p1}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->i:Lcom/viber/voip/util/b/w;

    .line 105
    new-instance v0, Lcom/viber/voip/util/b/z;

    invoke-direct {v0}, Lcom/viber/voip/util/b/z;-><init>()V

    invoke-virtual {v0, v2, p1}, Lcom/viber/voip/util/b/z;->a(ILandroid/content/Context;)Lcom/viber/voip/util/b/z;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lcom/viber/voip/util/b/z;->b(ILandroid/content/Context;)Lcom/viber/voip/util/b/z;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/util/b/b/f;

    invoke-direct {v1, p1}, Lcom/viber/voip/util/b/b/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/z;->a(Lcom/viber/voip/util/b/l;)Lcom/viber/voip/util/b/z;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/z;->b(Z)Lcom/viber/voip/util/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/util/b/z;->b()Lcom/viber/voip/util/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->j:Lcom/viber/voip/util/b/x;

    .line 111
    return-void
.end method

.method private a()Z
    .locals 4

    .prologue
    const/high16 v3, 0x1000

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 164
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/util/ft;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 165
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.CONNECTION_PROBLEM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 167
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/viber/voip/ViberApplication;->startActivity(Landroid/content/Intent;)V

    .line 175
    :goto_0
    return v0

    .line 169
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/jni/PhoneControllerWrapper;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 170
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.NO_SERVICE_DIALOG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 172
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/viber/voip/ViberApplication;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 175
    goto :goto_0
.end method

.method static synthetic b(Lcom/viber/voip/widget/FollowPublicGroupLayout;)Lcom/viber/voip/widget/d;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->k:Lcom/viber/voip/widget/d;

    return-object v0
.end method

.method static synthetic c(Lcom/viber/voip/widget/FollowPublicGroupLayout;)Lcom/viber/voip/messages/conversation/a/a/a;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->h:Lcom/viber/voip/messages/conversation/a/a/a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->h:Lcom/viber/voip/messages/conversation/a/a/a;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->l:Lcom/viber/voip/messages/conversation/a/b/b;

    iget-object v1, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->h:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/conversation/a/b/b;->c(Lcom/viber/voip/messages/conversation/a/a/a;)Z

    .line 161
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/voip/messages/conversation/a/a/a;)V
    .locals 7
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->h:Lcom/viber/voip/messages/conversation/a/a/a;

    .line 149
    iget-object v0, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->c:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/viber/voip/widget/FollowPublicGroupLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0672

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->h()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/viber/voip/util/gj;->a(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->h:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v1}, Lcom/viber/voip/messages/conversation/a/a/a;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->i:Lcom/viber/voip/util/b/w;

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->I()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/util/hv;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->e:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->j:Lcom/viber/voip/util/b/x;

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/util/b/w;->a(Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;)V

    .line 153
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter

    .prologue
    .line 137
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-direct {p0}, Lcom/viber/voip/widget/FollowPublicGroupLayout;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->m:I

    .line 139
    invoke-static {}, Lcom/viber/voip/messages/controller/c/e;->a()Lcom/viber/voip/messages/controller/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->n:Lcom/viber/voip/messages/controller/di;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/controller/c/e;->a(Lcom/viber/voip/messages/controller/dc;)V

    .line 140
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->d()Lcom/viber/voip/messages/controller/GroupController;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->m:I

    iget-object v2, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->h:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v2}, Lcom/viber/voip/messages/conversation/a/a/a;->ag()J

    move-result-wide v2

    iget-object v4, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->h:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v4}, Lcom/viber/voip/messages/conversation/a/a/a;->M()I

    move-result v4

    iget-object v5, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->h:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v5}, Lcom/viber/voip/messages/conversation/a/a/a;->E()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->h:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v6}, Lcom/viber/voip/messages/conversation/a/a/a;->y()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->h:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v7}, Lcom/viber/voip/messages/conversation/a/a/a;->ah()J

    move-result-wide v7

    iget-object v9, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->h:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v9}, Lcom/viber/voip/messages/conversation/a/a/a;->Y()Ljava/lang/String;

    move-result-object v9

    invoke-interface/range {v0 .. v9}, Lcom/viber/voip/messages/controller/GroupController;->a(IJILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->m:I

    .line 87
    invoke-static {}, Lcom/viber/voip/messages/controller/c/e;->a()Lcom/viber/voip/messages/controller/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->n:Lcom/viber/voip/messages/controller/di;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/controller/c/e;->b(Lcom/viber/voip/messages/controller/dc;)V

    .line 88
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 89
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->m:I

    .line 80
    invoke-static {}, Lcom/viber/voip/messages/controller/c/e;->a()Lcom/viber/voip/messages/controller/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->n:Lcom/viber/voip/messages/controller/di;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/controller/c/e;->b(Lcom/viber/voip/messages/controller/dc;)V

    .line 81
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 82
    return-void
.end method

.method public setJoinPGListener(Lcom/viber/voip/widget/d;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->k:Lcom/viber/voip/widget/d;

    .line 93
    return-void
.end method

.method public setMessageBallonClickListener(Lcom/viber/voip/messages/conversation/a/b/b;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/viber/voip/widget/FollowPublicGroupLayout;->l:Lcom/viber/voip/messages/conversation/a/b/b;

    .line 180
    return-void
.end method
