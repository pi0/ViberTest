.class Lcom/viber/voip/ce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/cc;


# direct methods
.method constructor <init>(Lcom/viber/voip/cc;)V
    .locals 0
    .parameter

    .prologue
    .line 633
    iput-object p1, p0, Lcom/viber/voip/ce;->a:Lcom/viber/voip/cc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 636
    iget-object v0, p0, Lcom/viber/voip/ce;->a:Lcom/viber/voip/cc;

    iget-object v0, v0, Lcom/viber/voip/cc;->b:Lcom/viber/voip/SystemDialogActivity;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/viber/voip/ce;->a:Lcom/viber/voip/cc;

    iget-object v2, v2, Lcom/viber/voip/cc;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/viber/voip/SystemDialogActivity;->a(Lcom/viber/voip/SystemDialogActivity;ILjava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/viber/voip/ce;->a:Lcom/viber/voip/cc;

    iget-object v0, v0, Lcom/viber/voip/cc;->b:Lcom/viber/voip/SystemDialogActivity;

    invoke-virtual {v0}, Lcom/viber/voip/SystemDialogActivity;->finish()V

    .line 638
    return-void
.end method
