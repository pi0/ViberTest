.class Lcom/viber/voip/viberout/ui/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/viber/voip/viberout/ui/h;


# direct methods
.method constructor <init>(Lcom/viber/voip/viberout/ui/h;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/viber/voip/viberout/ui/i;->b:Lcom/viber/voip/viberout/ui/h;

    iput p2, p0, Lcom/viber/voip/viberout/ui/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Fixating balance container width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/viberout/ui/i;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->a(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/i;->b:Lcom/viber/voip/viberout/ui/h;

    iget-object v0, v0, Lcom/viber/voip/viberout/ui/h;->a:Lcom/viber/voip/messages/ui/PositioningAwareFrameLayout;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/PositioningAwareFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 145
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 146
    iget v1, p0, Lcom/viber/voip/viberout/ui/i;->a:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 147
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/i;->b:Lcom/viber/voip/viberout/ui/h;

    iget-object v0, v0, Lcom/viber/voip/viberout/ui/h;->a:Lcom/viber/voip/messages/ui/PositioningAwareFrameLayout;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/PositioningAwareFrameLayout;->requestLayout()V

    .line 148
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/i;->b:Lcom/viber/voip/viberout/ui/h;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/viber/voip/viberout/ui/h;->a(Lcom/viber/voip/viberout/ui/h;Z)Z

    .line 149
    return-void
.end method
