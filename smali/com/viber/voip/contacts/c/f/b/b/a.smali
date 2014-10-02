.class public Lcom/viber/voip/contacts/c/f/b/b/a;
.super Lcom/viber/voip/contacts/c/f/b/r;
.source "SourceFile"


# static fields
.field private static final k:Ljava/lang/String;


# instance fields
.field private l:Lcom/viber/voip/contacts/c/d/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/viber/voip/contacts/c/f/b/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/c/f/b/b/a;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/ViberApplication;Lcom/viber/voip/contacts/c/f/b/q;Lcom/viber/voip/contacts/c/d/c;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/contacts/c/f/b/r;-><init>(Lcom/viber/voip/ViberApplication;Lcom/viber/voip/contacts/c/f/b/q;)V

    .line 29
    iput-object p3, p0, Lcom/viber/voip/contacts/c/f/b/b/a;->l:Lcom/viber/voip/contacts/c/d/c;

    .line 30
    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/contacts/c/f/b/e;)V
    .locals 2
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/b/a;->h:Lcom/viber/voip/contacts/c/f/b/ah;

    invoke-virtual {v0, p1}, Lcom/viber/voip/contacts/c/f/b/ah;->a(Lcom/viber/voip/contacts/c/f/b/e;)Lcom/viber/voip/contacts/c/f/b/aj;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/f/b/aj;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-static {}, Lcom/viber/service/contacts/sync/a;->a()Lcom/viber/service/contacts/sync/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/service/contacts/sync/a;->c()V

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/b/a;->d:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getParticipantManager()Lcom/viber/voip/messages/a/a;

    move-result-object v1

    iget-object v0, v0, Lcom/viber/voip/contacts/c/f/b/aj;->d:Ljava/util/Set;

    invoke-interface {v1, v0}, Lcom/viber/voip/messages/a/a;->a(Ljava/util/Set;)V

    .line 55
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/b/a;->d:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/viber/voip/contacts/c/d/b;->b(Z)V

    .line 59
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/b/a;->f:Lcom/viber/voip/contacts/c/f/b/q;

    invoke-interface {v0}, Lcom/viber/voip/contacts/c/f/b/q;->l()V

    .line 60
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/viber/voip/contacts/c/f/b/r;->a(Z)V

    .line 43
    return-void
.end method

.method protected d()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method
