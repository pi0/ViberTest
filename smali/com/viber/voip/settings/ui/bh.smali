.class Lcom/viber/voip/settings/ui/bh;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/settings/ui/bg;


# direct methods
.method constructor <init>(Lcom/viber/voip/settings/ui/bg;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/viber/voip/settings/ui/bh;->a:Lcom/viber/voip/settings/ui/bg;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 50
    :goto_0
    return-void

    .line 47
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bh;->a:Lcom/viber/voip/settings/ui/bg;

    invoke-static {v0}, Lcom/viber/voip/settings/ui/bg;->a(Lcom/viber/voip/settings/ui/bg;)V

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
