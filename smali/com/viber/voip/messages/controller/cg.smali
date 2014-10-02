.class Lcom/viber/voip/messages/controller/cg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/messages/controller/cf;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/cf;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/viber/voip/messages/controller/cg;->b:Lcom/viber/voip/messages/controller/cf;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/cg;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 69
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cg;->a:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    .line 70
    iget-object v2, p0, Lcom/viber/voip/messages/controller/cg;->b:Lcom/viber/voip/messages/controller/cf;

    iget-object v2, v2, Lcom/viber/voip/messages/controller/cf;->a:Lcom/viber/voip/messages/controller/co;

    iget-object v3, p0, Lcom/viber/voip/messages/controller/cg;->b:Lcom/viber/voip/messages/controller/cf;

    iget-object v3, v3, Lcom/viber/voip/messages/controller/cf;->b:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-interface {v2, v3, v0, v1}, Lcom/viber/voip/messages/controller/co;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;J)V

    .line 71
    return-void
.end method
