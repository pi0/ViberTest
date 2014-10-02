.class public Lcom/viber/voip/market/a/d;
.super Lcom/viber/voip/process/c;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/viber/voip/market/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/viber/voip/market/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/market/a/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/viber/voip/process/c;-><init>()V

    return-void
.end method

.method private a(JI)Landroid/os/Bundle;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 89
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 90
    const-string/jumbo v1, "group_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 91
    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/market/a/d;JI)Landroid/os/Bundle;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/market/a/d;->a(JI)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/viber/voip/market/MarketPublicGroupInfo;Lcom/viber/voip/process/b;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Following group, info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/market/a/d;->b(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/market/a/e;

    invoke-direct {v1, p0, p2, p1}, Lcom/viber/voip/market/a/e;-><init>(Lcom/viber/voip/market/a/d;Lcom/viber/voip/process/b;Lcom/viber/voip/market/MarketPublicGroupInfo;)V

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->registerDelegate(Lcom/viber/jni/PhoneControllerDelegate;)V

    .line 68
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->generateSequence()I

    move-result v1

    .line 69
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->d()Lcom/viber/voip/messages/controller/GroupController;

    move-result-object v0

    iget-wide v2, p1, Lcom/viber/voip/market/MarketPublicGroupInfo;->a:J

    iget v4, p1, Lcom/viber/voip/market/MarketPublicGroupInfo;->c:I

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-wide/16 v7, 0x0

    const-string/jumbo v9, ""

    invoke-interface/range {v0 .. v9}, Lcom/viber/voip/messages/controller/GroupController;->a(IJILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 70
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, Lcom/viber/voip/market/a/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/viber/voip/market/MarketPublicGroupInfo;Lcom/viber/voip/process/b;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v0

    iget-wide v1, p1, Lcom/viber/voip/market/MarketPublicGroupInfo;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/controller/c/as;->a(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unfollowing group, info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", conversation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/market/a/d;->b(Ljava/lang/String;)V

    .line 75
    if-nez v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 76
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 77
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v0, Lcom/viber/voip/messages/controller/cr;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/viber/voip/messages/controller/cr;-><init>(Landroid/content/Context;)V

    .line 80
    new-instance v2, Lcom/viber/voip/market/a/f;

    invoke-direct {v2, p0, p2, p1}, Lcom/viber/voip/market/a/f;-><init>(Lcom/viber/voip/market/a/d;Lcom/viber/voip/process/b;Lcom/viber/voip/market/MarketPublicGroupInfo;)V

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/controller/cr;->a(Ljava/util/Set;Lcom/viber/voip/messages/controller/aa;)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/market/MarketPublicGroupInfo;ZLcom/viber/voip/market/r;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p3, p0, Lcom/viber/voip/market/a/d;->b:Lcom/viber/voip/market/r;

    .line 40
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    const-string/jumbo v1, "group_info"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 42
    const-string/jumbo v1, "follow"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    const-class v2, Lcom/viber/voip/market/a/d;

    invoke-virtual {p0, v1, v2, v0}, Lcom/viber/voip/market/a/d;->execute(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 44
    return-void
.end method

.method public doInTargetProcess(Landroid/os/Bundle;Lcom/viber/voip/process/b;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 48
    const-string/jumbo v0, "group_info"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/market/MarketPublicGroupInfo;

    .line 49
    const-string/jumbo v1, "follow"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 50
    if-eqz v1, :cond_0

    .line 51
    invoke-direct {p0, v0, p2}, Lcom/viber/voip/market/a/d;->a(Lcom/viber/voip/market/MarketPublicGroupInfo;Lcom/viber/voip/process/b;)V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/viber/voip/market/a/d;->b(Lcom/viber/voip/market/MarketPublicGroupInfo;Lcom/viber/voip/process/b;)V

    goto :goto_0
.end method

.method public processResult(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 97
    const-string/jumbo v0, "group_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 98
    const-string/jumbo v2, "status"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 99
    iget-object v3, p0, Lcom/viber/voip/market/a/d;->b:Lcom/viber/voip/market/r;

    invoke-interface {v3, v0, v1, v2}, Lcom/viber/voip/market/r;->a(JI)V

    .line 100
    return-void
.end method
