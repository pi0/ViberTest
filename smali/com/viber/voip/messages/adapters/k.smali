.class public Lcom/viber/voip/messages/adapters/k;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Lcom/viber/voip/messages/conversation/i;

.field private c:Landroid/content/Context;

.field private d:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

.field private e:Lcom/viber/voip/util/b/w;

.field private f:Lcom/viber/voip/messages/adapters/a/b/a;

.field private g:Lcom/viber/voip/messages/ui/bb;

.field private h:Lcom/viber/voip/messages/h;

.field private i:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/viber/voip/messages/conversation/i;Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/viber/voip/messages/adapters/k;->c:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/viber/voip/messages/adapters/k;->b:Lcom/viber/voip/messages/conversation/i;

    .line 46
    iput-object p3, p0, Lcom/viber/voip/messages/adapters/k;->d:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    .line 48
    new-instance v0, Lcom/viber/voip/messages/h;

    iget-object v1, p0, Lcom/viber/voip/messages/adapters/k;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/viber/voip/messages/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/k;->h:Lcom/viber/voip/messages/h;

    .line 49
    new-instance v0, Lcom/viber/voip/messages/ui/bb;

    iget-object v1, p0, Lcom/viber/voip/messages/adapters/k;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/viber/voip/messages/ui/bb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/k;->g:Lcom/viber/voip/messages/ui/bb;

    .line 50
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/k;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/k;->a:Landroid/view/LayoutInflater;

    .line 51
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/k;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/k;->e:Lcom/viber/voip/util/b/w;

    .line 52
    new-instance v0, Lcom/viber/voip/messages/adapters/a/b/a;

    iget-object v1, p0, Lcom/viber/voip/messages/adapters/k;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/viber/voip/messages/adapters/k;->d:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    invoke-direct {v0, v1, v2, p4}, Lcom/viber/voip/messages/adapters/a/b/a;-><init>(Landroid/content/Context;Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;Z)V

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/k;->f:Lcom/viber/voip/messages/adapters/a/b/a;

    .line 53
    return-void
.end method

.method private a(Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;)I
    .locals 1
    .parameter

    .prologue
    .line 112
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x1

    .line 115
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)Lcom/viber/voip/messages/adapters/a/a;
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 62
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/k;->b:Lcom/viber/voip/messages/conversation/i;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/i;->e(I)Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;

    move-result-object v4

    .line 63
    if-eqz v4, :cond_2

    new-instance v3, Lcom/viber/voip/messages/adapters/a;

    iget-object v0, p0, Lcom/viber/voip/messages/adapters/k;->d:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/adapters/k;->d:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->a()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->a()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/viber/voip/messages/adapters/k;->i:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    :goto_1
    invoke-direct {v3, v4, v0, v1}, Lcom/viber/voip/messages/adapters/a;-><init>(Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;ZZ)V

    move-object v0, v3

    :goto_2
    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public a(J)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-wide p1, p0, Lcom/viber/voip/messages/adapters/k;->i:J

    .line 92
    return-void
.end method

.method public b(I)Landroid/view/View;
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 95
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/adapters/k;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030021

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 96
    :goto_0
    new-instance v0, Lcom/viber/voip/messages/adapters/a/a/b;

    iget-object v2, p0, Lcom/viber/voip/messages/adapters/k;->f:Lcom/viber/voip/messages/adapters/a/b/a;

    iget-object v3, p0, Lcom/viber/voip/messages/adapters/k;->h:Lcom/viber/voip/messages/h;

    iget-object v4, p0, Lcom/viber/voip/messages/adapters/k;->g:Lcom/viber/voip/messages/ui/bb;

    iget-object v5, p0, Lcom/viber/voip/messages/adapters/k;->e:Lcom/viber/voip/util/b/w;

    if-ne p1, v6, :cond_1

    :goto_1
    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/messages/adapters/a/a/b;-><init>(Landroid/view/View;Lcom/viber/voip/messages/adapters/a/b/a;Lcom/viber/voip/messages/h;Lcom/viber/voip/messages/ui/bb;Lcom/viber/voip/util/b/w;Z)V

    .line 97
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 98
    return-object v1

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/k;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030020

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 96
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/k;->b:Lcom/viber/voip/messages/conversation/i;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/i;->getCount()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/adapters/k;->a(I)Lcom/viber/voip/messages/adapters/a/a;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/k;->b:Lcom/viber/voip/messages/conversation/i;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/i;->a_(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/k;->b:Lcom/viber/voip/messages/conversation/i;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/i;->e(I)Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/adapters/k;->a(Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/adapters/k;->a(I)Lcom/viber/voip/messages/adapters/a/a;

    move-result-object v1

    .line 77
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 78
    :cond_0
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/adapters/k;->getItemViewType(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/adapters/k;->b(I)Landroid/view/View;

    move-result-object p2

    .line 81
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/adapters/a/a/b;

    .line 83
    if-eqz v1, :cond_2

    .line 84
    iget-object v2, p0, Lcom/viber/voip/messages/adapters/k;->f:Lcom/viber/voip/messages/adapters/a/b/a;

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/adapters/a/a/b;->a(Lcom/viber/voip/messages/adapters/a/a;Lcom/viber/voip/messages/adapters/a/b/a;)V

    .line 87
    :cond_2
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x2

    return v0
.end method
