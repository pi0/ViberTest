.class Lcom/viber/voip/contacts/e/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/e/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/e/e;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/viber/voip/contacts/e/f;->a:Lcom/viber/voip/contacts/e/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/viber/voip/contacts/e/f;->a:Lcom/viber/voip/contacts/e/e;

    iget-object v0, v0, Lcom/viber/voip/contacts/e/e;->a:Lcom/viber/voip/contacts/e/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/e/a;->a(Lcom/viber/voip/contacts/e/a;Z)Z

    .line 146
    iget-object v0, p0, Lcom/viber/voip/contacts/e/f;->a:Lcom/viber/voip/contacts/e/e;

    iget-object v0, v0, Lcom/viber/voip/contacts/e/e;->a:Lcom/viber/voip/contacts/e/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/e/a;->g(Lcom/viber/voip/contacts/e/a;)Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->closeCursor()Z

    .line 147
    iget-object v0, p0, Lcom/viber/voip/contacts/e/f;->a:Lcom/viber/voip/contacts/e/e;

    iget-object v0, v0, Lcom/viber/voip/contacts/e/e;->a:Lcom/viber/voip/contacts/e/a;

    iget-object v1, p0, Lcom/viber/voip/contacts/e/f;->a:Lcom/viber/voip/contacts/e/e;

    iget-object v1, v1, Lcom/viber/voip/contacts/e/e;->a:Lcom/viber/voip/contacts/e/a;

    invoke-static {v1}, Lcom/viber/voip/contacts/e/a;->g(Lcom/viber/voip/contacts/e/a;)Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/contacts/e/f;->a:Lcom/viber/voip/contacts/e/e;

    iget-object v2, v2, Lcom/viber/voip/contacts/e/e;->a:Lcom/viber/voip/contacts/e/a;

    invoke-static {v2}, Lcom/viber/voip/contacts/e/a;->c(Lcom/viber/voip/contacts/e/a;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/contacts/e/a;->onDataReady(Lcom/viber/voip/messages/orm/manager/EntityManager;I)V

    .line 148
    return-void
.end method
