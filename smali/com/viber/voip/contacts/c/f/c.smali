.class Lcom/viber/voip/contacts/c/f/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/f/b/ab;


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lcom/viber/voip/contacts/c/f/b;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/f/b;Ljava/util/Set;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/c;->b:Lcom/viber/voip/contacts/c/f/b;

    iput-object p2, p0, Lcom/viber/voip/contacts/c/f/c;->a:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/c;->b:Lcom/viber/voip/contacts/c/f/b;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/b;->a(Lcom/viber/voip/contacts/c/f/b;)I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/c;->a:Ljava/util/Set;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/c;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/c;->b:Lcom/viber/voip/contacts/c/f/b;

    invoke-static {v0, p1}, Lcom/viber/voip/contacts/c/f/b;->a(Lcom/viber/voip/contacts/c/f/b;I)I

    .line 62
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/c;->b:Lcom/viber/voip/contacts/c/f/b;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/c;->a:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/c/f/b;->a(Lcom/viber/voip/contacts/c/f/b;Ljava/util/Set;)V

    .line 64
    :cond_1
    return-void
.end method
