.class Lcom/viber/voip/messages/controller/cs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/extras/a/c;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

.field final synthetic b:Lcom/viber/voip/messages/controller/cr;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/cr;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 854
    iput-object p1, p0, Lcom/viber/voip/messages/controller/cs;->b:Lcom/viber/voip/messages/controller/cr;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/cs;->a:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Address;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 857
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 858
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/controller/cs;->a:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p2}, Lcom/viber/voip/messages/controller/x;->c(JLjava/lang/String;)V

    .line 859
    :cond_0
    return-void
.end method
