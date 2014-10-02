.class Lcom/viber/voip/contacts/c/f/a/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/f/a/a/h;


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lcom/viber/voip/contacts/c/f/a/a/h;

.field final synthetic c:Lcom/viber/voip/contacts/c/f/a/a/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/f/a/a/a;Ljava/util/Set;Lcom/viber/voip/contacts/c/f/a/a/h;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/a/a/e;->c:Lcom/viber/voip/contacts/c/f/a/a/a;

    iput-object p2, p0, Lcom/viber/voip/contacts/c/f/a/a/e;->a:Ljava/util/Set;

    iput-object p3, p0, Lcom/viber/voip/contacts/c/f/a/a/e;->b:Lcom/viber/voip/contacts/c/f/a/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 301
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getParticipantManager()Lcom/viber/voip/messages/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/a/a/e;->a:Ljava/util/Set;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/a/a;->b(Ljava/util/Set;)V

    .line 302
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/e;->b:Lcom/viber/voip/contacts/c/f/a/a/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/e;->b:Lcom/viber/voip/contacts/c/f/a/a/h;

    invoke-interface {v0, p1}, Lcom/viber/voip/contacts/c/f/a/a/h;->a(Z)V

    .line 303
    :cond_0
    return-void
.end method
