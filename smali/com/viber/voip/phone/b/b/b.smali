.class Lcom/viber/voip/phone/b/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/phone/b/b/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/phone/b/b/a;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/viber/voip/phone/b/b/b;->a:Lcom/viber/voip/phone/b/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/viber/voip/phone/b/b/b;->a:Lcom/viber/voip/phone/b/b/a;

    const v1, 0x7f0c07ae

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/b/b/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/viber/voip/phone/b/b/b;->a:Lcom/viber/voip/phone/b/b/a;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/viber/voip/phone/b/b/a;->startActivity(Landroid/content/Intent;)V

    .line 69
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 70
    return-void
.end method
