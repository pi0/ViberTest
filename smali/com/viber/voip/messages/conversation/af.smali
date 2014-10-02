.class public Lcom/viber/voip/messages/conversation/af;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/viber/voip/messages/controller/GroupController$GroupMember;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/controller/GroupController$GroupMember;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/controller/GroupController$GroupMember;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 26
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/af;->a:Landroid/content/Context;

    .line 27
    iput-object p3, p0, Lcom/viber/voip/messages/conversation/af;->b:Ljava/util/List;

    .line 28
    return-void
.end method

.method private d()Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;
    .locals 3

    .prologue
    .line 51
    new-instance v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/af;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/af;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0210

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->setImageSize(I)V

    .line 53
    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/viber/voip/messages/controller/GroupController$GroupMember;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/af;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/af;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/af;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    .line 69
    iget-object v0, v0, Lcom/viber/voip/messages/controller/GroupController$GroupMember;->a:Lcom/viber/jni/GroupUserInfo;

    iget-object v0, v0, Lcom/viber/jni/GroupUserInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_0
    return-object v1
.end method

.method public b()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/af;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/af;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/af;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    iget-object v0, v0, Lcom/viber/voip/messages/controller/GroupController$GroupMember;->a:Lcom/viber/jni/GroupUserInfo;

    iget-object v0, v0, Lcom/viber/jni/GroupUserInfo;->phoneNumber:Ljava/lang/String;

    aput-object v0, v2, v1

    .line 76
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 79
    :cond_0
    return-object v2
.end method

.method public c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/controller/GroupController$GroupMember;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/af;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    .line 85
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    :cond_0
    return-object v1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/af;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/af;->a(I)Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    .line 33
    if-nez p2, :cond_0

    .line 34
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/af;->d()Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;

    move-result-object v0

    .line 39
    :goto_0
    if-nez p1, :cond_1

    .line 40
    invoke-static {}, Lcom/viber/voip/user/UserData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/user/UserData;->getImage()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    const-string/jumbo v4, ""

    move-wide v7, v5

    invoke-virtual/range {v0 .. v8}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->a(Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;JJ)V

    .line 47
    :goto_1
    return-object v0

    .line 36
    :cond_0
    check-cast p2, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;

    move-object v0, p2

    goto :goto_0

    .line 42
    :cond_1
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/conversation/af;->a(I)Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    move-result-object v4

    .line 43
    iget-object v1, v4, Lcom/viber/voip/messages/controller/GroupController$GroupMember;->a:Lcom/viber/jni/GroupUserInfo;

    iget-object v1, v1, Lcom/viber/jni/GroupUserInfo;->clientName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v4, Lcom/viber/voip/messages/controller/GroupController$GroupMember;->a:Lcom/viber/jni/GroupUserInfo;

    iget-object v1, v1, Lcom/viber/jni/GroupUserInfo;->clientName:Ljava/lang/String;

    .line 44
    :goto_2
    iget-object v2, v4, Lcom/viber/voip/messages/controller/GroupController$GroupMember;->c:Landroid/net/Uri;

    .line 45
    const/4 v3, 0x0

    iget-object v4, v4, Lcom/viber/voip/messages/controller/GroupController$GroupMember;->a:Lcom/viber/jni/GroupUserInfo;

    iget-object v4, v4, Lcom/viber/jni/GroupUserInfo;->phoneNumber:Ljava/lang/String;

    move-wide v7, v5

    invoke-virtual/range {v0 .. v8}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->a(Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;JJ)V

    goto :goto_1

    .line 43
    :cond_2
    iget-object v1, v4, Lcom/viber/voip/messages/controller/GroupController$GroupMember;->a:Lcom/viber/jni/GroupUserInfo;

    iget-object v1, v1, Lcom/viber/jni/GroupUserInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_2
.end method
