.class Lcom/viber/voip/contacts/c/f/a/a/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/ff;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/f/a/a/r;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/f/a/a/r;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/a/a/s;->a:Lcom/viber/voip/contacts/c/f/a/a/r;

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
    .line 192
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/s;->a:Lcom/viber/voip/contacts/c/f/a/a/r;

    iget-object v0, v0, Lcom/viber/voip/contacts/c/f/a/a/r;->a:Lcom/viber/voip/contacts/c/f/a/a/z;

    invoke-interface {v0}, Lcom/viber/voip/contacts/c/f/a/a/z;->a()V

    .line 193
    return-void
.end method
