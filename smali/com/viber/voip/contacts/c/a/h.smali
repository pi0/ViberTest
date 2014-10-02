.class public Lcom/viber/voip/contacts/c/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/a/a;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/viber/voip/contacts/c/e/a;

.field private c:Lcom/viber/voip/contacts/c/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/viber/voip/contacts/c/a/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/c/a/h;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/viber/voip/contacts/c/c/a;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/viber/voip/contacts/c/e/a;

    invoke-direct {v0, p1}, Lcom/viber/voip/contacts/c/e/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/a/h;->b:Lcom/viber/voip/contacts/c/e/a;

    .line 25
    iput-object p2, p0, Lcom/viber/voip/contacts/c/a/h;->c:Lcom/viber/voip/contacts/c/c/a;

    .line 26
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 58
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/c/a/h;->b(Ljava/util/Set;)V

    .line 60
    return-void
.end method

.method public a(Ljava/util/Set;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/viber/voip/contacts/c/a/h;->b:Lcom/viber/voip/contacts/c/e/a;

    invoke-virtual {v0, p1}, Lcom/viber/voip/contacts/c/e/a;->a(Ljava/util/Set;)V

    .line 33
    iget-object v0, p0, Lcom/viber/voip/contacts/c/a/h;->c:Lcom/viber/voip/contacts/c/c/a;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/viber/voip/contacts/c/c/a;->a(Ljava/util/Set;Z)V

    .line 34
    return-void
.end method

.method public b(Ljava/util/Set;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/viber/voip/contacts/c/a/h;->b:Lcom/viber/voip/contacts/c/e/a;

    invoke-virtual {v0, p1}, Lcom/viber/voip/contacts/c/e/a;->b(Ljava/util/Set;)V

    .line 41
    iget-object v0, p0, Lcom/viber/voip/contacts/c/a/h;->c:Lcom/viber/voip/contacts/c/c/a;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/viber/voip/contacts/c/c/a;->b(Ljava/util/Set;Z)V

    .line 42
    return-void
.end method
