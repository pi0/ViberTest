.class Lcom/viber/voip/e/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

.field final synthetic b:Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

.field final synthetic c:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

.field final synthetic d:Z

.field final synthetic e:Z

.field final synthetic f:Z

.field final synthetic g:J

.field final synthetic h:Lcom/viber/voip/e/u;


# direct methods
.method constructor <init>(Lcom/viber/voip/e/u;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;ZZZJ)V
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
    .line 524
    iput-object p1, p0, Lcom/viber/voip/e/x;->h:Lcom/viber/voip/e/u;

    iput-object p2, p0, Lcom/viber/voip/e/x;->a:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    iput-object p3, p0, Lcom/viber/voip/e/x;->b:Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    iput-object p4, p0, Lcom/viber/voip/e/x;->c:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    iput-boolean p5, p0, Lcom/viber/voip/e/x;->d:Z

    iput-boolean p6, p0, Lcom/viber/voip/e/x;->e:Z

    iput-boolean p7, p0, Lcom/viber/voip/e/x;->f:Z

    iput-wide p8, p0, Lcom/viber/voip/e/x;->g:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 527
    iget-object v0, p0, Lcom/viber/voip/e/x;->h:Lcom/viber/voip/e/u;

    iget-object v1, p0, Lcom/viber/voip/e/x;->a:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    iget-object v2, p0, Lcom/viber/voip/e/x;->b:Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    iget-object v3, p0, Lcom/viber/voip/e/x;->c:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    iget-boolean v4, p0, Lcom/viber/voip/e/x;->d:Z

    iget-boolean v5, p0, Lcom/viber/voip/e/x;->e:Z

    iget-boolean v6, p0, Lcom/viber/voip/e/x;->f:Z

    iget-wide v7, p0, Lcom/viber/voip/e/x;->g:J

    invoke-static/range {v0 .. v8}, Lcom/viber/voip/e/u;->a(Lcom/viber/voip/e/u;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;ZZZJ)V

    .line 528
    return-void
.end method
