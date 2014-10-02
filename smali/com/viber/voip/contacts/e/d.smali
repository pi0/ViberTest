.class Lcom/viber/voip/contacts/e/d;
.super Lcom/viber/voip/contacts/e/h;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/e/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/e/a;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/viber/voip/contacts/e/d;->a:Lcom/viber/voip/contacts/e/a;

    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/e/h;-><init>(Lcom/viber/voip/contacts/e/a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/orm/manager/EntityManager;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/viber/voip/contacts/e/d;->a:Lcom/viber/voip/contacts/e/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/e/a;->a(Lcom/viber/voip/contacts/e/a;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/e/d;->a:Lcom/viber/voip/contacts/e/a;

    invoke-static {v1}, Lcom/viber/voip/contacts/e/a;->b(Lcom/viber/voip/contacts/e/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/viber/voip/contacts/e/j;->a(Lcom/viber/voip/messages/orm/manager/EntityManager;ZLjava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method
