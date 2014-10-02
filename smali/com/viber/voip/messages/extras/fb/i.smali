.class Lcom/viber/voip/messages/extras/fb/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/viber/voip/messages/extras/fb/i;->a:Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter

    .prologue
    .line 187
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "308"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/u;->c(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 188
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 189
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/i;->a:Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;->finish()V

    .line 190
    return-void
.end method
