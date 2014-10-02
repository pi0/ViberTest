.class public Lcom/viber/voip/messages/controller/cu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

.field public final b:Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;

.field public final c:Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/viber/voip/messages/controller/cu;->a:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    .line 84
    iput-object p2, p0, Lcom/viber/voip/messages/controller/cu;->b:Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;

    .line 85
    iput-object p3, p0, Lcom/viber/voip/messages/controller/cu;->c:Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    .line 86
    return-void
.end method
