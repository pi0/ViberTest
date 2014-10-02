.class public Lcom/viber/voip/contacts/c/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/a/a;


# instance fields
.field private final a:Lcom/viber/voip/contacts/c/a/a;

.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/viber/voip/contacts/c/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/viber/voip/contacts/c/a/b;->b:Landroid/os/Handler;

    .line 19
    iput-object p2, p0, Lcom/viber/voip/contacts/c/a/b;->a:Lcom/viber/voip/contacts/c/a/a;

    .line 20
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/c/a/b;)Lcom/viber/voip/contacts/c/a/a;
    .locals 1
    .parameter

    .prologue
    .line 8
    iget-object v0, p0, Lcom/viber/voip/contacts/c/a/b;->a:Lcom/viber/voip/contacts/c/a/a;

    return-object v0
.end method

.method private a(Lcom/viber/voip/contacts/c/a/g;)V
    .locals 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/viber/voip/contacts/c/a/b;->b:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/contacts/c/a/f;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/contacts/c/a/f;-><init>(Lcom/viber/voip/contacts/c/a/b;Lcom/viber/voip/contacts/c/a/g;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 74
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 57
    new-instance v0, Lcom/viber/voip/contacts/c/a/e;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/contacts/c/a/e;-><init>(Lcom/viber/voip/contacts/c/a/b;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/c/a/b;->a(Lcom/viber/voip/contacts/c/a/g;)V

    .line 64
    return-void
.end method

.method public a(Ljava/util/Set;)V
    .locals 1
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
    .line 24
    new-instance v0, Lcom/viber/voip/contacts/c/a/c;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/contacts/c/a/c;-><init>(Lcom/viber/voip/contacts/c/a/b;Ljava/util/Set;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/c/a/b;->a(Lcom/viber/voip/contacts/c/a/g;)V

    .line 31
    return-void
.end method

.method public b(Ljava/util/Set;)V
    .locals 1
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
    .line 35
    new-instance v0, Lcom/viber/voip/contacts/c/a/d;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/contacts/c/a/d;-><init>(Lcom/viber/voip/contacts/c/a/b;Ljava/util/Set;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/c/a/b;->a(Lcom/viber/voip/contacts/c/a/g;)V

    .line 42
    return-void
.end method
