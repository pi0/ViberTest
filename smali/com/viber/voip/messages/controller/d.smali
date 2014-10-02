.class Lcom/viber/voip/messages/controller/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/controller/q;

.field final synthetic b:Lcom/viber/voip/messages/controller/c;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/c;Lcom/viber/voip/messages/controller/q;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/viber/voip/messages/controller/d;->b:Lcom/viber/voip/messages/controller/c;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/d;->a:Lcom/viber/voip/messages/controller/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/viber/voip/messages/controller/d;->a:Lcom/viber/voip/messages/controller/q;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/d;->b:Lcom/viber/voip/messages/controller/c;

    invoke-static {v1}, Lcom/viber/voip/messages/controller/c;->a(Lcom/viber/voip/messages/controller/c;)Lcom/viber/voip/messages/controller/GroupController;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/q;->a(Lcom/viber/voip/messages/controller/GroupController;)V

    .line 27
    return-void
.end method
