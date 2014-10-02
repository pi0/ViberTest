.class Lcom/viber/voip/contacts/c/f/a/a/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/viber/voip/messages/orm/manager/EntityManager;

.field final synthetic c:Lcom/viber/voip/contacts/c/f/a/a/ab;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/f/a/a/ab;ILcom/viber/voip/messages/orm/manager/EntityManager;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/a/a/ad;->c:Lcom/viber/voip/contacts/c/f/a/a/ab;

    iput p2, p0, Lcom/viber/voip/contacts/c/f/a/a/ad;->a:I

    iput-object p3, p0, Lcom/viber/voip/contacts/c/f/a/a/ad;->b:Lcom/viber/voip/messages/orm/manager/EntityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 155
    iget v0, p0, Lcom/viber/voip/contacts/c/f/a/a/ad;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 156
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/ad;->c:Lcom/viber/voip/contacts/c/f/a/a/ab;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/a/a/ab;->a(Lcom/viber/voip/contacts/c/f/a/a/ab;)Lcom/viber/voip/contacts/c/f/a/a/aj;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/contacts/c/f/a/a/af;

    iget-object v2, p0, Lcom/viber/voip/contacts/c/f/a/a/ad;->c:Lcom/viber/voip/contacts/c/f/a/a/ab;

    iget-object v3, p0, Lcom/viber/voip/contacts/c/f/a/a/ad;->b:Lcom/viber/voip/messages/orm/manager/EntityManager;

    invoke-direct {v1, v2, v3}, Lcom/viber/voip/contacts/c/f/a/a/af;-><init>(Lcom/viber/voip/contacts/c/f/a/a/ab;Lcom/viber/voip/messages/orm/manager/EntityManager;)V

    invoke-interface {v0, v1}, Lcom/viber/voip/contacts/c/f/a/a/aj;->a(Lcom/viber/voip/contacts/c/f/a/a/af;)V

    .line 164
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/ad;->b:Lcom/viber/voip/messages/orm/manager/EntityManager;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/manager/EntityManager;->closeCursor()Z

    .line 165
    return-void

    .line 157
    :cond_1
    iget v0, p0, Lcom/viber/voip/contacts/c/f/a/a/ad;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 158
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/ad;->c:Lcom/viber/voip/contacts/c/f/a/a/ab;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/a/a/ab;->a(Lcom/viber/voip/contacts/c/f/a/a/ab;)Lcom/viber/voip/contacts/c/f/a/a/aj;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/contacts/c/f/a/a/ah;

    iget-object v2, p0, Lcom/viber/voip/contacts/c/f/a/a/ad;->c:Lcom/viber/voip/contacts/c/f/a/a/ab;

    iget-object v3, p0, Lcom/viber/voip/contacts/c/f/a/a/ad;->b:Lcom/viber/voip/messages/orm/manager/EntityManager;

    invoke-direct {v1, v2, v3}, Lcom/viber/voip/contacts/c/f/a/a/ah;-><init>(Lcom/viber/voip/contacts/c/f/a/a/ab;Lcom/viber/voip/messages/orm/manager/EntityManager;)V

    invoke-interface {v0, v1}, Lcom/viber/voip/contacts/c/f/a/a/aj;->a(Lcom/viber/voip/contacts/c/f/a/a/ah;)V

    goto :goto_0

    .line 159
    :cond_2
    iget v0, p0, Lcom/viber/voip/contacts/c/f/a/a/ad;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 160
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/ad;->c:Lcom/viber/voip/contacts/c/f/a/a/ab;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/a/a/ab;->a(Lcom/viber/voip/contacts/c/f/a/a/ab;)Lcom/viber/voip/contacts/c/f/a/a/aj;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/contacts/c/f/a/a/ag;

    iget-object v2, p0, Lcom/viber/voip/contacts/c/f/a/a/ad;->b:Lcom/viber/voip/messages/orm/manager/EntityManager;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/viber/voip/contacts/c/f/a/a/ag;-><init>(Lcom/viber/voip/messages/orm/manager/EntityManager;Lcom/viber/voip/contacts/c/f/a/a/ac;)V

    invoke-interface {v0, v1}, Lcom/viber/voip/contacts/c/f/a/a/aj;->a(Lcom/viber/voip/contacts/c/f/a/a/ag;)V

    goto :goto_0

    .line 161
    :cond_3
    iget v0, p0, Lcom/viber/voip/contacts/c/f/a/a/ad;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/ad;->c:Lcom/viber/voip/contacts/c/f/a/a/ab;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/a/a/ab;->a(Lcom/viber/voip/contacts/c/f/a/a/ab;)Lcom/viber/voip/contacts/c/f/a/a/aj;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/contacts/c/f/a/a/ai;

    iget-object v2, p0, Lcom/viber/voip/contacts/c/f/a/a/ad;->c:Lcom/viber/voip/contacts/c/f/a/a/ab;

    iget-object v3, p0, Lcom/viber/voip/contacts/c/f/a/a/ad;->b:Lcom/viber/voip/messages/orm/manager/EntityManager;

    invoke-direct {v1, v2, v3}, Lcom/viber/voip/contacts/c/f/a/a/ai;-><init>(Lcom/viber/voip/contacts/c/f/a/a/ab;Lcom/viber/voip/messages/orm/manager/EntityManager;)V

    invoke-interface {v0, v1}, Lcom/viber/voip/contacts/c/f/a/a/aj;->a(Lcom/viber/voip/contacts/c/f/a/a/ai;)V

    goto :goto_0
.end method
