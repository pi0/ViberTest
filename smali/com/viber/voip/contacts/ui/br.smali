.class Lcom/viber/voip/contacts/ui/br;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/ui/bp;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/bp;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/br;->a:Lcom/viber/voip/contacts/ui/bp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 194
    const-wide/16 v0, 0xbb8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 197
    :goto_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/a;->a(Lcom/viber/voip/ViberApplication;)Lcom/viber/voip/contacts/c/f/a;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/viber/voip/contacts/c/f/a;->a(IZ)V

    .line 198
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.VIBER_SERVICE_EXIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    :try_start_1
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/br;->a:Lcom/viber/voip/contacts/ui/bp;

    invoke-static {v1}, Lcom/viber/voip/contacts/ui/bp;->a(Lcom/viber/voip/contacts/ui/bp;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 204
    :goto_1
    return-void

    .line 201
    :catch_0
    move-exception v1

    .line 202
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/br;->a:Lcom/viber/voip/contacts/ui/bp;

    invoke-static {v1}, Lcom/viber/voip/contacts/ui/bp;->a(Lcom/viber/voip/contacts/ui/bp;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 195
    :catch_1
    move-exception v0

    goto :goto_0
.end method
