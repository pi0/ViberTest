.class Lcom/viber/voip/contacts/c/f/b/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/ff;


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lcom/viber/voip/contacts/c/f/b/ab;

.field final synthetic c:Lcom/viber/voip/contacts/c/f/b/u;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/f/b/u;Ljava/util/Set;Lcom/viber/voip/contacts/c/f/b/ab;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 546
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/b/y;->c:Lcom/viber/voip/contacts/c/f/b/u;

    iput-object p2, p0, Lcom/viber/voip/contacts/c/f/b/y;->a:Ljava/util/Set;

    iput-object p3, p0, Lcom/viber/voip/contacts/c/f/b/y;->b:Lcom/viber/voip/contacts/c/f/b/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;Ljava/util/List;[Landroid/content/ContentProviderResult;Ljava/lang/Exception;)V
    .locals 4
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
    const/4 v0, 0x0

    .line 551
    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/y;->c:Lcom/viber/voip/contacts/c/f/b/u;

    invoke-static {v1}, Lcom/viber/voip/contacts/c/f/b/u;->b(Lcom/viber/voip/contacts/c/f/b/u;)Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/contacts/c/f/b;->a(Lcom/viber/voip/ViberApplication;)Lcom/viber/voip/contacts/c/f/b;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/contacts/c/f/b/y;->a:Ljava/util/Set;

    invoke-virtual {v1, v2}, Lcom/viber/voip/contacts/c/f/b;->a(Ljava/util/Set;)V

    .line 552
    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/y;->b:Lcom/viber/voip/contacts/c/f/b/ab;

    if-eqz v1, :cond_1

    .line 564
    if-eqz p4, :cond_0

    .line 565
    array-length v3, p4

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, p4, v1

    .line 566
    iget-object v2, v2, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v0

    .line 565
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    .line 569
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/y;->b:Lcom/viber/voip/contacts/c/f/b/ab;

    invoke-interface {v1, v0}, Lcom/viber/voip/contacts/c/f/b/ab;->a(I)V

    .line 571
    :cond_1
    return-void
.end method
