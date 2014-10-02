.class Lcom/viber/voip/viberout/ui/f;
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
    .line 109
    iput-object p1, p0, Lcom/viber/voip/viberout/ui/f;->a:Lcom/viber/voip/viberout/ui/ViberOutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/f;->a:Lcom/viber/voip/viberout/ui/ViberOutActivity;

    const-string/jumbo v1, "payment-history"

    iget-object v2, p0, Lcom/viber/voip/viberout/ui/f;->a:Lcom/viber/voip/viberout/ui/ViberOutActivity;

    const v3, 0x7f0c056c

    invoke-virtual {v2, v3}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method
