.class public Lcom/viber/voip/messages/controller/cw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/viber/voip/messages/controller/cw;->a:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    .line 71
    iput-object p2, p0, Lcom/viber/voip/messages/controller/cw;->b:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Lcom/viber/voip/messages/controller/cw;->c:Ljava/lang/String;

    .line 73
    return-void
.end method
