.class Lcom/viber/voip/cd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/az;


# instance fields
.field final synthetic a:Lcom/viber/voip/cc;


# direct methods
.method constructor <init>(Lcom/viber/voip/cc;)V
    .locals 0
    .parameter

    .prologue
    .line 621
    iput-object p1, p0, Lcom/viber/voip/cd;->a:Lcom/viber/voip/cc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 8
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 624
    iget-object v0, p0, Lcom/viber/voip/cd;->a:Lcom/viber/voip/cc;

    iget-object v0, v0, Lcom/viber/voip/cc;->a:Ljava/lang/String;

    move-wide v3, v1

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/messages/j;->a(Ljava/lang/String;JJLjava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 626
    const-string/jumbo v1, "send_1to1"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 628
    iget-object v1, p0, Lcom/viber/voip/cd;->a:Lcom/viber/voip/cc;

    iget-object v1, v1, Lcom/viber/voip/cc;->b:Lcom/viber/voip/SystemDialogActivity;

    iget-object v2, p0, Lcom/viber/voip/cd;->a:Lcom/viber/voip/cc;

    iget-object v2, v2, Lcom/viber/voip/cc;->a:Ljava/lang/String;

    invoke-static {v1, v7, v2}, Lcom/viber/voip/SystemDialogActivity;->a(Lcom/viber/voip/SystemDialogActivity;ILjava/lang/String;)V

    .line 629
    iget-object v1, p0, Lcom/viber/voip/cd;->a:Lcom/viber/voip/cc;

    iget-object v1, v1, Lcom/viber/voip/cc;->b:Lcom/viber/voip/SystemDialogActivity;

    invoke-virtual {v1}, Lcom/viber/voip/SystemDialogActivity;->finish()V

    .line 630
    iget-object v1, p0, Lcom/viber/voip/cd;->a:Lcom/viber/voip/cc;

    iget-object v1, v1, Lcom/viber/voip/cc;->b:Lcom/viber/voip/SystemDialogActivity;

    invoke-virtual {v1, v0}, Lcom/viber/voip/SystemDialogActivity;->startActivity(Landroid/content/Intent;)V

    .line 631
    return-void
.end method
