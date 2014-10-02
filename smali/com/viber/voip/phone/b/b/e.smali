.class Lcom/viber/voip/phone/b/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/phone/b/b/c;


# direct methods
.method constructor <init>(Lcom/viber/voip/phone/b/b/c;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/viber/voip/phone/b/b/e;->a:Lcom/viber/voip/phone/b/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/viber/voip/phone/b/b/e;->a:Lcom/viber/voip/phone/b/b/c;

    invoke-virtual {v0}, Lcom/viber/voip/phone/b/b/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v1

    iget-object v1, v1, Lcom/viber/voip/bd;->P:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ui/GenericWebViewActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method
