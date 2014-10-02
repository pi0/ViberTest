.class final Lcom/viber/voip/calls/entities/impl/c;
.super Lcom/viber/voip/calls/entities/impl/b;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/viber/voip/calls/entities/impl/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/viber/voip/calls/entities/impl/CallEntityImpl;
    .locals 1

    .prologue
    .line 259
    new-instance v0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;

    invoke-direct {v0}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;-><init>()V

    return-object v0
.end method

.method public synthetic createEntity()Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/viber/voip/calls/entities/impl/c;->a()Lcom/viber/voip/calls/entities/impl/CallEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1
    .parameter

    .prologue
    .line 255
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/calls/entities/impl/c;->createInstance(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/viber/voip/calls/entities/impl/c;->a()Lcom/viber/voip/calls/entities/impl/CallEntityImpl;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/viber/voip/calls/entities/impl/c;->a(Lcom/viber/voip/calls/entities/impl/CallEntityImpl;Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    return-object v0
.end method
