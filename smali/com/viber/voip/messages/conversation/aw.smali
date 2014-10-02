.class public Lcom/viber/voip/messages/conversation/aw;
.super Lcom/viber/voip/messages/conversation/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/voip/messages/conversation/i",
        "<",
        "Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;ZZLjava/util/ArrayList;Ljava/lang/String;Lcom/viber/provider/e;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct/range {p0 .. p8}, Lcom/viber/voip/messages/conversation/i;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;ZZLjava/util/ArrayList;Ljava/lang/String;Lcom/viber/provider/e;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/viber/voip/messages/i;Lcom/viber/provider/e;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/messages/conversation/i;-><init>(Landroid/content/Context;Lcom/viber/voip/messages/i;Lcom/viber/provider/e;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected a(Landroid/database/Cursor;)Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;
    .locals 1
    .parameter

    .prologue
    .line 42
    new-instance v0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;

    invoke-direct {v0, p1}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method
