.class Lcom/viber/voip/process/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/process/o;


# direct methods
.method constructor <init>(Lcom/viber/voip/process/o;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/viber/voip/process/p;->a:Lcom/viber/voip/process/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 128
    const-string/jumbo v0, "ALERT!!! :browser process exists!!!"

    .line 129
    invoke-static {v0}, Lcom/viber/voip/process/l;->a(Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 131
    return-void
.end method
