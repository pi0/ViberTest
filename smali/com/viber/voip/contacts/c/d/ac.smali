.class Lcom/viber/voip/contacts/c/d/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/fn;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/d/ap;

.field final synthetic b:Lcom/viber/voip/contacts/c/d/aa;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/d/aa;Lcom/viber/voip/contacts/c/d/ap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 424
    iput-object p1, p0, Lcom/viber/voip/contacts/c/d/ac;->b:Lcom/viber/voip/contacts/c/d/aa;

    iput-object p2, p0, Lcom/viber/voip/contacts/c/d/ac;->a:Lcom/viber/voip/contacts/c/d/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateComplete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/Exception;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 429
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/ac;->a:Lcom/viber/voip/contacts/c/d/ap;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/ac;->a:Lcom/viber/voip/contacts/c/d/ap;

    invoke-interface {v0}, Lcom/viber/voip/contacts/c/d/ap;->a()V

    .line 432
    :cond_0
    return-void
.end method
