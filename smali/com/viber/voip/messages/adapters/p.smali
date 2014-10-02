.class public Lcom/viber/voip/messages/adapters/p;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Lcom/viber/voip/messages/conversation/publicgroup/ar;

.field private c:Lcom/viber/voip/util/b/w;

.field private d:Lcom/viber/voip/messages/adapters/a/b/b;

.field private e:Lcom/viber/voip/messages/ui/bb;

.field private f:Lcom/viber/voip/messages/h;

.field private g:J

.field private h:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;Lcom/viber/voip/messages/conversation/publicgroup/ar;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    iput-object p3, p0, Lcom/viber/voip/messages/adapters/p;->b:Lcom/viber/voip/messages/conversation/publicgroup/ar;

    .line 40
    new-instance v0, Lcom/viber/voip/messages/h;

    invoke-direct {v0, p1}, Lcom/viber/voip/messages/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/p;->f:Lcom/viber/voip/messages/h;

    .line 41
    new-instance v0, Lcom/viber/voip/messages/ui/bb;

    invoke-direct {v0, p1}, Lcom/viber/voip/messages/ui/bb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/p;->e:Lcom/viber/voip/messages/ui/bb;

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/p;->a:Landroid/view/LayoutInflater;

    .line 43
    invoke-static {p1}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/p;->c:Lcom/viber/voip/util/b/w;

    .line 44
    new-instance v0, Lcom/viber/voip/messages/adapters/a/b/b;

    invoke-direct {v0, p1, p2}, Lcom/viber/voip/messages/adapters/a/b/b;-><init>(Landroid/content/Context;Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;)V

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/p;->d:Lcom/viber/voip/messages/adapters/a/b/b;

    .line 45
    iput-object p2, p0, Lcom/viber/voip/messages/adapters/p;->h:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    .line 46
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 6

    .prologue
    .line 82
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/p;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030022

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 83
    new-instance v0, Lcom/viber/voip/messages/adapters/a/a/a;

    iget-object v2, p0, Lcom/viber/voip/messages/adapters/p;->d:Lcom/viber/voip/messages/adapters/a/b/b;

    iget-object v3, p0, Lcom/viber/voip/messages/adapters/p;->f:Lcom/viber/voip/messages/h;

    iget-object v4, p0, Lcom/viber/voip/messages/adapters/p;->e:Lcom/viber/voip/messages/ui/bb;

    iget-object v5, p0, Lcom/viber/voip/messages/adapters/p;->c:Lcom/viber/voip/util/b/w;

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/adapters/a/a/a;-><init>(Landroid/view/View;Lcom/viber/voip/messages/adapters/a/b/a;Lcom/viber/voip/messages/h;Lcom/viber/voip/messages/ui/bb;Lcom/viber/voip/util/b/w;)V

    .line 84
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    return-object v1
.end method

.method public a(I)Lcom/viber/voip/messages/adapters/a/b;
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 55
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/p;->b:Lcom/viber/voip/messages/conversation/publicgroup/ar;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/publicgroup/ar;->e(I)Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;

    .line 56
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ConversationExtraLoaderEntity can\'t be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    new-instance v4, Lcom/viber/voip/messages/adapters/b;

    iget-object v1, p0, Lcom/viber/voip/messages/adapters/p;->h:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/viber/voip/messages/adapters/p;->h:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->a()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->a()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/viber/voip/messages/adapters/p;->g:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    :goto_1
    invoke-direct {v4, v0, v1, v2}, Lcom/viber/voip/messages/adapters/b;-><init>(Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;ZZ)V

    return-object v4

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method public a(J)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-wide p1, p0, Lcom/viber/voip/messages/adapters/p;->g:J

    .line 79
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/p;->b:Lcom/viber/voip/messages/conversation/publicgroup/ar;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/ar;->getCount()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/adapters/p;->a(I)Lcom/viber/voip/messages/adapters/a/b;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/p;->b:Lcom/viber/voip/messages/conversation/publicgroup/ar;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/publicgroup/ar;->a_(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/adapters/p;->a(I)Lcom/viber/voip/messages/adapters/a/b;

    move-result-object v1

    .line 68
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/adapters/p;->a()Landroid/view/View;

    move-result-object p2

    .line 72
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/adapters/a/a/a;

    .line 73
    iget-object v2, p0, Lcom/viber/voip/messages/adapters/p;->d:Lcom/viber/voip/messages/adapters/a/b/b;

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/adapters/a/a/a;->a(Lcom/viber/voip/messages/adapters/a/a;Lcom/viber/voip/messages/adapters/a/b/a;)V

    .line 74
    return-object p2
.end method
