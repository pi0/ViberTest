.class Lcom/viber/voip/viberout/ui/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/billing/v;


# instance fields
.field final synthetic a:[Landroid/app/ProgressDialog;

.field final synthetic b:Lcom/viber/voip/billing/ae;

.field final synthetic c:Lcom/viber/voip/viberout/ui/ViberOutDialogs;


# direct methods
.method constructor <init>(Lcom/viber/voip/viberout/ui/ViberOutDialogs;[Landroid/app/ProgressDialog;Lcom/viber/voip/billing/ae;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/viber/voip/viberout/ui/o;->c:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    iput-object p2, p0, Lcom/viber/voip/viberout/ui/o;->a:[Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/viber/voip/viberout/ui/o;->b:Lcom/viber/voip/billing/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/billing/r;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 218
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/o;->a:[Landroid/app/ProgressDialog;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/viberout/ui/o;->c:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    invoke-virtual {v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/o;->a:[Landroid/app/ProgressDialog;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 220
    invoke-virtual {p1}, Lcom/viber/voip/billing/r;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/o;->c:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    invoke-virtual {p1}, Lcom/viber/voip/billing/r;->c()[Lcom/viber/voip/billing/q;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/viberout/ui/o;->b:Lcom/viber/voip/billing/ae;

    invoke-static {v0, v1, v2}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Lcom/viber/voip/viberout/ui/ViberOutDialogs;[Lcom/viber/voip/billing/q;Lcom/viber/voip/billing/ae;)V

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/o;->c:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    invoke-static {v0, p1}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Lcom/viber/voip/viberout/ui/ViberOutDialogs;Lcom/viber/voip/billing/r;)V

    goto :goto_0
.end method
