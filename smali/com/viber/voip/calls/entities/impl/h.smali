.class final Lcom/viber/voip/calls/entities/impl/h;
.super Lcom/viber/voip/calls/entities/impl/f;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/viber/voip/calls/entities/impl/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/viber/voip/calls/entities/impl/g;
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lcom/viber/voip/calls/entities/impl/g;

    invoke-direct {v0}, Lcom/viber/voip/calls/entities/impl/g;-><init>()V

    return-object v0
.end method

.method public synthetic createEntity()Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/viber/voip/calls/entities/impl/h;->a()Lcom/viber/voip/calls/entities/impl/g;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1
    .parameter

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/calls/entities/impl/h;->createInstance(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/viber/voip/calls/entities/impl/h;->a()Lcom/viber/voip/calls/entities/impl/g;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/viber/voip/calls/entities/impl/h;->a(Lcom/viber/voip/calls/entities/impl/g;Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    return-object v0
.end method
