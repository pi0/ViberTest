.class public Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/viber/voip/widget/ah;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/viber/voip/util/b/w;

.field private e:Lcom/viber/voip/util/b/x;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Landroid/net/Uri;

.field private i:J

.field private j:J

.field private k:Z

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->a(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->a(Landroid/content/Context;)V

    .line 48
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->b:Lcom/viber/voip/widget/ah;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/ah;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 112
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->setVisibility(I)V

    .line 113
    return-void
.end method

.method protected a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 56
    invoke-static {p1}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->d:Lcom/viber/voip/util/b/w;

    .line 57
    invoke-static {p1}, Lcom/viber/voip/util/b/x;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->e:Lcom/viber/voip/util/b/x;

    .line 58
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03010c

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 59
    const v0, 0x7f0700af

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->a:Landroid/view/View;

    .line 60
    const v0, 0x7f070070

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/widget/ah;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->b:Lcom/viber/voip/widget/ah;

    .line 61
    const v0, 0x7f0700d8

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->c:Landroid/widget/TextView;

    .line 62
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;JJ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 74
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->f:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->h:Landroid/net/Uri;

    .line 76
    iput-boolean p3, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->k:Z

    .line 77
    iput-wide p5, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->i:J

    .line 78
    iput-object p4, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->g:Ljava/lang/String;

    .line 79
    iput-wide p7, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->j:J

    .line 80
    if-eqz p3, :cond_1

    .line 81
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c04a1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :goto_0
    invoke-virtual {p0, v4}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->d:Lcom/viber/voip/util/b/w;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->b:Lcom/viber/voip/widget/ah;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->e:Lcom/viber/voip/util/b/x;

    invoke-virtual {v0, p2, v1, v2}, Lcom/viber/voip/util/b/w;->a(Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;)V

    .line 91
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c04a2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getImage()Lcom/viber/voip/widget/ah;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->b:Lcom/viber/voip/widget/ah;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->k:Z

    if-eqz v0, :cond_1

    .line 97
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.viber.voip.action.YOU_DIALOG"

    :goto_0
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 107
    :goto_1
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 108
    return-void

    .line 97
    :cond_0
    const-string/jumbo v0, "com.viber.voip.action.YOU"

    goto :goto_0

    .line 98
    :cond_1
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->l:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 99
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->h:Landroid/net/Uri;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/viber/voip/user/PublicGroupParticipantDetailsActivity;->buildIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    .line 100
    :cond_2
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 101
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->h:Landroid/net/Uri;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/util/gn;->a(ZLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    .line 104
    :cond_3
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    iget-wide v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->i:J

    iget-wide v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->j:J

    iget-object v5, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->f:Ljava/lang/String;

    const-string/jumbo v6, ""

    iget-object v7, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->h:Landroid/net/Uri;

    iget-object v8, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->g:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lcom/viber/voip/util/gn;->a(ZJJLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1
.end method

.method public setDefaultOnClickListener(I)V
    .locals 1
    .parameter

    .prologue
    .line 69
    iput p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->l:I

    .line 70
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->b:Lcom/viber/voip/widget/ah;

    invoke-virtual {v0, p1}, Lcom/viber/voip/widget/ah;->setImageResource(I)V

    .line 117
    return-void
.end method

.method public setImageSize(I)V
    .locals 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->b:Lcom/viber/voip/widget/ah;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/ah;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->invalidate()V

    .line 53
    return-void
.end method
