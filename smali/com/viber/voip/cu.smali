.class Lcom/viber/voip/cu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/az;


# instance fields
.field final synthetic a:Lcom/viber/voip/SystemDialogActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/SystemDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/viber/voip/cu;->a:Lcom/viber/voip/SystemDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 171
    sget-object v0, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/cv;

    invoke-direct {v1, p0}, Lcom/viber/voip/cv;-><init>(Lcom/viber/voip/cu;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 180
    iget-object v0, p0, Lcom/viber/voip/cu;->a:Lcom/viber/voip/SystemDialogActivity;

    invoke-virtual {v0}, Lcom/viber/voip/SystemDialogActivity;->finish()V

    .line 181
    return-void
.end method
