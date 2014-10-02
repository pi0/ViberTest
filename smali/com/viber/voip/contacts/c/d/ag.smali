.class Lcom/viber/voip/contacts/c/d/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/fn;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/d/af;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/d/af;)V
    .locals 0
    .parameter

    .prologue
    .line 489
    iput-object p1, p0, Lcom/viber/voip/contacts/c/d/ag;->a:Lcom/viber/voip/contacts/c/d/af;

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
    .line 493
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/ag;->a:Lcom/viber/voip/contacts/c/d/af;

    iget-object v0, v0, Lcom/viber/voip/contacts/c/d/af;->c:Lcom/viber/voip/contacts/c/d/ap;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/ag;->a:Lcom/viber/voip/contacts/c/d/af;

    iget-object v0, v0, Lcom/viber/voip/contacts/c/d/af;->c:Lcom/viber/voip/contacts/c/d/ap;

    invoke-interface {v0}, Lcom/viber/voip/contacts/c/d/ap;->a()V

    .line 496
    :cond_0
    return-void
.end method
