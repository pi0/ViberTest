.class public Lcom/viber/voip/contacts/b/a/g;
.super Lcom/viber/voip/messages/orm/creator/JoinCreator;
.source "SourceFile"


# static fields
.field private static final a:Lcom/viber/voip/contacts/b/a/d;


# instance fields
.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/viber/voip/contacts/b/a/h;

    invoke-direct {v0}, Lcom/viber/voip/contacts/b/a/h;-><init>()V

    sput-object v0, Lcom/viber/voip/contacts/b/a/g;->a:Lcom/viber/voip/contacts/b/a/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 26
    sget-object v0, Lcom/viber/provider/contacts/d;->f:Landroid/net/Uri;

    const-class v1, Lcom/viber/voip/contacts/b/b/a/a;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/viber/voip/messages/orm/creator/Creator;

    sget-object v3, Lcom/viber/voip/contacts/b/a/g;->a:Lcom/viber/voip/contacts/b/a/d;

    aput-object v3, v2, v5

    const/4 v3, 0x1

    sget-object v4, Lcom/viber/voip/contacts/b/b/a/l;->k:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/viber/voip/contacts/b/b/a/o;->a:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/viber/voip/messages/orm/creator/JoinCreator;-><init>(Landroid/net/Uri;Ljava/lang/Class;[Lcom/viber/voip/messages/orm/creator/Creator;)V

    .line 23
    iput v5, p0, Lcom/viber/voip/contacts/b/a/g;->b:I

    .line 28
    return-void
.end method


# virtual methods
.method public a()Lcom/viber/voip/contacts/b/b/i;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/viber/voip/contacts/b/b/i;

    invoke-direct {v0}, Lcom/viber/voip/contacts/b/b/i;-><init>()V

    return-object v0
.end method

.method public final a(Landroid/database/Cursor;)Lcom/viber/voip/contacts/b/b/i;
    .locals 4
    .parameter

    .prologue
    .line 42
    sget-object v0, Lcom/viber/voip/contacts/b/a/g;->a:Lcom/viber/voip/contacts/b/a/d;

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/contacts/b/a/g;->createInstancesInternal(Landroid/database/Cursor;Lcom/viber/voip/messages/orm/creator/Creator;)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b/i;

    .line 45
    :cond_0
    sget-object v1, Lcom/viber/voip/contacts/b/b/a/l;->k:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    invoke-virtual {p0, p1, v1}, Lcom/viber/voip/contacts/b/a/g;->createInstancesInternal(Landroid/database/Cursor;Lcom/viber/voip/messages/orm/creator/Creator;)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/contacts/b/b/a/l;

    .line 46
    sget-object v2, Lcom/viber/voip/contacts/b/b/a/o;->a:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    invoke-virtual {p0, p1, v2}, Lcom/viber/voip/contacts/b/a/g;->createInstancesInternal(Landroid/database/Cursor;Lcom/viber/voip/messages/orm/creator/Creator;)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v2

    check-cast v2, Lcom/viber/voip/contacts/b/b/a/o;

    .line 48
    instance-of v3, v1, Lcom/viber/voip/contacts/b/b/k;

    if-eqz v3, :cond_1

    .line 49
    new-instance v3, Lcom/viber/voip/contacts/b/b/a/e;

    check-cast v1, Lcom/viber/voip/contacts/b/b/k;

    invoke-direct {v3, v1}, Lcom/viber/voip/contacts/b/b/a/e;-><init>(Lcom/viber/voip/contacts/b/b/k;)V

    .line 51
    invoke-virtual {v0, v3}, Lcom/viber/voip/contacts/b/b/i;->a(Lcom/viber/voip/contacts/b/g;)V

    .line 52
    invoke-virtual {v2}, Lcom/viber/voip/contacts/b/b/a/o;->isIdValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    invoke-virtual {v0, v2, v3}, Lcom/viber/voip/contacts/b/b/i;->a(Lcom/viber/voip/contacts/b/i;Lcom/viber/voip/contacts/b/g;)V

    .line 56
    :cond_1
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/i;->getId()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/viber/voip/contacts/b/a/g;->moveToNext(Landroid/database/Cursor;J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    return-object v0
.end method

.method public synthetic createEntity()Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/viber/voip/contacts/b/a/g;->a()Lcom/viber/voip/contacts/b/b/i;

    move-result-object v0

    return-object v0
.end method

.method public synthetic createInstance(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1
    .parameter

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/b/a/g;->a(Landroid/database/Cursor;)Lcom/viber/voip/contacts/b/b/i;

    move-result-object v0

    return-object v0
.end method

.method public getAggregateField()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/viber/voip/contacts/b/a/g;->b:I

    return v0
.end method
