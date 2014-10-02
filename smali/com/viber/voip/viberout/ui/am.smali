.class Lcom/viber/voip/viberout/ui/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/viberout/ui/aw;

.field final synthetic c:Lcom/viber/voip/viberout/ui/ViberOutDialogs;


# direct methods
.method constructor <init>(Lcom/viber/voip/viberout/ui/ViberOutDialogs;Ljava/lang/String;Lcom/viber/voip/viberout/ui/aw;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1023
    iput-object p1, p0, Lcom/viber/voip/viberout/ui/am;->c:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    iput-object p2, p0, Lcom/viber/voip/viberout/ui/am;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/voip/viberout/ui/am;->b:Lcom/viber/voip/viberout/ui/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1025
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1026
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/am;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1027
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    iget-object v2, p0, Lcom/viber/voip/viberout/ui/am;->a:Ljava/lang/String;

    sget-object v3, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "Ok"

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/a/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 1031
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/am;->b:Lcom/viber/voip/viberout/ui/aw;

    if-eqz v0, :cond_1

    .line 1032
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/am;->b:Lcom/viber/voip/viberout/ui/aw;

    invoke-interface {v0}, Lcom/viber/voip/viberout/ui/aw;->a()V

    .line 1034
    :cond_1
    return-void
.end method
