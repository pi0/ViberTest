.class Lcom/viber/voip/viberout/ui/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/billing/v;


# instance fields
.field final synthetic a:[Landroid/app/ProgressDialog;

.field final synthetic b:Lcom/viber/voip/viberout/ui/ViberOutDialogs;


# direct methods
.method constructor <init>(Lcom/viber/voip/viberout/ui/ViberOutDialogs;[Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/viber/voip/viberout/ui/as;->b:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    iput-object p2, p0, Lcom/viber/voip/viberout/ui/as;->a:[Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/billing/r;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 254
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/as;->a:[Landroid/app/ProgressDialog;

    aget-object v0, v0, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/viberout/ui/as;->b:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    invoke-virtual {v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/as;->a:[Landroid/app/ProgressDialog;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 257
    invoke-virtual {p1}, Lcom/viber/voip/billing/r;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "612"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 261
    new-instance v0, Lcom/viber/voip/viberout/ui/ay;

    iget-object v1, p0, Lcom/viber/voip/viberout/ui/as;->b:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    invoke-direct {v0, v1}, Lcom/viber/voip/viberout/ui/ay;-><init>(Landroid/content/Context;)V

    .line 262
    const v1, 0x7f0c056a

    invoke-virtual {v0, v1}, Lcom/viber/voip/viberout/ui/ay;->a(I)V

    .line 263
    iget-object v1, p0, Lcom/viber/voip/viberout/ui/as;->b:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    invoke-virtual {p1}, Lcom/viber/voip/billing/r;->c()[Lcom/viber/voip/billing/q;

    move-result-object v2

    sget-object v3, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "612"

    invoke-static {v1, v0, v2, v4, v3}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Lcom/viber/voip/viberout/ui/ViberOutDialogs;Lcom/viber/voip/viberout/ui/ay;[Lcom/viber/voip/billing/q;ZLjava/lang/String;)V

    .line 265
    const/high16 v1, 0x104

    new-instance v2, Lcom/viber/voip/viberout/ui/at;

    invoke-direct {v2, p0}, Lcom/viber/voip/viberout/ui/at;-><init>(Lcom/viber/voip/viberout/ui/as;)V

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/viberout/ui/ay;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/view/View;

    .line 278
    new-instance v1, Lcom/viber/voip/viberout/ui/au;

    invoke-direct {v1, p0}, Lcom/viber/voip/viberout/ui/au;-><init>(Lcom/viber/voip/viberout/ui/as;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/viberout/ui/ay;->a(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 286
    invoke-virtual {v0}, Lcom/viber/voip/viberout/ui/ay;->a()V

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/as;->b:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    invoke-static {v0, p1}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Lcom/viber/voip/viberout/ui/ViberOutDialogs;Lcom/viber/voip/billing/r;)V

    goto :goto_0
.end method
