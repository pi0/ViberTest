.class Lcom/viber/voip/viberout/ui/a;
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
    .line 69
    iput-object p1, p0, Lcom/viber/voip/viberout/ui/a;->a:Lcom/viber/voip/viberout/ui/ViberOutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/viber/voip/billing/dt;->a(Lcom/viber/voip/billing/ae;)V

    .line 73
    invoke-static {}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->b()V

    .line 76
    return-void
.end method
