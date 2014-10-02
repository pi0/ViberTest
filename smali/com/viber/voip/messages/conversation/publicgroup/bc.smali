.class public Lcom/viber/voip/messages/conversation/publicgroup/bc;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:[Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    iput p2, p0, Lcom/viber/voip/messages/conversation/publicgroup/bc;->a:I

    .line 22
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/bc;->setOrientation(I)V

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0200

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bc;->b:I

    .line 25
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bc;->a:I

    new-array v0, v0, [Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bc;->c:[Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;

    move v0, v1

    .line 26
    :goto_0
    iget v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/bc;->a:I

    if-ge v0, v2, :cond_1

    .line 27
    new-instance v2, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;

    invoke-direct {v2, p1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;-><init>(Landroid/content/Context;)V

    .line 28
    if-lez v0, :cond_0

    .line 29
    iget v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/bc;->b:I

    invoke-virtual {v2, v1, v3, v1, v1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->setPadding(IIII)V

    .line 31
    :cond_0
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/bc;->c:[Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;

    aput-object v2, v3, v0

    .line 32
    invoke-virtual {p0, v2}, Lcom/viber/voip/messages/conversation/publicgroup/bc;->addView(Landroid/view/View;)V

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method


# virtual methods
.method public a(ILcom/viber/voip/messages/conversation/ap;I)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bc;->a:I

    mul-int v1, p1, v0

    .line 38
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bc;->a:I

    add-int/2addr v0, v1

    invoke-virtual {p2}, Lcom/viber/voip/messages/conversation/ap;->getCount()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 41
    const/4 v0, 0x0

    move v9, v0

    move v10, v1

    :goto_0
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bc;->a:I

    if-ge v9, v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bc;->c:[Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;

    aget-object v0, v0, v9

    .line 43
    if-ge v10, v11, :cond_0

    .line 44
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->setVisibility(I)V

    .line 45
    invoke-virtual {p2, v10}, Lcom/viber/voip/messages/conversation/ap;->e(I)Lcom/viber/voip/messages/conversation/ar;

    move-result-object v7

    .line 46
    invoke-virtual {v7, p3}, Lcom/viber/voip/messages/conversation/ar;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {}, Lcom/viber/voip/messages/a/b;->d()Lcom/viber/voip/messages/a/a;

    move-result-object v2

    invoke-virtual {v7}, Lcom/viber/voip/messages/conversation/ar;->b()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Lcom/viber/voip/messages/a/a;->a(JZ)Landroid/net/Uri;

    move-result-object v2

    .line 48
    invoke-virtual {v7}, Lcom/viber/voip/messages/conversation/ar;->o()Z

    move-result v3

    .line 49
    invoke-virtual {v7}, Lcom/viber/voip/messages/conversation/ar;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Lcom/viber/voip/messages/conversation/ar;->f()J

    move-result-wide v5

    invoke-virtual {v7}, Lcom/viber/voip/messages/conversation/ar;->g()J

    move-result-wide v7

    invoke-virtual/range {v0 .. v8}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->a(Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;JJ)V

    .line 50
    invoke-virtual {v0, p3}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->setDefaultOnClickListener(I)V

    .line 54
    :goto_1
    add-int/lit8 v1, v10, 0x1

    .line 41
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    move v10, v1

    goto :goto_0

    .line 52
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->setVisibility(I)V

    goto :goto_1

    .line 56
    :cond_1
    return-void
.end method
