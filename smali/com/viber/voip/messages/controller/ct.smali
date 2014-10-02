.class Lcom/viber/voip/messages/controller/ct;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/messages/controller/cr;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/cr;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1018
    iput-object p1, p0, Lcom/viber/voip/messages/controller/ct;->b:Lcom/viber/voip/messages/controller/cr;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/ct;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialized(Lcom/viber/jni/controller/PhoneController;)V
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1023
    invoke-interface {p1}, Lcom/viber/jni/controller/PhoneController;->generateSequence()I

    move-result v2

    .line 1026
    const-wide/16 v4, 0x0

    .line 1028
    iget-object v0, p0, Lcom/viber/voip/messages/controller/ct;->b:Lcom/viber/voip/messages/controller/cr;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/cr;->a(Lcom/viber/voip/messages/controller/cr;)Lcom/viber/voip/messages/controller/c/as;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/controller/ct;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v7}, Lcom/viber/voip/messages/controller/c/as;->a(Ljava/lang/String;I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    .line 1029
    if-eqz v0, :cond_0

    .line 1030
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageSeq()I

    move-result v3

    .line 1031
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v4

    .line 1040
    :goto_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getLastOnlineController()Lcom/viber/jni/lastonline/LastOnlineController;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/String;

    iget-object v7, p0, Lcom/viber/voip/messages/controller/ct;->a:Ljava/lang/String;

    aput-object v7, v1, v6

    invoke-interface/range {v0 .. v5}, Lcom/viber/jni/lastonline/LastOnlineController;->handleGetLastOnline([Ljava/lang/String;IIJ)Z

    move-result v0

    .line 1042
    iget-object v1, p0, Lcom/viber/voip/messages/controller/ct;->b:Lcom/viber/voip/messages/controller/cr;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleGetLastOnline number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/messages/controller/ct;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isSucceeded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/viber/voip/messages/controller/cr;->a(Lcom/viber/voip/messages/controller/cr;Ljava/lang/String;)V

    .line 1043
    return-void

    .line 1033
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/controller/ct;->b:Lcom/viber/voip/messages/controller/cr;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/cr;->a(Lcom/viber/voip/messages/controller/cr;)Lcom/viber/voip/messages/controller/c/as;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/controller/ct;->a:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v3}, Lcom/viber/voip/messages/controller/c/as;->a(Ljava/lang/String;I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    .line 1034
    if-eqz v0, :cond_1

    .line 1035
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageSeq()I

    move-result v3

    .line 1036
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v4

    goto :goto_0

    :cond_1
    move v3, v6

    goto :goto_0
.end method
