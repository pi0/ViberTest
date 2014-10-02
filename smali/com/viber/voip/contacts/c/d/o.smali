.class Lcom/viber/voip/contacts/c/d/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/d/n;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/d/n;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/viber/voip/contacts/c/d/o;->a:Lcom/viber/voip/contacts/c/d/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/o;->a:Lcom/viber/voip/contacts/c/d/n;

    iget-object v0, v0, Lcom/viber/voip/contacts/c/d/n;->b:Lcom/viber/voip/contacts/c/d/m;

    iget-object v0, v0, Lcom/viber/voip/contacts/c/d/m;->d:Lcom/viber/service/contacts/a/a;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/o;->a:Lcom/viber/voip/contacts/c/d/n;

    iget-object v1, v1, Lcom/viber/voip/contacts/c/d/n;->b:Lcom/viber/voip/contacts/c/d/m;

    iget-object v1, v1, Lcom/viber/voip/contacts/c/d/m;->c:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0, v1}, Lcom/viber/service/contacts/a/a;->a(Landroid/content/Context;)I

    .line 101
    return-void
.end method
