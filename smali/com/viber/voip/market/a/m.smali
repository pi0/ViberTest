.class public Lcom/viber/voip/market/a/m;
.super Lcom/viber/voip/process/c;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/viber/voip/market/a/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/market/a/m;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/viber/voip/process/c;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/market/MarketPublicGroupInfo;)V
    .locals 3
    .parameter

    .prologue
    .line 23
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 24
    const-string/jumbo v1, "group_info"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 25
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    const-class v2, Lcom/viber/voip/market/a/m;

    invoke-super {p0, v1, v2, v0}, Lcom/viber/voip/process/c;->execute(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 26
    return-void
.end method

.method public doInTargetProcess(Landroid/os/Bundle;Lcom/viber/voip/process/b;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 30
    const-string/jumbo v0, "group_info"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/viber/voip/market/MarketPublicGroupInfo;

    .line 33
    new-instance v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;

    iget-wide v1, v8, Lcom/viber/voip/market/MarketPublicGroupInfo;->a:J

    const-string/jumbo v3, ""

    iget-object v5, v8, Lcom/viber/voip/market/MarketPublicGroupInfo;->d:Ljava/lang/String;

    iget v6, v8, Lcom/viber/voip/market/MarketPublicGroupInfo;->c:I

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;-><init>(JLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;II)V

    .line 34
    invoke-static {v0, v7}, Lcom/viber/voip/messages/j;->a(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;Z)Landroid/content/Intent;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x1000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Viewing group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v8, Lcom/viber/voip/market/MarketPublicGroupInfo;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/market/a/m;->a(Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/ViberApplication;->startActivity(Landroid/content/Intent;)V

    .line 39
    invoke-interface {p2, v4}, Lcom/viber/voip/process/b;->a(Landroid/os/Bundle;)V

    .line 40
    return-void
.end method

.method public processResult(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    return-void
.end method
