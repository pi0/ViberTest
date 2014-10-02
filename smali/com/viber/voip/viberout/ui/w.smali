.class Lcom/viber/voip/viberout/ui/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/viberout/ui/u;


# direct methods
.method constructor <init>(Lcom/viber/voip/viberout/ui/u;)V
    .locals 0
    .parameter

    .prologue
    .line 560
    iput-object p1, p0, Lcom/viber/voip/viberout/ui/w;->a:Lcom/viber/voip/viberout/ui/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 564
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "300b"

    sget-object v3, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "Continue With Carrier"

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/a/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 568
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 569
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/w;->a:Lcom/viber/voip/viberout/ui/u;

    iget-object v0, v0, Lcom/viber/voip/viberout/ui/u;->c:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    invoke-virtual {v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->finish()V

    .line 570
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/w;->a:Lcom/viber/voip/viberout/ui/u;

    iget-object v0, v0, Lcom/viber/voip/viberout/ui/u;->c:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    iget-object v1, p0, Lcom/viber/voip/viberout/ui/w;->a:Lcom/viber/voip/viberout/ui/u;

    iget-object v1, v1, Lcom/viber/voip/viberout/ui/u;->a:Lcom/viber/voip/billing/ae;

    invoke-static {v0, v1}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Lcom/viber/voip/viberout/ui/ViberOutDialogs;Lcom/viber/voip/billing/ae;)V

    .line 571
    return-void
.end method
