.class Lcom/viber/voip/messages/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/a/b;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/viber/voip/messages/a/f;->a:Lcom/viber/voip/messages/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 203
    iget-object v0, p0, Lcom/viber/voip/messages/a/f;->a:Lcom/viber/voip/messages/a/b;

    invoke-static {v0}, Lcom/viber/voip/messages/a/b;->a(Lcom/viber/voip/messages/a/b;)Lcom/viber/voip/messages/controller/c/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/controller/c/as;->i()Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v0

    .line 205
    invoke-static {}, Lcom/viber/voip/user/UserData;->getViberImage()Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-static {}, Lcom/viber/voip/user/UserData;->getName()Ljava/lang/String;

    move-result-object v2

    .line 208
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getViberImage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getViberName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 211
    :cond_0
    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setViberImage(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setViberName(Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/viber/voip/messages/a/f;->a:Lcom/viber/voip/messages/a/b;

    invoke-static {v1}, Lcom/viber/voip/messages/a/b;->a(Lcom/viber/voip/messages/a/b;)Lcom/viber/voip/messages/controller/c/as;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 215
    :cond_1
    return-void
.end method
