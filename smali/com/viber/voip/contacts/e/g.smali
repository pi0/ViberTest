.class Lcom/viber/voip/contacts/e/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/e/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/e/a;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/viber/voip/contacts/e/g;->a:Lcom/viber/voip/contacts/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/viber/voip/contacts/e/g;->a:Lcom/viber/voip/contacts/e/a;

    iget-object v1, p0, Lcom/viber/voip/contacts/e/g;->a:Lcom/viber/voip/contacts/e/a;

    invoke-static {v1}, Lcom/viber/voip/contacts/e/a;->c(Lcom/viber/voip/contacts/e/a;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/e/a;->a(Lcom/viber/voip/contacts/e/a;I)V

    .line 257
    return-void
.end method
