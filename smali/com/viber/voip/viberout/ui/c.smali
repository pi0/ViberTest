.class Lcom/viber/voip/viberout/ui/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/viberout/ui/ViberOutActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/viberout/ui/ViberOutActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/viber/voip/viberout/ui/c;->a:Lcom/viber/voip/viberout/ui/ViberOutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 82
    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/bd;->K:Ljava/lang/String;

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&src_phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/billing/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/viber/voip/billing/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/viber/voip/viberout/ui/c;->a:Lcom/viber/voip/viberout/ui/ViberOutActivity;

    iget-object v2, p0, Lcom/viber/voip/viberout/ui/c;->a:Lcom/viber/voip/viberout/ui/ViberOutActivity;

    const v3, 0x7f0c056e

    invoke-virtual {v2, v3}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method
