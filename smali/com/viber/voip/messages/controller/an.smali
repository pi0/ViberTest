.class Lcom/viber/voip/messages/controller/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

.field final synthetic b:Lcom/viber/voip/messages/controller/ak;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/ak;[Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/viber/voip/messages/controller/an;->b:Lcom/viber/voip/messages/controller/ak;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/an;->a:[Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/viber/voip/messages/controller/an;->b:Lcom/viber/voip/messages/controller/ak;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/ak;->a(Lcom/viber/voip/messages/controller/ak;)Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/controller/an;->a:[Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/x;->a([Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    .line 144
    return-void
.end method
