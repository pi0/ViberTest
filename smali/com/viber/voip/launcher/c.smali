.class Lcom/viber/voip/launcher/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/viber/voip/launcher/RecentCallsWidget;


# direct methods
.method constructor <init>(Lcom/viber/voip/launcher/RecentCallsWidget;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/viber/voip/launcher/c;->c:Lcom/viber/voip/launcher/RecentCallsWidget;

    iput-object p2, p0, Lcom/viber/voip/launcher/c;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/viber/voip/launcher/c;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 89
    iget-object v0, p0, Lcom/viber/voip/launcher/c;->a:Landroid/content/Intent;

    const-string/jumbo v1, "call_count"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 90
    iget-object v1, p0, Lcom/viber/voip/launcher/c;->a:Landroid/content/Intent;

    const-string/jumbo v2, "badges_count"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 91
    sget-object v2, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v2}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/viber/voip/launcher/d;

    invoke-direct {v3, p0, v0, v1}, Lcom/viber/voip/launcher/d;-><init>(Lcom/viber/voip/launcher/c;II)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99
    return-void
.end method
