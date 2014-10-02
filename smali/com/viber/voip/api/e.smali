.class Lcom/viber/voip/api/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/api/ViberUrlHandlerActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/api/ViberUrlHandlerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/viber/voip/api/e;->a:Lcom/viber/voip/api/ViberUrlHandlerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 182
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    const-string/jumbo v2, "market://details?id=com.viber.voip"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 183
    iget-object v1, p0, Lcom/viber/voip/api/e;->a:Lcom/viber/voip/api/ViberUrlHandlerActivity;

    invoke-virtual {v1, v0}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->startActivity(Landroid/content/Intent;)V

    .line 184
    iget-object v0, p0, Lcom/viber/voip/api/e;->a:Lcom/viber/voip/api/ViberUrlHandlerActivity;

    invoke-virtual {v0}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->finish()V

    .line 185
    return-void
.end method
