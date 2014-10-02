.class Lcom/viber/voip/viberout/ui/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/viberout/ui/k;


# direct methods
.method constructor <init>(Lcom/viber/voip/viberout/ui/k;)V
    .locals 0
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/viber/voip/viberout/ui/l;->a:Lcom/viber/voip/viberout/ui/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter

    .prologue
    .line 256
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "617"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/u;->c(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 257
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/l;->a:Lcom/viber/voip/viberout/ui/k;

    iget-object v0, v0, Lcom/viber/voip/viberout/ui/k;->a:Lcom/viber/voip/viberout/ui/ViberOutActivity;

    invoke-static {v0}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->f(Lcom/viber/voip/viberout/ui/ViberOutActivity;)V

    .line 258
    return-void
.end method
