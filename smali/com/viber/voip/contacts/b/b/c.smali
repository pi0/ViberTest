.class final Lcom/viber/voip/contacts/b/b/c;
.super Lcom/viber/voip/messages/orm/creator/CreatorHelper;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/orm/creator/CreatorHelper;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/viber/voip/contacts/b/b/b;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/viber/voip/contacts/b/b/b;

    invoke-direct {v0}, Lcom/viber/voip/contacts/b/b/b;-><init>()V

    return-object v0
.end method

.method public synthetic createEntity()Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/viber/voip/contacts/b/b/c;->a()Lcom/viber/voip/contacts/b/b/b;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1
    .parameter

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/contacts/b/b/c;->createInstance(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/viber/voip/contacts/b/b/c;->a()Lcom/viber/voip/contacts/b/b/b;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/viber/voip/contacts/b/b/a;->a(Lcom/viber/voip/contacts/b/b/b;Landroid/database/Cursor;I)Lcom/viber/voip/contacts/b/b/b;

    move-result-object v0

    return-object v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/viber/provider/contacts/b;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public getProjections()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/viber/voip/contacts/b/b/a;->a:[Ljava/lang/String;

    return-object v0
.end method
