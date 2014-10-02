.class Lcom/viber/voip/viberout/ui/g;
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
    .line 118
    iput-object p1, p0, Lcom/viber/voip/viberout/ui/g;->a:Lcom/viber/voip/viberout/ui/ViberOutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 121
    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/bd;->L:Ljava/lang/String;

    .line 122
    invoke-static {v0}, Lcom/viber/voip/billing/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/viber/voip/viberout/ui/g;->a:Lcom/viber/voip/viberout/ui/ViberOutActivity;

    iget-object v2, p0, Lcom/viber/voip/viberout/ui/g;->a:Lcom/viber/voip/viberout/ui/ViberOutActivity;

    const v3, 0x7f0c056d

    invoke-virtual {v2, v3}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->a(Lcom/viber/voip/viberout/ui/ViberOutActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method
