.class Lcom/viber/voip/contacts/c/c/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/viber/voip/contacts/c/c/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lcom/viber/voip/contacts/c/c/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/viber/voip/contacts/c/c/a/b;-><init>(Lcom/viber/voip/contacts/c/c/a/c;)V

    sput-object v0, Lcom/viber/voip/contacts/c/c/a/f;->a:Lcom/viber/voip/contacts/c/c/a/b;

    return-void
.end method

.method static synthetic a()Lcom/viber/voip/contacts/c/c/a/b;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/viber/voip/contacts/c/c/a/f;->a:Lcom/viber/voip/contacts/c/c/a/b;

    return-object v0
.end method
