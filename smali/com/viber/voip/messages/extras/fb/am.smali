.class Lcom/viber/voip/messages/extras/fb/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/viber/voip/messages/extras/fb/al;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/fb/al;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/viber/voip/messages/extras/fb/am;->b:Lcom/viber/voip/messages/extras/fb/al;

    iput-object p2, p0, Lcom/viber/voip/messages/extras/fb/am;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/am;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    goto :goto_0
.end method
