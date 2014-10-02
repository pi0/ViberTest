.class Lcom/viber/voip/contacts/c/f/a/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/ff;


# instance fields
.field a:I

.field final synthetic b:I

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Z

.field final synthetic e:Lcom/viber/voip/contacts/c/f/a/a/h;

.field final synthetic f:Lcom/viber/voip/contacts/c/f/a/a/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/f/a/a/a;ILjava/util/Map;ZLcom/viber/voip/contacts/c/f/a/a/h;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/a/a/f;->f:Lcom/viber/voip/contacts/c/f/a/a/a;

    iput p2, p0, Lcom/viber/voip/contacts/c/f/a/a/f;->b:I

    iput-object p3, p0, Lcom/viber/voip/contacts/c/f/a/a/f;->c:Ljava/util/Map;

    iput-boolean p4, p0, Lcom/viber/voip/contacts/c/f/a/a/f;->d:Z

    iput-object p5, p0, Lcom/viber/voip/contacts/c/f/a/a/f;->e:Lcom/viber/voip/contacts/c/f/a/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/contacts/c/f/a/a/f;->a:I

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
    .line 378
    iget v0, p0, Lcom/viber/voip/contacts/c/f/a/a/f;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/viber/voip/contacts/c/f/a/a/f;->a:I

    .line 380
    iget v0, p0, Lcom/viber/voip/contacts/c/f/a/a/f;->a:I

    iget v1, p0, Lcom/viber/voip/contacts/c/f/a/a/f;->b:I

    if-ne v0, v1, :cond_1

    .line 381
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/f;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/f;->f:Lcom/viber/voip/contacts/c/f/a/a/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/a/a/a;->a(Lcom/viber/voip/contacts/c/f/a/a/a;)Lcom/viber/voip/contacts/c/f/a/a/j;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/a/a/f;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/viber/voip/contacts/c/f/a/a/j;->a(Ljava/util/Map;)V

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/f;->f:Lcom/viber/voip/contacts/c/f/a/a/a;

    iget-boolean v1, p0, Lcom/viber/voip/contacts/c/f/a/a/f;->d:Z

    iget-object v2, p0, Lcom/viber/voip/contacts/c/f/a/a/f;->e:Lcom/viber/voip/contacts/c/f/a/a/h;

    iget v3, p0, Lcom/viber/voip/contacts/c/f/a/a/f;->b:I

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/contacts/c/f/a/a/a;->a(Lcom/viber/voip/contacts/c/f/a/a/a;ZLcom/viber/voip/contacts/c/f/a/a/h;I)V

    .line 388
    :cond_1
    return-void
.end method
