.class Lcom/viber/voip/contacts/c/f/a/a/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/ff;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/f/a/a/p;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/f/a/a/p;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/a/a/q;->a:Lcom/viber/voip/contacts/c/f/a/a/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;Ljava/util/List;[Landroid/content/ContentProviderResult;Ljava/lang/Exception;)V
    .locals 2
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
    .line 154
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/q;->a:Lcom/viber/voip/contacts/c/f/a/a/p;

    iget-object v0, v0, Lcom/viber/voip/contacts/c/f/a/a/p;->b:Lcom/viber/voip/contacts/c/f/a/a/n;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/a/a/q;->a:Lcom/viber/voip/contacts/c/f/a/a/p;

    iget-object v1, v1, Lcom/viber/voip/contacts/c/f/a/a/p;->a:Lcom/viber/voip/contacts/c/f/a/a/z;

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/c/f/a/a/n;->b(Lcom/viber/voip/contacts/c/f/a/a/z;)V

    .line 155
    return-void
.end method
