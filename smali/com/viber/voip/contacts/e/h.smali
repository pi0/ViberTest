.class public abstract Lcom/viber/voip/contacts/e/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/a;
.implements Lcom/viber/voip/messages/orm/service/EntityService;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/viber/voip/contacts/a;",
        "Lcom/viber/voip/messages/orm/service/EntityService",
        "<",
        "Lcom/viber/voip/contacts/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/viber/voip/messages/orm/manager/EntityManager;

.field final synthetic b:Lcom/viber/voip/contacts/e/a;

.field private c:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/viber/voip/contacts/b/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/viber/voip/contacts/e/a;)V
    .locals 2
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/viber/voip/contacts/e/h;->b:Lcom/viber/voip/contacts/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    new-instance v0, Lcom/viber/voip/contacts/e/i;

    const/16 v1, 0x14

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/contacts/e/i;-><init>(Lcom/viber/voip/contacts/e/h;I)V

    iput-object v0, p0, Lcom/viber/voip/contacts/e/h;->c:Landroid/support/v4/util/LruCache;

    .line 313
    new-instance v0, Lcom/viber/voip/messages/orm/manager/EntityManager;

    sget-object v1, Lcom/viber/voip/contacts/b/b/e;->b:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    invoke-direct {v0, v1}, Lcom/viber/voip/messages/orm/manager/EntityManager;-><init>(Lcom/viber/voip/messages/orm/creator/Creator;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/e/h;->a:Lcom/viber/voip/messages/orm/manager/EntityManager;

    .line 314
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/e/h;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/e/h;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 330
    iget-object v0, p0, Lcom/viber/voip/contacts/e/h;->c:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 331
    iget-object v0, p0, Lcom/viber/voip/contacts/e/h;->a:Lcom/viber/voip/messages/orm/manager/EntityManager;

    invoke-virtual {p0, v0, p1}, Lcom/viber/voip/contacts/e/h;->a(Lcom/viber/voip/messages/orm/manager/EntityManager;Z)V

    .line 332
    return-void
.end method


# virtual methods
.method public synthetic a(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 302
    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/e/h;->c(I)Lcom/viber/voip/contacts/b/b;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(Lcom/viber/voip/messages/orm/manager/EntityManager;Z)V
.end method

.method public synthetic b(I)Lcom/viber/voip/contacts/b/e;
    .locals 1
    .parameter

    .prologue
    .line 302
    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/e/h;->c(I)Lcom/viber/voip/contacts/b/b;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Lcom/viber/voip/contacts/b/b;
    .locals 3
    .parameter

    .prologue
    .line 321
    iget-object v0, p0, Lcom/viber/voip/contacts/e/h;->c:Landroid/support/v4/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b;

    .line 322
    if-eqz v0, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-object v0

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/contacts/e/h;->a:Lcom/viber/voip/messages/orm/manager/EntityManager;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/orm/manager/EntityManager;->getEntity(I)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b;

    .line 325
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/viber/voip/contacts/e/h;->c:Landroid/support/v4/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public c_()I
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method public d_()Z
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/viber/voip/contacts/e/h;->b:Lcom/viber/voip/contacts/e/a;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/e/a;->d_()Z

    move-result v0

    return v0
.end method

.method public findEntity(J)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 2
    .parameter

    .prologue
    .line 351
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/viber/voip/contacts/e/h;->a:Lcom/viber/voip/messages/orm/manager/EntityManager;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/manager/EntityManager;->getCount()I

    move-result v0

    return v0
.end method

.method public synthetic getEntity(I)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1
    .parameter

    .prologue
    .line 302
    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/e/h;->c(I)Lcom/viber/voip/contacts/b/b;

    move-result-object v0

    return-object v0
.end method

.method public getHelper()Lcom/viber/voip/messages/orm/creator/Creator;
    .locals 2

    .prologue
    .line 346
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isInit()Z
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/viber/voip/contacts/e/h;->b:Lcom/viber/voip/contacts/e/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/e/a;->i(Lcom/viber/voip/contacts/e/a;)Z

    move-result v0

    return v0
.end method
