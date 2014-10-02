.class Lcom/viber/voip/contacts/c/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/a/g;

.field final synthetic b:Lcom/viber/voip/contacts/c/a/b;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/a/b;Lcom/viber/voip/contacts/c/a/g;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/viber/voip/contacts/c/a/f;->b:Lcom/viber/voip/contacts/c/a/b;

    iput-object p2, p0, Lcom/viber/voip/contacts/c/a/f;->a:Lcom/viber/voip/contacts/c/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/viber/voip/contacts/c/a/f;->a:Lcom/viber/voip/contacts/c/a/g;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/a/f;->b:Lcom/viber/voip/contacts/c/a/b;

    invoke-static {v1}, Lcom/viber/voip/contacts/c/a/b;->a(Lcom/viber/voip/contacts/c/a/b;)Lcom/viber/voip/contacts/c/a/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/voip/contacts/c/a/g;->a(Lcom/viber/voip/contacts/c/a/a;)V

    .line 72
    return-void
.end method
