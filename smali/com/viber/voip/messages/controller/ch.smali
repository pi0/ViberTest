.class Lcom/viber/voip/messages/controller/ch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/controller/cf;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/cf;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/viber/voip/messages/controller/ch;->a:Lcom/viber/voip/messages/controller/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/viber/voip/messages/controller/ch;->a:Lcom/viber/voip/messages/controller/cf;

    iget-object v0, v0, Lcom/viber/voip/messages/controller/cf;->a:Lcom/viber/voip/messages/controller/co;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/ch;->a:Lcom/viber/voip/messages/controller/cf;

    iget-object v1, v1, Lcom/viber/voip/messages/controller/cf;->b:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/co;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    .line 84
    return-void
.end method
