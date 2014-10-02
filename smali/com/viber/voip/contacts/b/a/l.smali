.class final Lcom/viber/voip/contacts/b/a/l;
.super Lcom/viber/voip/contacts/b/a/d;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/viber/voip/contacts/b/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/viber/voip/contacts/b/b/a/a;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/viber/voip/contacts/b/b/e;

    invoke-direct {v0}, Lcom/viber/voip/contacts/b/b/e;-><init>()V

    return-object v0
.end method

.method public synthetic createEntity()Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/viber/voip/contacts/b/a/l;->a()Lcom/viber/voip/contacts/b/b/a/a;

    move-result-object v0

    return-object v0
.end method
