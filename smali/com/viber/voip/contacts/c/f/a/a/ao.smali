.class Lcom/viber/voip/contacts/c/f/a/a/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/f/a/a/aa;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/f/a/a/al;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/f/a/a/al;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/a/a/ao;->a:Lcom/viber/voip/contacts/c/f/a/a/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/ao;->a:Lcom/viber/voip/contacts/c/f/a/a/al;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/c/f/a/a/al;->b(Lcom/viber/voip/contacts/c/f/a/a/al;Z)Z

    .line 209
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/ao;->a:Lcom/viber/voip/contacts/c/f/a/a/al;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/a/a/al;->c(Lcom/viber/voip/contacts/c/f/a/a/al;)Lcom/viber/voip/contacts/c/f/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/f/a/a/a;->c()V

    .line 210
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/ao;->a:Lcom/viber/voip/contacts/c/f/a/a/al;

    sget-object v1, Lcom/viber/voip/contacts/c/f/a/a/au;->b:Lcom/viber/voip/contacts/c/f/a/a/au;

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/c/f/a/a/al;->a(Lcom/viber/voip/contacts/c/f/a/a/al;Lcom/viber/voip/contacts/c/f/a/a/au;)V

    .line 211
    return-void
.end method
