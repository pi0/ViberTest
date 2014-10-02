.class Lcom/viber/voip/contacts/c/d/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/ff;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/d/ap;

.field final synthetic b:Lcom/viber/voip/contacts/c/d/aa;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/d/aa;Lcom/viber/voip/contacts/c/d/ap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 443
    iput-object p1, p0, Lcom/viber/voip/contacts/c/d/ad;->b:Lcom/viber/voip/contacts/c/d/aa;

    iput-object p2, p0, Lcom/viber/voip/contacts/c/d/ad;->a:Lcom/viber/voip/contacts/c/d/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;Ljava/util/List;[Landroid/content/ContentProviderResult;Ljava/lang/Exception;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;[",
            "Landroid/content/ContentProviderResult;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 448
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/ad;->a:Lcom/viber/voip/contacts/c/d/ap;

    invoke-interface {v0}, Lcom/viber/voip/contacts/c/d/ap;->a()V

    .line 449
    return-void
.end method
