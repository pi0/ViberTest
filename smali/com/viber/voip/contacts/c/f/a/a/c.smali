.class Lcom/viber/voip/contacts/c/f/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/fh;


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lcom/viber/voip/contacts/c/f/a/a/h;

.field final synthetic c:Lcom/viber/voip/contacts/c/f/a/a/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/f/a/a/a;Ljava/util/Set;Lcom/viber/voip/contacts/c/f/a/a/h;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/a/a/c;->c:Lcom/viber/voip/contacts/c/f/a/a/a;

    iput-object p2, p0, Lcom/viber/voip/contacts/c/f/a/a/c;->a:Ljava/util/Set;

    iput-object p3, p0, Lcom/viber/voip/contacts/c/f/a/a/c;->b:Lcom/viber/voip/contacts/c/f/a/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteComplete(ILjava/lang/Object;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    if-lez p3, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/c;->c:Lcom/viber/voip/contacts/c/f/a/a/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/a/a/a;->a(Lcom/viber/voip/contacts/c/f/a/a/a;)Lcom/viber/voip/contacts/c/f/a/a/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/c;->c:Lcom/viber/voip/contacts/c/f/a/a/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/a/a/a;->a(Lcom/viber/voip/contacts/c/f/a/a/a;)Lcom/viber/voip/contacts/c/f/a/a/j;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/a/a/c;->a:Ljava/util/Set;

    invoke-interface {v0, v1}, Lcom/viber/voip/contacts/c/f/a/a/j;->b(Ljava/util/Set;)V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/c;->c:Lcom/viber/voip/contacts/c/f/a/a/a;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/viber/voip/contacts/c/f/a/a/c;->b:Lcom/viber/voip/contacts/c/f/a/a/h;

    invoke-static {v0, v1, v2, p3}, Lcom/viber/voip/contacts/c/f/a/a/a;->a(Lcom/viber/voip/contacts/c/f/a/a/a;ZLcom/viber/voip/contacts/c/f/a/a/h;I)V

    .line 155
    return-void
.end method
