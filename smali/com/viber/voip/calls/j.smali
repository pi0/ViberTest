.class Lcom/viber/voip/calls/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/ff;


# instance fields
.field final synthetic a:Lcom/viber/voip/calls/i;


# direct methods
.method constructor <init>(Lcom/viber/voip/calls/i;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/viber/voip/calls/j;->a:Lcom/viber/voip/calls/i;

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
    .line 253
    iget-object v0, p0, Lcom/viber/voip/calls/j;->a:Lcom/viber/voip/calls/i;

    iget-object v0, v0, Lcom/viber/voip/calls/i;->b:Lcom/viber/voip/calls/o;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/viber/voip/calls/o;->a(Z)V

    .line 254
    return-void
.end method
