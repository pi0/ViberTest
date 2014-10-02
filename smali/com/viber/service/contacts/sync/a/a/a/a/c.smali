.class public Lcom/viber/service/contacts/sync/a/a/a/a/c;
.super Lcom/viber/service/contacts/sync/a/a/a;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/viber/service/contacts/sync/a/a/a/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/service/contacts/sync/a/a/a/a/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    new-instance v0, Lcom/viber/service/contacts/sync/a/a/a/a/a;

    invoke-direct {v0}, Lcom/viber/service/contacts/sync/a/a/a/a/a;-><init>()V

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/viber/service/contacts/sync/a/a/a;-><init>(Landroid/content/Context;Lcom/viber/service/contacts/sync/c/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected a(Lcom/viber/service/contacts/sync/a/a/h;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p1, Lcom/viber/service/contacts/sync/a/a/h;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Lcom/viber/service/contacts/sync/a/a/h;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/viber/service/contacts/sync/a/a/l;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p1, Lcom/viber/service/contacts/sync/a/a/l;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Lcom/viber/service/contacts/sync/a/a/l;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
