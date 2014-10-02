.class Lcom/viber/voip/contacts/c/f/a/a/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/ff;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/f/a/a/x;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/f/a/a/x;)V
    .locals 0
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/a/a/y;->a:Lcom/viber/voip/contacts/c/f/a/a/x;

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
    .line 335
    invoke-static {}, Lcom/viber/voip/messages/a/b;->d()Lcom/viber/voip/messages/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/a/a;->b()V

    .line 337
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/y;->a:Lcom/viber/voip/contacts/c/f/a/a/x;

    iget-object v0, v0, Lcom/viber/voip/contacts/c/f/a/a/x;->a:Lcom/viber/voip/contacts/c/f/a/a/z;

    invoke-interface {v0}, Lcom/viber/voip/contacts/c/f/a/a/z;->a()V

    .line 338
    return-void
.end method
