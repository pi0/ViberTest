.class Lcom/viber/voip/contacts/c/f/b/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Z

.field final b:Z

.field final c:Lcom/viber/voip/contacts/c/f/b/ab;

.field final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic e:Lcom/viber/voip/contacts/c/f/b/u;


# direct methods
.method public constructor <init>(Lcom/viber/voip/contacts/c/f/b/u;Ljava/util/Set;ZZLcom/viber/voip/contacts/c/f/b/ab;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Lcom/viber/voip/contacts/c/f/b/ab;",
            ")V"
        }
    .end annotation

    .prologue
    .line 476
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/b/ag;->e:Lcom/viber/voip/contacts/c/f/b/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    iput-boolean p3, p0, Lcom/viber/voip/contacts/c/f/b/ag;->a:Z

    .line 478
    iput-boolean p4, p0, Lcom/viber/voip/contacts/c/f/b/ag;->b:Z

    .line 479
    iput-object p5, p0, Lcom/viber/voip/contacts/c/f/b/ag;->c:Lcom/viber/voip/contacts/c/f/b/ab;

    .line 480
    iput-object p2, p0, Lcom/viber/voip/contacts/c/f/b/ag;->d:Ljava/util/Set;

    .line 481
    return-void
.end method
