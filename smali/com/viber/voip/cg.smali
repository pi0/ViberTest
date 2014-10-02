.class Lcom/viber/voip/cg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/SystemDialogActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/SystemDialogActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 659
    iput-object p1, p0, Lcom/viber/voip/cg;->b:Lcom/viber/voip/SystemDialogActivity;

    iput-object p2, p0, Lcom/viber/voip/cg;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 662
    iget-object v0, p0, Lcom/viber/voip/cg;->b:Lcom/viber/voip/SystemDialogActivity;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/viber/voip/cg;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/viber/voip/SystemDialogActivity;->a(Lcom/viber/voip/SystemDialogActivity;ILjava/lang/String;)V

    .line 663
    iget-object v0, p0, Lcom/viber/voip/cg;->b:Lcom/viber/voip/SystemDialogActivity;

    invoke-virtual {v0}, Lcom/viber/voip/SystemDialogActivity;->finish()V

    .line 664
    return-void
.end method
