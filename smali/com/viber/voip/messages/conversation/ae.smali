.class public Lcom/viber/voip/messages/conversation/ae;
.super Lcom/viber/voip/messages/conversation/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/voip/messages/conversation/v",
        "<",
        "Lcom/viber/voip/messages/conversation/an;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;Lcom/viber/provider/e;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    sget-object v2, Lcom/viber/provider/messages/b/d;->a:Landroid/net/Uri;

    sget-object v3, Lcom/viber/voip/messages/conversation/an;->e:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/messages/conversation/v;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;Lcom/viber/provider/e;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/viber/voip/messages/i;Lcom/viber/provider/e;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    sget-object v2, Lcom/viber/provider/messages/b/d;->a:Landroid/net/Uri;

    sget-object v3, Lcom/viber/voip/messages/conversation/an;->e:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/conversation/v;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/viber/voip/messages/i;Lcom/viber/provider/e;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)Lcom/viber/voip/messages/conversation/an;
    .locals 1
    .parameter

    .prologue
    .line 31
    new-instance v0, Lcom/viber/voip/messages/conversation/an;

    invoke-direct {v0, p1}, Lcom/viber/voip/messages/conversation/an;-><init>(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    return-object v0
.end method

.method protected b(Landroid/database/Cursor;)Lcom/viber/voip/messages/conversation/an;
    .locals 2
    .parameter

    .prologue
    .line 26
    new-instance v0, Lcom/viber/voip/messages/conversation/an;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ae;->e:Landroid/database/Cursor;

    invoke-direct {v0, v1}, Lcom/viber/voip/messages/conversation/an;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method
