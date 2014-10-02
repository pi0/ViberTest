.class public Lcom/viber/voip/messages/conversation/ah;
.super Lcom/viber/voip/messages/conversation/ai;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/voip/messages/conversation/ai",
        "<",
        "Lcom/viber/voip/messages/conversation/an;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;Lcom/viber/provider/e;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    const/4 v2, 0x4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/conversation/ai;-><init>(Landroid/content/Context;ILandroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;Lcom/viber/provider/e;)V

    .line 23
    const-string/jumbo v0, "messages.conversation_id=? AND deleted=0 AND ( messages.extra_mime IN ( \'image\', \'video\', \'animated_message\' ))"

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/ah;->a(Ljava/lang/String;)V

    .line 24
    const-string/jumbo v0, "date DESC, token DESC"

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/ah;->b(Ljava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)Lcom/viber/voip/messages/conversation/an;
    .locals 1
    .parameter

    .prologue
    .line 40
    new-instance v0, Lcom/viber/voip/messages/conversation/an;

    invoke-direct {v0, p1}, Lcom/viber/voip/messages/conversation/an;-><init>(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    return-object v0
.end method

.method public a(J)V
    .locals 4
    .parameter

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/viber/voip/messages/conversation/ah;->i:J

    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/viber/voip/messages/conversation/ah;->i:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/ah;->b([Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method protected b(Landroid/database/Cursor;)Lcom/viber/voip/messages/conversation/an;
    .locals 1
    .parameter

    .prologue
    .line 35
    new-instance v0, Lcom/viber/voip/messages/conversation/an;

    invoke-direct {v0, p1}, Lcom/viber/voip/messages/conversation/an;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method
