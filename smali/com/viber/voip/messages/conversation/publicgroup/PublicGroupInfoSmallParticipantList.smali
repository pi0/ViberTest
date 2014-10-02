.class public Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:[Landroid/view/ViewGroup;

.field private b:[[Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;->c:I

    .line 25
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;->a(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;->c:I

    .line 29
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;->a(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 33
    invoke-virtual {p0, v8}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;->setOrientation(I)V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0018

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;->d:I

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0019

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;->e:I

    .line 37
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;->d:I

    iget v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;->e:I

    filled-new-array {v0, v2}, [I

    move-result-object v0

    const-class v2, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;->b:[[Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;

    .line 38
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;->d:I

    new-array v0, v0, [Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;->a:[Landroid/view/ViewGroup;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0200

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move v0, v1

    .line 42
    :goto_0
    iget v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;->d:I

    if-ge v0, v2, :cond_3

    .line 43
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 45
    if-lez v0, :cond_0

    .line 46
    invoke-virtual {v4, v1, v3, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 48
    :cond_0
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;->a:[Landroid/view/ViewGroup;

    aput-object v4, v2, v0

    .line 49
    invoke-virtual {p0, v4}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;->addView(Landroid/view/View;)V

    move v2, v1

    .line 51
    :goto_1
    iget v5, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;->e:I

    if-ge v2, v5, :cond_2

    .line 52
    if-lez v2, :cond_1

    .line 53
    new-instance v5, Landroid/view/View;

    invoke-direct {v5, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f80

    invoke-direct {v6, v8, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 55
    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    :cond_1
    new-instance v5, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;

    invoke-direct {v5, p1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;-><init>(Landroid/content/Context;)V

    .line 58
    iget-object v6, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;->b:[[Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;

    aget-object v6, v6, v0

    aput-object v5, v6, v2

    .line 59
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 51
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 42
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_3
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 69
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;->d:I

    if-ge v0, v2, :cond_1

    .line 70
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;->a:[Landroid/view/ViewGroup;

    aget-object v2, v2, v0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    move v2, v1

    .line 71
    :goto_1
    iget v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;->e:I

    if-ge v2, v3, :cond_0

    .line 72
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;->b:[[Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->a()V

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 69
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_1
    iput v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;->c:I

    .line 76
    return-void
.end method

.method public a(Lcom/viber/voip/messages/conversation/ap;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/ap;->getCount()I

    move-result v1

    .line 80
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 81
    invoke-virtual {p1, v0}, Lcom/viber/voip/messages/conversation/ap;->e(I)Lcom/viber/voip/messages/conversation/ar;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;->a(Lcom/viber/voip/messages/conversation/ar;I)V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/voip/messages/conversation/ar;I)V
    .locals 11
    .parameter
    .parameter

    .prologue
    .line 86
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;->c:I

    iget v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;->e:I

    div-int v9, v0, v1

    .line 87
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;->c:I

    iget v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;->e:I

    rem-int v10, v0, v1

    .line 88
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;->a:[Landroid/view/ViewGroup;

    aget-object v0, v0, v9

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 89
    invoke-static {}, Lcom/viber/voip/messages/a/b;->d()Lcom/viber/voip/messages/a/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/ar;->b()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/messages/a/a;->a(JZ)Landroid/net/Uri;

    move-result-object v2

    .line 90
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;->b:[[Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;

    aget-object v0, v0, v9

    aget-object v0, v0, v10

    invoke-virtual {p1, p2}, Lcom/viber/voip/messages/conversation/ar;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/ar;->o()Z

    move-result v3

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/ar;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/ar;->f()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/ar;->g()J

    move-result-wide v7

    invoke-virtual/range {v0 .. v8}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->a(Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;JJ)V

    .line 92
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;->b:[[Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;

    aget-object v0, v0, v9

    aget-object v0, v0, v10

    invoke-virtual {v0, p2}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->setDefaultOnClickListener(I)V

    .line 93
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;->c:I

    .line 94
    return-void
.end method

.method public getMaxCount()I
    .locals 2

    .prologue
    .line 65
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;->d:I

    iget v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;->e:I

    mul-int/2addr v0, v1

    return v0
.end method
