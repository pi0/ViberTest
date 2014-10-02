.class Lcom/viber/voip/messages/extras/twitter/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/extras/twitter/x;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/twitter/x;)V
    .locals 0
    .parameter

    .prologue
    .line 463
    iput-object p1, p0, Lcom/viber/voip/messages/extras/twitter/y;->a:Lcom/viber/voip/messages/extras/twitter/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/y;->a:Lcom/viber/voip/messages/extras/twitter/x;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/twitter/x;->a(Lcom/viber/voip/messages/extras/twitter/x;)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/at;->a(Landroid/content/DialogInterface;)V

    .line 467
    return-void
.end method
