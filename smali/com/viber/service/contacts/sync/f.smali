.class final Lcom/viber/service/contacts/sync/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/viber/service/contacts/sync/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/viber/service/contacts/sync/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/viber/service/contacts/sync/a;-><init>(Lcom/viber/service/contacts/sync/b;)V

    sput-object v0, Lcom/viber/service/contacts/sync/f;->a:Lcom/viber/service/contacts/sync/a;

    return-void
.end method

.method static synthetic a()Lcom/viber/service/contacts/sync/a;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/viber/service/contacts/sync/f;->a:Lcom/viber/service/contacts/sync/a;

    return-object v0
.end method
