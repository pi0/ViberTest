.class Lcom/viber/voip/contacts/ui/cc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/ai;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/viber/voip/contacts/b/e;

.field final synthetic c:Z

.field final synthetic d:Lcom/viber/voip/contacts/ui/cb;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/cb;ZLcom/viber/voip/contacts/b/e;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/cc;->d:Lcom/viber/voip/contacts/ui/cb;

    iput-boolean p2, p0, Lcom/viber/voip/contacts/ui/cc;->a:Z

    iput-object p3, p0, Lcom/viber/voip/contacts/ui/cc;->b:Lcom/viber/voip/contacts/b/e;

    iput-boolean p4, p0, Lcom/viber/voip/contacts/ui/cc;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cc;->d:Lcom/viber/voip/contacts/ui/cb;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/cc;->b:Lcom/viber/voip/contacts/b/e;

    invoke-virtual {v0, v1, p1}, Lcom/viber/voip/contacts/ui/cb;->a(Lcom/viber/voip/contacts/b/e;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/viber/voip/contacts/ui/cc;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cc;->d:Lcom/viber/voip/contacts/ui/cb;

    invoke-virtual {v0, p2}, Lcom/viber/voip/contacts/ui/cb;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cc;->d:Lcom/viber/voip/contacts/ui/cb;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/cc;->b:Lcom/viber/voip/contacts/b/e;

    iget-boolean v2, p0, Lcom/viber/voip/contacts/ui/cc;->c:Z

    invoke-static {v0, v1, p2, v2}, Lcom/viber/voip/contacts/ui/cb;->a(Lcom/viber/voip/contacts/ui/cb;Lcom/viber/voip/contacts/b/e;Ljava/lang/String;Z)Z

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cc;->d:Lcom/viber/voip/contacts/ui/cb;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/cc;->b:Lcom/viber/voip/contacts/b/e;

    invoke-virtual {v0, v1, p2}, Lcom/viber/voip/contacts/ui/cb;->a(Lcom/viber/voip/contacts/b/e;Ljava/lang/String;)V

    goto :goto_0
.end method
