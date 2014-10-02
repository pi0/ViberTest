.class Lcom/viber/service/contacts/sync/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/service/contacts/sync/a;


# direct methods
.method constructor <init>(Lcom/viber/service/contacts/sync/a;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/viber/service/contacts/sync/d;->a:Lcom/viber/service/contacts/sync/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.ACTION_CHECK_ACCOUNT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/viber/service/contacts/sync/d;->a:Lcom/viber/service/contacts/sync/a;

    invoke-static {v1}, Lcom/viber/service/contacts/sync/a;->a(Lcom/viber/service/contacts/sync/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 69
    return-void
.end method
