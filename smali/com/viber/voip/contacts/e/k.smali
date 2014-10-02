.class public Lcom/viber/voip/contacts/e/k;
.super Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper",
        "<",
        "Lcom/viber/voip/contacts/e/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/orm/service/ServiceCallback;)Lcom/viber/voip/contacts/e/a;
    .locals 1
    .parameter

    .prologue
    .line 15
    new-instance v0, Lcom/viber/voip/contacts/e/a;

    invoke-direct {v0, p1}, Lcom/viber/voip/contacts/e/a;-><init>(Lcom/viber/voip/messages/orm/service/ServiceCallback;)V

    return-object v0
.end method

.method public a(Lcom/viber/voip/contacts/e/a;Lcom/viber/voip/messages/orm/service/ServiceCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-virtual {p1}, Lcom/viber/voip/contacts/e/a;->e()V

    .line 11
    return-void
.end method

.method public synthetic createInstance(Lcom/viber/voip/messages/orm/service/ServiceCallback;)Lcom/viber/voip/messages/orm/service/EntityService;
    .locals 1
    .parameter

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/e/k;->a(Lcom/viber/voip/messages/orm/service/ServiceCallback;)Lcom/viber/voip/contacts/e/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onDestroy(Lcom/viber/voip/messages/orm/service/EntityService;Lcom/viber/voip/messages/orm/service/ServiceCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6
    check-cast p1, Lcom/viber/voip/contacts/e/a;

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/contacts/e/k;->a(Lcom/viber/voip/contacts/e/a;Lcom/viber/voip/messages/orm/service/ServiceCallback;)V

    return-void
.end method
