.class Lcom/viber/voip/messages/ui/media/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/media/DoodleActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/media/DoodleActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/b;->a:Lcom/viber/voip/messages/ui/media/DoodleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/b;->a:Lcom/viber/voip/messages/ui/media/DoodleActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->b(Lcom/viber/voip/messages/ui/media/DoodleActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/b;->a:Lcom/viber/voip/messages/ui/media/DoodleActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->b(Lcom/viber/voip/messages/ui/media/DoodleActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/b;->a:Lcom/viber/voip/messages/ui/media/DoodleActivity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->finish()V

    .line 319
    return-void
.end method
