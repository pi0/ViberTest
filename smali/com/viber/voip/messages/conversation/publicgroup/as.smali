.class public Lcom/viber/voip/messages/conversation/publicgroup/as;
.super Lcom/viber/voip/messages/conversation/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/voip/messages/conversation/i",
        "<",
        "Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;Lcom/viber/provider/e;J)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    sget-object v2, Lcom/viber/provider/messages/b/c;->a:Landroid/net/Uri;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/conversation/i;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;Lcom/viber/provider/e;)V

    .line 18
    sget-object v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->m:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/as;->a([Ljava/lang/String;)V

    .line 19
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/as;->b([Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/database/Cursor;)Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;
    .locals 1
    .parameter

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/publicgroup/as;->b(Landroid/database/Cursor;)Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;

    move-result-object v0

    return-object v0
.end method

.method protected b(Landroid/database/Cursor;)Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;
    .locals 1
    .parameter

    .prologue
    .line 24
    new-instance v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;

    invoke-direct {v0, p1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method

.method protected m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, "(conversations.group_id=?)"

    return-object v0
.end method
