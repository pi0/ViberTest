.class public Lcom/viber/voip/messages/controller/cv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

.field public final e:Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

.field public final f:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;


# direct methods
.method public constructor <init>(ZZLcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-boolean p6, p0, Lcom/viber/voip/messages/controller/cv;->a:Z

    .line 100
    iput-boolean p1, p0, Lcom/viber/voip/messages/controller/cv;->b:Z

    .line 101
    iput-boolean p2, p0, Lcom/viber/voip/messages/controller/cv;->c:Z

    .line 102
    iput-object p3, p0, Lcom/viber/voip/messages/controller/cv;->d:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    .line 103
    iput-object p4, p0, Lcom/viber/voip/messages/controller/cv;->e:Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    .line 104
    iput-object p5, p0, Lcom/viber/voip/messages/controller/cv;->f:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    .line 105
    return-void
.end method
